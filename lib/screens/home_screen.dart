import 'package:flutter/material.dart';
import 'package:notes_app/screens/create_note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Notes'),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        shape: OvalBorder(side: BorderSide.none),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const CreateNote()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}