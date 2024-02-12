import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_main/components/drawer.dart';
import 'package:journal_main/pages/journal_writing.dart';
import 'package:journal_main/pages/medicine.dart';

class Journal extends StatefulWidget {
  const Journal({super.key});

  @override
  State<Journal> createState() => _NotesPageState();
}

class _NotesPageState extends State<Journal> {
  // text controller to access what the user typed
  final textController = TextEditingController();

  // create a journal 
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.music_note),
            tooltip: 'add voice note',
          ),

          /*IconButton(
            onPressed: () {},
            icon: const Icon(Icons.picture_in_picture),
            tooltip: 'add picture',
          ),*/

          //create button
          MaterialButton(
            onPressed: () {
              textController.clear();
              Navigator.pop(context);
            },
            child: const Text("Create"),
          ),

          MaterialButton(
            onPressed: () {
              textController.clear();
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Journal',
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
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'home page',
            onPressed: () {},
          ),
        ],
        /*leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'menu',
          onPressed: () {},
        ),*/
      ),
      drawer: const MyDrawer(),

      //body will display the list of previously stored notes

      body: const Center(),

      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        backgroundColor: Colors.grey.shade500,
        child: const Icon(Icons.add),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextEntryPage()),
                  );
                },
              ),

              IconButton(
                icon: const Icon(Icons.local_hospital),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicineInfoPage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
      /*body: ListView.builder(
        itemCount:,
      ),*/

      
    );
  }
}
