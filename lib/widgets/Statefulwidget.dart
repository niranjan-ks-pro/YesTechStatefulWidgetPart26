import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var dspText = "HELLO WORLD";
  var iconclrLike = Colors.black;
  var iconclrDlike = Colors.black;

  void changeText() {
    setState(() {
      dspText = "GOOD MORNING";
    });
  }

  void changeTextHELLO() {
    setState(() {
      dspText = "HELLO WORLD";
    });
  }

  void changeclrLike() {
    setState(() {
      if (iconclrLike == Colors.black) {
        iconclrLike = Colors.blue;
      } else {
        iconclrLike = Colors.black;
      }
    });
  }

  void changeclrDlike() {
    setState(() {
      if (iconclrDlike == Colors.black) {
        iconclrDlike = Colors.red;
      } else {
        iconclrDlike = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LEARN FLUTTER"),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          elevation: 20,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dspText,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    changeText();
                  },
                  child: Text(
                    "GOOD morning",
                    style: TextStyle(fontSize: 10),
                  )),
              ElevatedButton(
                  onPressed: () {
                    changeTextHELLO();
                  },
                  child: Text(
                    "HELLO WORLD",
                    style: TextStyle(fontSize: 10),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      changeclrLike();
                    },
                    icon: Icon(Icons.thumb_up),
                    iconSize: 50,
                    color: iconclrLike,
                  ),
                  IconButton(
                    onPressed: () {
                      changeclrDlike();
                    },
                    icon: Icon(Icons.thumb_down),
                    iconSize: 50,
                    color: iconclrDlike,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
