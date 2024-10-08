import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/admin_actions/update_artist_birthdate/update_artist_birthdate.dart';
import '../../actions/admin_actions/update_artist_death_date/update_artist_death_date.dart';
import '../../actions/admin_actions/update_artist_description/update_artist_description.dart';
import '../../actions/admin_actions/update_artist_first_name/update_artist_first_name.dart';
import '../../actions/admin_actions/update_artist_image/update_artist_image.dart';
import '../../actions/admin_actions/update_artist_last_name/update_artist_last_name.dart';
import '../../actions/get_artists/get_artists.dart';

import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../models/artist/artist.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../containers/selected_artist_container.dart';

import '../utils/custom_editable_field.dart';
import '../utils/extensions.dart';

class ArtistEditPage extends StatefulWidget {
  const ArtistEditPage({super.key});

  @override
  State<ArtistEditPage> createState() => _ArtistEditPageState();
}

class _ArtistEditPageState extends State<ArtistEditPage> {
  final GlobalKey<FormState> imagePathFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> firstNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> descriptionFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> lastNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> birthdateFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> deathDateFormKey = GlobalKey<FormState>();

  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController deathDateController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imagePathController = TextEditingController();

  bool isDescriptionEditing = false;
  bool isImagePathEditing = false;
  bool isFirstNameEditing = false;
  bool isLastNameEditing = false;
  bool isBirthdateEditing = false;
  bool isDeathDateEditing = false;

  bool isEditing = false;

