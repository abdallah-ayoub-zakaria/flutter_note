import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.note),
                labelText: 'Title Note',
                filled: true,
                fillColor: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.note),
                labelText: 'Note',
                filled: true,
                fillColor: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              show();
            },
            child: Container(
              alignment: Alignment.center,
              width: 130,
              height: 40,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Add Image Note',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    color: Colors.blue),
                child: Text(
                  'Add  Note',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ]),
      ),
    );
  }

  show() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 170,
            padding: EdgeInsets.only(top: 10, left: 30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text('Please choose Image'),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.photo_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Form Gallery'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.camera),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Form Camera'),
                  ],
                ),
              ),
            ]),
          );
        });
  }
}
