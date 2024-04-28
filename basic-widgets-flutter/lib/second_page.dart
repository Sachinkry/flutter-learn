import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int numList = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Second Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    numList += 1;
                  });
                },
                child: Text("Add ListTile"),
              ),
              ListView.builder(
                  physics: ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  itemCount: numList,
                  itemBuilder: (context, int index) {
                    return Container(
                      color: index.isEven ? Colors.greenAccent : Colors.orange,
                      child: ListTile(
                        leading: Icon(Icons.date_range),
                        title: Text("Select Date"),
                        subtitle: Text("Subtitle"),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
