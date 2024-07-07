import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/set/set.dart';
import '../../actions/user_s_actions/add_favourite/add_favourite.dart';
import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../actions/user_s_actions/get_favourites/get_favourites.dart';
import '../../actions/user_s_actions/remove_favourite/remove_favourite.dart';
import '../../models/artwork/artwork.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../containers/selected_artwork_container.dart';
import '../utils/extensions.dart';

class ArtWorkDetailsPage extends StatefulWidget {
  const ArtWorkDetailsPage({super.key});

  @override
  State<ArtWorkDetailsPage> createState() => _ArtWorkDetailsPage();
}

class _ArtWorkDetailsPage extends State<ArtWorkDetailsPage> {
  bool isFavourite = false;
  late AudioPlayer _audioPlayer = AudioPlayer();
  double _currentPosition = 0;
  double _totalDuration = 0;
  late Future<void> _fetchArtworkFuture;

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    _audioPlayer.onPositionChanged.listen(
      (Duration position) {
        setState(
          () {
            _currentPosition = position.inMilliseconds.toDouble();
          },
        );
      },
    );

    _audioPlayer.onDurationChanged.listen(
      (Duration duration) {
        setState(
          () {
            _totalDuration = duration.inMilliseconds.toDouble();
          },
        );
      },
    );
    _audioPlayer.onSeekComplete.listen(
      (event) {
        _audioPlayer.state = PlayerState.paused;
        _currentPosition = 0;
      },
    );
    _fetchArtworkFuture = _fetchArtwork();
  }

  Future<void> _fetchArtwork() async {
    while (context.store.state.selectedArtwork == null) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    }
    await _audioPlayer.setSourceUrl(context.store.state.selectedArtwork!.audioUrl);
    setState(() {
      _audioPlayer.state = PlayerState.paused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _fetchArtworkFuture,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          return SelectedArtworkContainer(
            builder: (BuildContext context, Artwork selectedArtwork) {
              isFavourite = context.store.state.isFavourite!;
              return AppUserContainer(
                builder: (BuildContext context, AppUser? user) {
                  if (user == null) {
                    return const Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  return Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          _audioPlayer.stop();
                          switch (context.store.state.routeArtworkIndex) {
                            case 0:
                              Navigator.pushReplacementNamed(context, '/qrCodeScanScreenPage');
                            case 1:
                              context.dispatch(GetFavourites(userId: context.store.state.user!.uid));
                              Navigator.pushReplacementNamed(context, '/favouritesPage');
                            case 2:
                              Navigator.pushReplacementNamed(context, '/artworksPage');
                            default:
                              context.dispatch(const GetArtworksWithStyle());
                              Navigator.pushReplacementNamed(context, '/homeScreenPage');
                          }
                        },
                      ),
                      title: Text(
                        selectedArtwork.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    body: ListView(
                      children: <Widget>[
                        Image.network(
                          selectedArtwork.pictureUrl,
                          // height: 250,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          selectedArtwork.title,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName} ${selectedArtwork.startCreationYear} - ${selectedArtwork.endCreationYear}',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      isFavourite ? LineAwesomeIcons.heart_1 : LineAwesomeIcons.heart,
                                      size: 36,
                                    ),
                                    onPressed: () {
                                      setState(
                                        () {
                                          if (isFavourite) {
                                            context.dispatch(
                                              RemoveFavourite(userId: user.uid, artworkId: selectedArtwork.uid),
                                            );
                                          } else {
                                            context.dispatch(
                                              AddFavourite(
                                                  userId: user.uid,
                                                  artworkId: selectedArtwork.uid,
                                                  artworkTitle: selectedArtwork.title,
                                                  artworkPictureUrl: selectedArtwork.pictureUrl,
                                                  artistName:
                                                      '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}'),
                                            );
                                          }
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              if (user.hasSubscription)
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      const SizedBox(height: 6),
                                      Text(
                                        _formatDuration(Duration(milliseconds: _totalDuration.toInt())),
                                        style: TextStyle(color: Colors.grey[600]),
                                      ),
                                      Slider(
                                        value: _currentPosition,
                                        max: _totalDuration,
                                        activeColor: Colors.grey[600],
                                        inactiveColor: Colors.grey[400],
                                        onChanged: (double value) {
                                          setState(() => _currentPosition = value);
                                          _audioPlayer.seek(Duration(milliseconds: _currentPosition.toInt()));
                                        },
                                      ),
                                      SizedBox(
                                        width: 50,
                                        child: Text(
                                          _formatDuration(Duration(milliseconds: _currentPosition.toInt())),
                                          style: TextStyle(color: Colors.grey[600]),
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[600],
                                        foregroundColor: Colors.grey[200],
                                        child: IconButton(
                                          icon: Icon(_audioPlayer.state == PlayerState.paused ||
                                                  _audioPlayer.state == PlayerState.stopped
                                              ? Icons.play_arrow
                                              : Icons.pause),
                                          onPressed: () {
                                            setState(
                                              () {
                                                if (_audioPlayer.state == PlayerState.stopped) {
                                                  _audioPlayer.state = PlayerState.playing;
                                                }
                                                if (_audioPlayer.state == PlayerState.playing) {
                                                  _audioPlayer.pause();
                                                } else if (_audioPlayer.state == PlayerState.paused) {
                                                  _audioPlayer.resume();
                                                }
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              const SizedBox(height: 16),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: <TextSpan>[
                                    const TextSpan(text: 'Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${selectedArtwork.type}\n'),
                                    const TextSpan(text: 'Style: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${selectedArtwork.style}\n'),
                                    const TextSpan(text: 'Creator: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}\n'),
                                    const TextSpan(
                                        text: 'Date of creation: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            '${selectedArtwork.startCreationYear} - ${selectedArtwork.endCreationYear}\n'),
                                    const TextSpan(text: 'Provenance: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${selectedArtwork.provenance}\n'),
                                    const TextSpan(
                                        text: 'Original title: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${selectedArtwork.originalTitle}\n'),
                                    const TextSpan(
                                        text: 'Description: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${selectedArtwork.description}\n'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'MORE ABOUT CREATOR',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () {
                                  context.dispatch(FetchSelectedArtist(artistId: selectedArtwork.artistUid));
                                  context.dispatch(const SetRouteArtistIndex(3));
                                  Navigator.pushNamed(context, '/artistDetailsPage');
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
