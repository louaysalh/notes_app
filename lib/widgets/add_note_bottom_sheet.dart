import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        // make column shrink to adapate with screen size
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

