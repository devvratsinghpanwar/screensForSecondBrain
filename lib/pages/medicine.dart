import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_main/components/drawer.dart';


class MedicineInfoPage extends StatefulWidget {
  const MedicineInfoPage({super.key});

  @override
  State<MedicineInfoPage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicineInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Medicine Info',
            style: GoogleFonts.dmSerifText(),
          ),
          centerTitle: true,
        ),

        drawer: const MyDrawer(),

        

        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 16.0, // spacing between columns
            mainAxisSpacing: 25.0, // spacing between rows
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                //color: Theme.of(context).colorScheme.primary,
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: ListTile(
                title: Text('Medicine $index'),
                subtitle: Text('Description of Medicine $index'),
                onTap: () {
                  // Add functionality to navigate to details page
                },
              ),
            );
          },
        ));
  }
}
