import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/admin_actions/update_artwork_artist/update_artwork_artist.dart';
import '../../actions/admin_actions/update_artwork_audio/update_artwork_audio.dart';
import '../../actions/admin_actions/update_artwork_description/update_artwork_description.dart';
import '../../actions/admin_actions/update_artwork_end_creation_year/update_artwork_end_creation_year.dart';
import '../../actions/admin_actions/update_artwork_image/update_artwork_image.dart';
import '../../actions/admin_actions/update_artwork_provenance/update_artwork_provenance.dart';
import '../../actions/admin_actions/update_artwork_start_creation_year/update_artwork_start_creation_year.dart';
import '../../actions/admin_actions/update_artwork_style/update_artwork_style.dart';
import '../../actions/admin_actions/update_artwork_title/update_artwork_title.dart';
import '../../actions/admin_actions/update_artwork_type/update_artwork_type.dart';
import '../../actions/get_artworks/get_artworks.dart';
import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../models/artist_for_fetch/artist_for_fetch.dart';
import '../../models/artwork/artwork.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../containers/selected_artwork_container.dart';
import '../utils/custom_editable_field.dart';
import '../utils/extensions.dart';

class ArtworkEditPage extends StatefulWidget {
  const ArtworkEditPage({super.key});

  @override
  State<ArtworkEditPage> createState() => _ArtworkEditPageState();
}

class _ArtworkEditPageState extends State<ArtworkEditPage> {
  final GlobalKey<FormState> imagePathFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> audioPathFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> titleFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> descriptionFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> artistFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> startCreationYearFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> endCreationYearFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> typeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> styleFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> provenanceFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> originalTitleFormKey = GlobalKey<FormState>();

  final TextEditingController typeController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController artistController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imagePathController = TextEditingController();
  final TextEditingController styleController = TextEditingController();
  final TextEditingController provenanceController = TextEditingController();
  final TextEditingController originalTitleController = TextEditingController();
  final TextEditingController startCreationYearController = TextEditingController();
  final TextEditingController endCreationYearController = TextEditingController();
  final TextEditingController audioPathController = TextEditingController();

  List<ArtistForFetch> artistSuggestions = <ArtistForFetch>[];
  ArtistForFetch? selectedArtist;

  bool isTitleEditing = false;
  bool isDescriptionEditing = false;
  bool isImagePathEditing = false;
  bool isAudioPathEditing = false;
  bool isArtistEditing = false;
  bool isStartCreationYearEditing = false;
  bool isEndCreationYearEditing = false;
  bool isTypeEditing = false;
  bool isStyleEditing = false;
  bool isProvenanceEditing = false;
  bool isOriginalTitleEditing = false;
  bool isEditing = false;

