import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';

class ArtWorkDetailsPage extends StatefulWidget {
  const ArtWorkDetailsPage({super.key});

  @override
  State<ArtWorkDetailsPage> createState() => _ArtWorkDetailsPage();
}

class _ArtWorkDetailsPage extends State<ArtWorkDetailsPage> {
  bool isFavorited = false;
  late AudioPlayer _audioPlayer = AudioPlayer();
  double _currentPosition = 0;
  double _totalDuration = 0;

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    String twoDigitMilliseconds = twoDigits(duration.inMilliseconds.remainder(1000) ~/ 10);
    return '$twoDigitSeconds:$twoDigitMilliseconds';
  }

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await _audioPlayer.setSource(AssetSource('audio/01.mp3'));
        _audioPlayer.state = PlayerState.paused;
      },
    );

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
  }

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(builder: (BuildContext context, AppUser? user) {
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
              Navigator.pushReplacementNamed(context, '/profilePage');
            },
          ),
          title: const Text(
            'The birth of Venus',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.network(
              'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FNAyQyoh9bDh2JTTJOCKW702Io8L2%2Fprofile.png?alt=media&token=c97ae17b-b938-4f33-98f9-23715af4afb6',
              height: 250,
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
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'The birth of Venus',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sandro Botticelli  1483 - 1485',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorited ? LineAwesomeIcons.heart_1 : LineAwesomeIcons.heart,
                          size: 36,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorited = !isFavorited;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (  user.hasSubscription)
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
                            icon: Icon(
                                _audioPlayer.state == PlayerState.paused || _audioPlayer.state == PlayerState.stopped
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
                      children: const <TextSpan>[
                        TextSpan(text: 'Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Painting\n'),
                        TextSpan(text: 'Style: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Renaissance\n'),
                        TextSpan(text: 'Creator: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Sandro Botticelli\n'),
                        TextSpan(text: 'Date of creation: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '1483 - 1485\n'),
                        TextSpan(text: 'Provenance: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "Collections of the Lorenzo di Pierfrancesco de' Medici family\n"),
                        TextSpan(text: 'Original title: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'La nastere di Venere\n'),
                        TextSpan(text: 'Description: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                "The painting was commissioned by Lorenzo di Pierfrancesco de'Medici, a cousin of Lorenzo the Magnificent. The theme was probably suggested by the humanist Poliziano.\n"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'MORE ABOUT CREATOR',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
