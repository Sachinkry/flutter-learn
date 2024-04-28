import "package:flutter/material.dart";

class ThirdPage extends StatefulWidget {
  static const routeName = "third_page";

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController _controller = TextEditingController();
  String userInput = "Nothing Yet!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Third Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        userInput = _controller.text;
                      });
                    },
                    child: Text(
                      "Display Value Btn",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 201, 241, 222),
                  child: TextFormField(
                    controller: _controller,
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.pinkAccent,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    userInput,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  )),
                )),
          ],
        ));
  }
}
