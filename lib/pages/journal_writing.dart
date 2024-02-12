import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextEntryPage extends StatefulWidget {
  const TextEntryPage({super.key});

  @override
  State<TextEntryPage> createState() => _TextEntryPageState();
}

class _TextEntryPageState extends State<TextEntryPage> {
  final textController = TextEditingController();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Todays Entry',
          style: GoogleFonts.dmSerifText(),
        
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
          //topLeft: Radius.circular(25),
          //topRight: Radius.circular(25),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(hintText: "Enter text here"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                textController.clear();
                // Do something with the entered text
                /*String enteredText = _textFieldController.text;
                print('Entered Text: $enteredText');*/

                // Navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
            ),
            ElevatedButton(
              onPressed: () {
                textController.clear();
                // Do something with the entered text
                /*String enteredText = _textFieldController.text;
                print('Entered Text: $enteredText');*/

                // Navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
