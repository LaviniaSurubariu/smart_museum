import 'package:flutter/material.dart';

class EditableField extends StatelessWidget {
  const EditableField({
    super.key,
    required this.formKey,
    required this.label,
    required this.controller,
    required this.isEditing,
    required this.onEdit,
    required this.onSave,
    required this.onCancel,
    required this.validator,
  });

  final GlobalKey<FormState> formKey;
  final String label;
  final TextEditingController controller;
  final bool isEditing;
  final VoidCallback onEdit;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                if (isEditing)
                  IconButton(
                    icon: const Icon(Icons.cancel_outlined),
                    onPressed: onCancel,
                  ),
                IconButton(
                  icon: Icon(isEditing ? Icons.check : Icons.edit),
                  onPressed: isEditing ? onSave : onEdit,
                ),
              ],
            ),
          ],
        ),
        if (isEditing)
          Form(
            key: formKey,
            child: TextFormField(
              controller: controller,
              validator: validator,
              maxLines: null,
              decoration: InputDecoration(
                labelText: label,
                prefixIcon: const Icon(Icons.person),
                border: const OutlineInputBorder(),
              ),
            ),
          )
        else
          Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                controller.text,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
