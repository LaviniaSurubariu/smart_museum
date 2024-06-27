import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/admin_actions/add_artist/add_artist.dart';
import '../../actions/app_action.dart';
import '../utils/customAlertDialogOneButton.dart';
import '../utils/customAlertDialogTwoButtons.dart';
import '../utils/extensions.dart';

class AddArtworkPage extends StatefulWidget {
  const AddArtworkPage({super.key});

  @override
  State<AddArtworkPage> createState() => _AddArtworkPageState();
}

class _AddArtworkPageState extends State<AddArtworkPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController deathDateController = TextEditingController();
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
  int? selectedYear;

  @override
  void dispose() {
    audioPathController.dispose();
    startCreationYearController.dispose();
    endCreationYearController.dispose();
    originalTitleController.dispose();
    provenanceController.dispose();
    styleController.dispose();
    imagePathController.dispose();
    descriptionController.dispose();
    artistController.dispose();
    titleController.dispose();
    typeController.dispose();
    deathDateController.dispose();
    super.dispose();
  }

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
                      Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
                    },
                  );
                },
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text('Add Artwork', style: TextStyle(color: Colors.black)),
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
                    TextFormField(
                      controller: titleController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid title.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(label: Text('Title'), prefixIcon: Icon(Icons.title)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: artistController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid artist.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(label: Text('Artist'), prefixIcon: Icon(Icons.person)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: startCreationYearController,
                      readOnly: true,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid year.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      onTap: () => _selectYear(context, startCreationYearController),
                      decoration: const InputDecoration(
                          label: Text('Start creation year'), prefixIcon: Icon(Icons.calendar_month)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: endCreationYearController,
                      readOnly: true,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid year.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      onTap: () => _selectYear(context, endCreationYearController),
                      decoration: const InputDecoration(
                          label: Text('End creation year'), prefixIcon: Icon(Icons.calendar_month)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: imagePathController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        labelText: 'Choose a picture',
                        prefixIcon: Icon(LineAwesomeIcons.image),
                      ),
                      onTap: _pickImage,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid image path.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: audioPathController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        labelText: 'Choose an audio file',
                        prefixIcon: Icon(Icons.audiotrack),
                      ),
                      onTap: _pickAudio,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid audio path.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: typeController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid type.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(
                        label: Text('Artwork type'),
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: styleController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid style.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(
                        label: Text('Artwork style'),
                        prefixIcon: Icon(Icons.style),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: provenanceController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid provenance.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(
                        label: Text('Provenance'),
                        prefixIcon: Icon(Icons.place),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: originalTitleController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid title.';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        formKey.currentState!.validate();
                      },
                      decoration: const InputDecoration(
                        label: Text('Original title'),
                        prefixIcon: Icon(Icons.title),
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
                              firstName: titleController.text,
                              lastName: artistController.text,
                              picturePath: imagePathController.text,
                              birthdate: DateTime.parse(typeController.text),
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

  Future<void> _selectYear(BuildContext context, TextEditingController controller) async {
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
      setState(() {
        selectedYear = pickedYear;
        controller.text = pickedYear.toString();
      });
    }

    if (pickedYear != null && pickedYear != selectedYear) {
      setState(() {
        selectedYear = pickedYear;
      });
    }
  }

  Future<void> _pickAudio() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
    );

    if (result != null) {
      audioPathController.text = result.files.single.path ?? '';
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

    if (file != null) {
      imagePathController.text = file.path;
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
