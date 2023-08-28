import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List lins = [
    {
      'notes': 'my mane is abdallah from sudan iam 18 yers old i am drice ',
      'image': 'assest/images/login.png'
    },
    {
      'notes': 'my mane is abdallah from sudan iam 19 yers old i am drice ',
      'image': 'assest/images/login.png'
    },
    {
      'notes': 'my mane is abdallah from sudan iam 20 yers old i am drice ',
      'image': 'login.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('addnote');
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: ListView.builder(
            itemCount: lins.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1, child: Image.asset('assest/images/login.png')),
                    Expanded(
                      flex: 3,
                      child: ListTile(
                        title: Text('${lins[index]}'),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit)),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