  @override
  void dispose() {
    super.dispose();
    descriptionController.dispose();
    imagePathController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    birthdateController.dispose();
    deathDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectedArtistContainer(
      builder: (BuildContext context, Artist selectedArtist) {
        descriptionController.text = selectedArtist.description;
        imagePathController.text = selectedArtist.pictureUrl;
        firstNameController.text = selectedArtist.firstName;
        lastNameController.text = selectedArtist.lastName;
        birthdateController.text =
            selectedArtist.birthdate != null ? DateFormat('yyyy-MM-dd').format(selectedArtist.birthdate!) : '';
        deathDateController.text =
            selectedArtist.deathDate != null ? DateFormat('yyyy-MM-dd').format(selectedArtist.deathDate!) : '';

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
                    context.dispatch(const GetArtists());
                    switch (context.store.state.routeAdminArtistIndex) {
                      case 0:
                        Navigator.pushReplacementNamed(context, '/artistsListAdminPage');
                      case 1:
                        context.dispatch(const GetTopArtworks());
                        context.dispatch(const GetTopArtists());
                        Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                      default:
                        Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                    }
                  },
                ),
                title: const Text(
                  'Edit Artist',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              body: ListView(
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
                                  imagePathController.text = selectedArtist.pictureUrl;
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
                                    if (selectedArtist.pictureUrl != imagePathController.text) {
                                      context.dispatch(UpdateArtistImage(
                                          newPicturePath: imagePathController.text,
                                          artistId: selectedArtist.uid,
                                          oldPictureUrl: selectedArtist.pictureUrl,
                                          artistFirstName: selectedArtist.firstName));
                                    }
                                  });
                                }
                              } else if (!isEditing) {
                                setState(() {
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
                      else if (selectedArtist.pictureUrl.isNotEmpty)
                        Image.network(
                          selectedArtist.pictureUrl,
                          fit: BoxFit.cover,
                        )
                      else
                        const CircularProgressIndicator(),
                    ],
                  ),
                  const Divider(height: 16),
                  EditableField(
                    formKey: firstNameFormKey,
                    label: 'First Name',
                    controller: firstNameController,
                    isEditing: isFirstNameEditing,
                    onEdit: () {
                      if (!isEditing) {
                        setState(
                          () {
                            isFirstNameEditing = true;
                            isEditing = true;
                          },
                        );
                      }
                    },
                    onSave: () {
                      if (firstNameFormKey.currentState!.validate()) {
                        setState(
                          () {
                            if (selectedArtist.firstName != firstNameController.text) {
                              context.dispatch(UpdateArtistFirstName(
                                  newFirstName: firstNameController.text, artistId: selectedArtist.uid));
                            }
                            isFirstNameEditing = false;
                            isEditing = false;
                          },
                        );
                      }
                    },
                    onCancel: () {
                      setState(
                        () {
                          firstNameController.text = selectedArtist.firstName;
                          isFirstNameEditing = false;
                          isEditing = false;
                        },
                      );
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a valid name.';
                      }
                      return null;
                    },
                  ),
                  const Divider(height: 16),
                  EditableField(
                    formKey: lastNameFormKey,
                    label: 'Last Name',
                    controller: lastNameController,
                    isEditing: isLastNameEditing,
                    onEdit: () {
                      if (!isEditing) {
                        setState(
                          () {
                            // _audioPlayer.stop();
                            isLastNameEditing = true;
                            isEditing = true;
                          },
                        );
                      }
                    },
                    onSave: () {
                      if (lastNameFormKey.currentState!.validate()) {
                        setState(
                          () {
                            if (selectedArtist.lastName != lastNameController.text) {
                              context.dispatch(UpdateArtistLastName(
                                  newLastName: lastNameController.text, artistId: selectedArtist.uid));
                            }
                            isLastNameEditing = false;
                            isEditing = false;
                          },
                        );
                      }
                    },
                    onCancel: () {
                      setState(
                        () {
                          lastNameController.text = selectedArtist.lastName;
                          isLastNameEditing = false;
                          isEditing = false;
                        },
                      );
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a valid name.';
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
                            'Birthdate',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              if (isBirthdateEditing)
                                IconButton(
                                  icon: const Icon(Icons.cancel_outlined),
                                  onPressed: () {
                                    setState(() {
                                      birthdateController.text = selectedArtist.birthdate != null
                                          ? DateFormat('yyyy-MM-dd').format(selectedArtist.birthdate!)
                                          : '';
                                      isBirthdateEditing = false;
                                      isEditing = false;
                                    });
                                  },
                                ),
                              IconButton(
                                icon: Icon(isBirthdateEditing ? Icons.check : Icons.edit),
                                onPressed: () {
                                  if (isBirthdateEditing) {
                                    if (birthdateFormKey.currentState!.validate()) {
                                      setState(() {
                                        if (selectedArtist.birthdate != null) {
                                          if (DateFormat('yyyy-MM-dd').format(selectedArtist.birthdate!) !=
                                              birthdateController.text) {
                                            context.dispatch(UpdateArtistBirthdate(
                                                newBirthdate: DateTime.parse(birthdateController.text),
                                                artistId: selectedArtist.uid));
                                          }
                                        } else {
                                          context.dispatch(UpdateArtistBirthdate(
                                              newBirthdate: DateTime.parse(birthdateController.text),
                                              artistId: selectedArtist.uid));
                                        }
                                        isBirthdateEditing = false;
                                        isEditing = false;
                                      });
                                    }
                                  } else if (!isEditing) {
                                    setState(() {
                                      // _audioPlayer.stop();
                                      isBirthdateEditing = true;
                                      isEditing = true;
                                    });
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      if (isBirthdateEditing)
                        Form(
                          key: birthdateFormKey,
                          child: TextFormField(
                            controller: birthdateController,
                            readOnly: true,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid date.';
                              }
                              return null;
                            },
                            onTap: () {
                              _selectBirthdate(context);
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Birthdate'),
                              prefixIcon: Icon(LineAwesomeIcons.calendar),
                            ),
                          ),
                        )
                      else
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Text(
                              selectedArtist.birthdate != null
                                  ? DateFormat('yyyy-MM-dd').format(selectedArtist.birthdate!)
                                  : '',
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
                            'Death Date',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              if (isDeathDateEditing)
                                IconButton(
                                  icon: const Icon(Icons.cancel_outlined),
                                  onPressed: () {
                                    setState(() {
                                      deathDateController.text = selectedArtist.deathDate != null
                                          ? DateFormat('yyyy-MM-dd').format(selectedArtist.deathDate!)
                                          : '';
                                      isDeathDateEditing = false;
                                      isEditing = false;
                                    });
                                  },
                                ),
                              IconButton(
                                icon: Icon(isDeathDateEditing ? Icons.check : Icons.edit),
                                onPressed: () {
                                  if (isDeathDateEditing) {
                                    if (deathDateFormKey.currentState!.validate()) {
                                      setState(() {
                                        if (selectedArtist.deathDate != null) {
                                          if (DateFormat('yyyy-MM-dd').format(selectedArtist.deathDate!) !=
                                              deathDateController.text) {
                                            context.dispatch(UpdateArtistDeathDate(
                                                newDeathDate: DateTime.parse(deathDateController.text),
                                                artistId: selectedArtist.uid));
                                          }
                                        } else {
                                          context.dispatch(UpdateArtistDeathDate(
                                              newDeathDate: DateTime.parse(deathDateController.text),
                                              artistId: selectedArtist.uid));
                                        }
                                        isDeathDateEditing = false;
                                        isEditing = false;
                                      });
                                    }
                                  } else if (!isEditing) {
                                    setState(() {
                                      // _audioPlayer.stop();
                                      isDeathDateEditing = true;
                                      isEditing = true;
                                    });
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      if (isDeathDateEditing)
                        Form(
                          key: deathDateFormKey,
                          child: TextFormField(
                            controller: deathDateController,
                            readOnly: true,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter a valid date.';
                              }
                              return null;
                            },
                            onTap: () {
                              _selectDeathDate(context);
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Death Date'),
                              prefixIcon: Icon(LineAwesomeIcons.calendar),
                            ),
                          ),
                        )
                      else
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Text(
                              selectedArtist.deathDate != null
                                  ? DateFormat('yyyy-MM-dd').format(selectedArtist.deathDate!)
                                  : '',
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
                    formKey: descriptionFormKey,
                    label: 'Description',
                    controller: descriptionController,
                    isEditing: isDescriptionEditing,
                    onEdit: () {
                      if (!isEditing) {
                        setState(
                          () {
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
                            if (selectedArtist.description != descriptionController.text) {
                              context.dispatch(UpdateArtistDescription(
                                newDescription: descriptionController.text,
                                artistId: selectedArtist.uid,
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
                          descriptionController.text = selectedArtist.description;
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
              ),
            );
          },
        );
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

  Future<void> _selectBirthdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1000),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
    );
    if (picked != null) {
      final String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      birthdateController.text = formattedDate;
    }
  }

  Future<void> _selectDeathDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1000),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
    );
    if (picked != null) {
      final String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      deathDateController.text = formattedDate;
    }
  }
}
