import 'package:flutter/material.dart';
class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key, required this.notes}) : super(key: key);
  List<String> notes;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:ListView.builder(

itemCount: notes.length,
          itemBuilder: (context,index){
        return Card(
          child: Text(notes[index]),
        );
      })
    );
  }
}
