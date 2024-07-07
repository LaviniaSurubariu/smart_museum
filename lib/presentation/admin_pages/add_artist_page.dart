import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/admin_actions/add_artist/add_artist.dart';
import '../../actions/app_action.dart';
import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../utils/custom_alert_dialog_one_button.dart';
import '../utils/custom_alert_dialog_two_buttons.dart';
import '../utils/extensions.dart';

class AddArtistPage extends StatefulWidget {
  const AddArtistPage({super.key});

  @override
  State<AddArtistPage> createState() => _AddArtistPageState();
}

class _AddArtistPageState extends State<AddArtistPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController deathDateController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imagePathController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              showDialog<CustomAlertDialogTwoButtons>(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialogTwoButtons(
                    title: 'Back?',
                    content: 'Changes that you want to make may not be saved.',
                    firstButtonText: 'no',
                    firstButtonColor: Colors.white30,
                    iconData: LineAwesomeIcons.exclamation_circle,
                    iconColor: Colors.grey,
                    onFirstButtonPressed: () {
                      Navigator.pop(context);
                    },
                    secondButtonText: 'yes',
                    secondButtonColor: Colors.grey,
                    onSecondButtonPressed: () {
                      context.dispatch(const GetTopArtworks());
                      context.dispatch(const GetTopArtists());
                      Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                    },
                  );
                },
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text('Add Artist', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: firstNameController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid first name.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration:
                          const InputDecoration(label: Text('First Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: lastNameController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid last name.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration:
                          const InputDecoration(label: Text('Last Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: imagePathController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        labelText: 'Choose a picture',
                        prefixIcon: Icon(LineAwesomeIcons.image),
                      ),
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? file =
                            await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

                        if (file != null) {
                          imagePathController.text = file.path;
                        }
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid image path.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: birthdateController,
                      readOnly: true,
                      onTap: () {
                        _selectbirthDate(context);
                      },
                      decoration: InputDecoration(
                        label: const Text('Birthdate'),
                        prefixIcon: const Icon(LineAwesomeIcons.calendar),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            birthdateController.clear();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: deathDateController,
                      readOnly: true,
                      onTap: () {
                        _selectDeathDate(context);
                      },
                      decoration: InputDecoration(
                        label: const Text('Death date'),
                        prefixIcon: const Icon(LineAwesomeIcons.calendar),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            deathDateController.clear();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      maxLines: null,
                      controller: descriptionController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid description.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration:
                          const InputDecoration(label: Text('Description'), prefixIcon: Icon(LineAwesomeIcons.info)),
                    ),
                    const SizedBox(height: 60),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.dispatch(AddArtist(
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              picturePath: imagePathController.text,
                              birthdate:
                                  birthdateController.text.isNotEmpty ? DateTime.parse(birthdateController.text) : null,
                              deathDate:
                                  deathDateController.text.isNotEmpty ? DateTime.parse(deathDateController.text) : null,
                              description: descriptionController.text,
                              result: _onAddArtistResult,
                            ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                        child: const Text('Add artist', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectbirthDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1000),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
    );
    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
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

  void _onAddArtistResult(AppAction action) {
    if (action is AddArtistSuccessful) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'Artist added',
            content: 'Successfully added artist.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.check_circle,
            iconColor: Colors.green,
            onButtonPressed: () {
              context.dispatch(const GetTopArtworks());
              context.dispatch(const GetTopArtists());
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
            },
          );
        },
      );
    } else if (action is AddArtistError) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'An error occurred',
            content: 'Please try again.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.exclamation,
            iconColor: Colors.redAccent,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    }
  }
}