  late AudioPlayer _audioPlayer;
  double _currentPosition = 0;
  double _totalDuration = 0;
  int? selectedYear;
  late Future<void> _fetchArtworkFuture;

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    imagePathController.dispose();
    _audioPlayer.dispose();
    audioPathController.dispose();
    artistController.dispose();
    startCreationYearController.dispose();
    endCreationYearController.dispose();
    typeController.dispose();
    styleController.dispose();
    provenanceController.dispose();
    originalTitleController.dispose();
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
    fetchArtistSuggestions();
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
              titleController.text = selectedArtwork.title;
              descriptionController.text = selectedArtwork.description;
              imagePathController.text = selectedArtwork.pictureUrl;
              audioPathController.text = selectedArtwork.audioUrl;
              artistController.text = '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}';
              startCreationYearController.text = selectedArtwork.startCreationYear.toString();
              endCreationYearController.text = selectedArtwork.endCreationYear.toString();
              styleController.text = selectedArtwork.style;
              provenanceController.text = selectedArtwork.provenance;
              originalTitleController.text = selectedArtwork.originalTitle;
              typeController.text = selectedArtwork.type;
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
                          switch (context.store.state.routeAdminArtworkIndex) {
                            case 0:
                              context.dispatch(const GetArtworks());
                              Navigator.pushReplacementNamed(context, '/artworksListAdminPage');
                            case 1:
                              context.dispatch(const GetTopArtworks());
                              context.dispatch(const GetTopArtists());
                              Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                            default:
                              Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                          }
                        },
                      ),
                      title: Text(
                        selectedArtwork.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    body: SelectedArtworkContainer(builder: (BuildContext context, Artwork selectedArtwork) {
                      titleController.text = selectedArtwork.title;
                      descriptionController.text = selectedArtwork.description;
                      imagePathController.text = selectedArtwork.pictureUrl;
                      audioPathController.text = selectedArtwork.audioUrl;
                      artistController.text = '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}';
                      startCreationYearController.text = selectedArtwork.startCreationYear.toString();
                      endCreationYearController.text = selectedArtwork.endCreationYear.toString();
                      styleController.text = selectedArtwork.style;
                      provenanceController.text = selectedArtwork.provenance;
                      originalTitleController.text = selectedArtwork.originalTitle;
                      typeController.text = selectedArtwork.type;
                      return ListView(
                        padding: const EdgeInsets.all(16.0),
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  if (isImagePathEditing)
                                    IconButton(
                                      icon: const Icon(Icons.cancel_outlined),
                                      onPressed: () {
                                        setState(() {
                                          imagePathController.text = selectedArtwork.pictureUrl;
                                          isImagePathEditing = false;
                                          isEditing = false;
                                        });
                                      },
                                    ),
                                  IconButton(
                                    icon: Icon(isImagePathEditing ? Icons.check : Icons.edit),
                                    onPressed: () {
                                      if (isImagePathEditing) {
                                        if (imagePathFormKey.currentState!.validate()) {
                                          setState(() {
                                            isImagePathEditing = false;
                                            isEditing = false;
                                            if (selectedArtwork.pictureUrl != imagePathController.text) {
                                              context.dispatch(UpdateArtworkImage(
                                                  newPicturePath: imagePathController.text,
                                                  artworkId: selectedArtwork.uid,
                                                  artworkTitle: selectedArtwork.title,
                                                  oldPictureUrl: selectedArtwork.pictureUrl));
                                            }
                                          });
                                        }
                                      } else if (!isEditing) {
                                        setState(() {
                                          // _audioPlayer.stop();
                                          isImagePathEditing = true;
                                          isEditing = true;
                                        });
                                      }
                                    },
                                  ),
                                ],
                              ),
                              if (isImagePathEditing)
                                Form(
                                  key: imagePathFormKey,
                                  child: TextFormField(
                                    controller: imagePathController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      border: isImagePathEditing ? const OutlineInputBorder() : InputBorder.none,
                                      labelText: 'Choose a picture',
                                      prefixIcon: const Icon(LineAwesomeIcons.image),
                                    ),
                                    onTap: _pickImage,
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter a valid image path.';
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              else if (selectedArtwork.pictureUrl.isNotEmpty)
                                Image.network(
                                  selectedArtwork.pictureUrl,
                                  fit: BoxFit.cover,
                                )
                              else
                                const CircularProgressIndicator(),
                            ],
                          ),
                          const Divider(height: 16),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  if (isAudioPathEditing)
                                    IconButton(
                                      icon: const Icon(Icons.cancel_outlined),
                                      onPressed: () {
                                        setState(() {
                                          audioPathController.text = selectedArtwork.audioUrl;
                                          isAudioPathEditing = false;
                                          isEditing = false;
                                        });
                                      },
                                    ),
                                  IconButton(
                                    icon: Icon(isAudioPathEditing ? Icons.check : Icons.edit),
                                    onPressed: () {
                                      if (isAudioPathEditing) {
                                        if (audioPathFormKey.currentState!.validate()) {
                                          setState(() {
                                            isAudioPathEditing = false;
                                            isEditing = false;
                                            if (selectedArtwork.audioUrl != audioPathController.text) {
                                              context.dispatch(UpdateArtworkAudio(
                                                  newAudioPath: audioPathController.text,
                                                  artworkId: selectedArtwork.uid,
                                                  artworkTitle: selectedArtwork.title,
                                                  oldAudioUrl: selectedArtwork.audioUrl));
                                            }
                                          });
                                        }
                                      } else if (!isEditing) {
                                        setState(() {
                                          // _audioPlayer.stop();
                                          isAudioPathEditing = true;
                                          isEditing = true;
                                        });
                                      }
                                    },
                                  ),
                                ],
                              ),
                              if (isAudioPathEditing)
                                Form(
                                  key: audioPathFormKey,
                                  child: TextFormField(
                                    controller: audioPathController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      labelText: 'Choose an audio file',
                                      prefixIcon: const Icon(Icons.audio_file_outlined),
                                      border: isAudioPathEditing ? const OutlineInputBorder() : InputBorder.none,
                                    ),
                                    onTap: _pickAudio,
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter a valid audio path.';
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              else
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
                            ],
                          ),
                          const Divider(height: 16),
                          EditableField(
                            formKey: titleFormKey,
                            label: 'Title',
                            controller: titleController,
                            isEditing: isTitleEditing,
                            onEdit: () {
                              if (!isEditing) {
                                setState(
                                  () {
                                    // _audioPlayer.stop();
                                    isTitleEditing = true;
                                    isEditing = true;
                                  },
                                );
                              }
                            },
                            onSave: () {
                              if (titleFormKey.currentState!.validate()) {
                                setState(
                                  () {
                                    if (selectedArtwork.title != titleController.text) {
                                      context.dispatch(UpdateArtworkTitle(
                                          artworkId: selectedArtwork.uid, newTitle: titleController.text));
                                    }
                                    isTitleEditing = false;
                                    isEditing = false;
                                  },
                                );
                              }
                            },
                            onCancel: () {
                              setState(
                                () {
                                  titleController.text = selectedArtwork.title;
                                  isTitleEditing = false;
                                  isEditing = false;
                                },
                              );
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid title.';
                              }
                              return null;
                            },
                          ),
                          const Divider(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    'Artist',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      if (isArtistEditing)
                                        IconButton(
                                          icon: const Icon(Icons.cancel_outlined),
                                          onPressed: () {
                                            setState(() {
                                              artistController.text =
                                                  '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}';
                                              isArtistEditing = false;
                                              isEditing = false;
                                            });
                                          },
                                        ),
                                      IconButton(
                                        icon: Icon(isArtistEditing ? Icons.check : Icons.edit),
                                        onPressed: () {
                                          if (isArtistEditing) {
                                            if (artistFormKey.currentState!.validate()) {
                                              setState(() {
                                                isArtistEditing = false;
                                                isEditing = false;
                                                context.dispatch(UpdateArtworkArtist(
                                                    artist: selectedArtist!, artworkId: selectedArtwork.uid));
                                              });
                                            }
                                          } else if (!isEditing) {
                                            setState(() {
                                              // _audioPlayer.stop();
                                              isArtistEditing = true;
                                              isEditing = true;
                                            });
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              if (isArtistEditing)
                                Form(
                                  key: artistFormKey,
                                  child: Autocomplete<String>(
                                    optionsBuilder: (TextEditingValue textEditingValue) {
                                      if (textEditingValue.text.isEmpty) {
                                        return const Iterable<String>.empty();
                                      }
                                      return artistSuggestions
                                          .where((ArtistForFetch artist) {
                                            final String fullName =
                                                '${artist.firstName} ${artist.lastName}'.toLowerCase();
                                            return fullName.contains(textEditingValue.text.toLowerCase());
                                          })
                                          .map((ArtistForFetch artist) => '${artist.firstName} ${artist.lastName}')
                                          .toList();
                                    },
                                    fieldViewBuilder: (BuildContext context,
                                        TextEditingController fieldTextEditingController,
                                        FocusNode fieldFocusNode,
                                        VoidCallback onFieldSubmitted) {
                                      return TextFormField(
                                        controller: artistController,
                                        focusNode: fieldFocusNode,
                                        readOnly: true,
                                        onTap: () {
                                          showAutocomplete(context);
                                        },
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Select an artist.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          labelText: 'Artist',
                                          prefixIcon: Icon(Icons.person),
                                          border: OutlineInputBorder(),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              else
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
                                    Text(
                                      '${selectedArtwork.artistFirstName} ${selectedArtwork.artistLastName}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          const Divider(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    'Start Creation Year',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      if (isStartCreationYearEditing)
                                        IconButton(
                                          icon: const Icon(Icons.cancel_outlined),
                                          onPressed: () {
                                            setState(() {
                                              startCreationYearController.text =
                                                  selectedArtwork.startCreationYear.toString();
                                              isStartCreationYearEditing = false;
                                              isEditing = false;
                                            });
                                          },
                                        ),
                                      IconButton(
                                        icon: Icon(isStartCreationYearEditing ? Icons.check : Icons.edit),
                                        onPressed: () {
                                          if (isStartCreationYearEditing) {
                                            if (startCreationYearFormKey.currentState!.validate()) {
                                              setState(() {
                                                if (selectedArtwork.startCreationYear !=
                                                    int.parse(startCreationYearController.text)) {
                                                  context.dispatch(UpdateArtworkStartCreationYear(
                                                      newYear: int.parse(startCreationYearController.text),
                                                      artworkId: selectedArtwork.uid));
                                                }
                                                isStartCreationYearEditing = false;
                                                isEditing = false;
                                              });
                                            }
                                          } else if (!isEditing) {
                                            setState(() {
                                              // _audioPlayer.stop();
                                              isStartCreationYearEditing = true;
                                              isEditing = true;
                                            });
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              if (isStartCreationYearEditing)
                                Form(
                                  key: startCreationYearFormKey,
                                  child: TextFormField(
                                    controller: startCreationYearController,
                                    readOnly: true,
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter a valid year.';
                                      }
                                      return null;
                                    },
                                    onTap: () {
                                      _selectYear(context, startCreationYearController);
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text('Start creation year'),
                                        prefixIcon: Icon(Icons.calendar_month)),
                                  ),
                                )
                              else
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
                                    Text(
                                      selectedArtwork.startCreationYear.toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          const Divider(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    'End Creation Year',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      if (isEndCreationYearEditing)
                                        IconButton(
                                          icon: const Icon(Icons.cancel_outlined),
                                          onPressed: () {
                                            setState(() {
                                              endCreationYearController.text =
                                                  selectedArtwork.endCreationYear.toString();
                                              isEndCreationYearEditing = false;
                                              isEditing = false;
                                            });
                                          },
                                        ),
                                      IconButton(
                                        icon: Icon(isEndCreationYearEditing ? Icons.check : Icons.edit),
                                        onPressed: () {
                                          if (isEndCreationYearEditing) {
                                            if (endCreationYearFormKey.currentState!.validate()) {
                                              setState(() {
                                                if (selectedArtwork.endCreationYear !=
                                                    int.parse(endCreationYearController.text)) {
                                                  context.dispatch(UpdateArtworkEndCreationYear(
                                                      newYear: int.parse(endCreationYearController.text),
                                                      artworkId: selectedArtwork.uid));
                                                }
                                                isEndCreationYearEditing = false;
                                                isEditing = false;
                                              });
                                            }
                                          } else if (!isEditing) {
                                            setState(() {
                                              // _audioPlayer.stop();
                                              isEndCreationYearEditing = true;
                                              isEditing = true;
                                            });
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              if (isEndCreationYearEditing)
                                Form(
                                  key: endCreationYearFormKey,
                                  child: TextFormField(
                                    controller: endCreationYearController,
                                    readOnly: true,
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter a valid year.';
                                      }
                                      return null;
                                    },
                                    onTap: () {
                                      _selectYear(context, endCreationYearController);
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text('End creation year'),
                                        prefixIcon: Icon(Icons.calendar_month)),
                                  ),
                                )
                              else
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
                                    Text(
                                      selectedArtwork.endCreationYear.toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          const Divider(height: 16),
                          EditableField(
                            formKey: typeFormKey,
                            label: 'Type',
                            controller: typeController,
                            isEditing: isTypeEditing,
                            onEdit: () {
                              if (!isEditing) {
                                setState(
                                  () {
                                    // _audioPlayer.stop();
                                    isTypeEditing = true;
                                    isEditing = true;
                                  },
                                );
                              }
                            },
                            onSave: () {
                              if (typeFormKey.currentState!.validate()) {
                                setState(
                                  () {
                                    if (selectedArtwork.type != typeController.text) {
                                      context.dispatch(UpdateArtworkType(
                                          newType: typeController.text, artworkId: selectedArtwork.uid));
                                    }
                                    isTypeEditing = false;
                                    isEditing = false;
                                  },
                                );
                              }
                            },
                            onCancel: () {
                              setState(
                                () {
                                  typeController.text = selectedArtwork.type;
                                  isTypeEditing = false;
                                  isEditing = false;
                                },
                              );
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid type.';
                              }
                              return null;
                            },
                          ),
                          const Divider(height: 16),
                          EditableField(
                            formKey: styleFormKey,
                            label: 'Style',
                            controller: styleController,
                            isEditing: isStyleEditing,
                            onEdit: () {
                              if (!isEditing) {
                                setState(
                                  () {
                                    // _audioPlayer.stop();

                                    isStyleEditing = true;
                                    isEditing = true;
                                  },
                                );
                              }
                            },
                            onSave: () {
                              if (styleFormKey.currentState!.validate()) {
                                setState(
                                  () {
                                    if (selectedArtwork.style != styleController.text) {
                                      context.dispatch(UpdateArtworkStyle(
                                          newStyle: styleController.text, artworkId: selectedArtwork.uid));
                                    }
                                    isStyleEditing = false;
                                    isEditing = false;
                                  },
                                );
                              }
                            },
                            onCancel: () {
                              setState(
                                () {
                                  styleController.text = selectedArtwork.style;
                                  isStyleEditing = false;
                                  isEditing = false;
                                },
                              );
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid style.';
                              }
                              return null;
                            },
                          ),
                          const Divider(height: 16),
                          EditableField(
                            formKey: provenanceFormKey,
                            label: 'Provenance',
                            controller: provenanceController,
                            isEditing: isProvenanceEditing,
                            onEdit: () {
                              if (!isEditing) {
                                setState(
                                  () {
                                    // _audioPlayer.stop();

                                    isProvenanceEditing = true;
                                    isEditing = true;
                                  },
                                );
                              }
                            },
                            onSave: () {
                              if (provenanceFormKey.currentState!.validate()) {
                                setState(
                                  () {
                                    if (selectedArtwork.provenance != provenanceController.text) {
                                      context.dispatch(UpdateArtworkProvenance(
                                          newProvenance: provenanceController.text, artworkId: selectedArtwork.uid));
                                    }
                                    isProvenanceEditing = false;
                                    isEditing = false;
                                  },
                                );
                              }
                            },
                            onCancel: () {
                              setState(
                                () {
                                  provenanceController.text = selectedArtwork.provenance;
                                  isProvenanceEditing = false;
                                  isEditing = false;
                                },
                              );
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid provenance.';
                              }
                              return null;
                            },
                          ),
                          const Divider(height: 16),
                          EditableField(
                            formKey: descriptionFormKey,
                            label: 'Description',
                            controller: descriptionController,
                            isEditing: isDescriptionEditing,
                            onEdit: () {
                              if (!isEditing) {
                                setState(
                                  () {
                                    // _audioPlayer.stop();

                                    isDescriptionEditing = true;
                                    isEditing = true;
                                  },
                                );
                              }
                            },
                            onSave: () {
                              if (descriptionFormKey.currentState!.validate()) {
                                setState(
                                  () {
                                    if (selectedArtwork.description != descriptionController.text) {
                                      context.dispatch(UpdateArtworkDescription(
                                        artworkId: selectedArtwork.uid,
                                        newDescription: descriptionController.text,
                                      ));
                                    }
                                    isDescriptionEditing = false;
                                    isEditing = false;
                                  },
                                );
                              }
                            },
                            onCancel: () {
                              setState(
                                () {
                                  descriptionController.text = selectedArtwork.description;
                                  isDescriptionEditing = false;
                                  isEditing = false;
                                },
                              );
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid description.';
                              }
                              return null;
                            },
                          ),
                        ],
                      );
                    }),
                  );
                },
              );
            },
          );
        }
      },
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

    if (file != null) {
      imagePathController.text = file.path;
      imagePathFormKey.currentState!.validate();
    }
  }

  Future<void> _pickAudio() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
    );

    if (result != null) {
      audioPathController.text = result.files.single.path ?? '';
      audioPathFormKey.currentState!.validate();
    }
  }

  Future<void> fetchArtistSuggestions() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('artists').get();
    final List<ArtistForFetch> artists = snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
      return ArtistForFetch(
        uid: doc.id,
        firstName: doc['firstName'] as String? ?? '',
        lastName: doc['lastName'] as String? ?? '',
      );
    }).toList();
    // setState(() {
    artistSuggestions = artists;
    // });
  }

  void showAutocomplete(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Artist'),
          children: artistSuggestions.map((ArtistForFetch artist) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, artist);
              },
              child: Text('${artist.firstName} ${artist.lastName}'),
            );
          }).toList(),
        );
      },
    ).then((dynamic selectedValue) {
      if (selectedValue != null) {
        artistController.text = '${selectedValue.firstName} ${selectedValue.lastName}';
        selectedArtist = selectedValue as ArtistForFetch;
        artistFormKey.currentState!.validate();
      }
    });
  }

  Future<void> _selectYear(BuildContext context, TextEditingController controller) async {
    String validate = '';
    if (controller == startCreationYearController) {
      validate = 'start';
    } else {
      validate = 'end';
    }
    final int? pickedYear = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        int? tempSelectedYear = selectedYear;

        return AlertDialog(
          title: const Text('Select Year'),
          content: SizedBox(
            height: 200.0,
            width: 300.0,
            child: YearPicker(
              firstDate: DateTime(1000),
              lastDate: DateTime.now(),
              selectedDate: tempSelectedYear != null ? DateTime(tempSelectedYear) : DateTime.now(),
              onChanged: (DateTime dateTime) {
                tempSelectedYear = dateTime.year;
                Navigator.pop(context, tempSelectedYear);
              },
            ),
          ),
        );
      },
    );

    if (pickedYear != null && pickedYear != selectedYear) {
      selectedYear = pickedYear;
      controller.text = pickedYear.toString();
      if (validate == 'start') {
        startCreationYearFormKey.currentState!.validate();
      } else {
        endCreationYearFormKey.currentState!.validate();
      }
    }
  }
}
