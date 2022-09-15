import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:myapp/information.dart';
import 'package:myapp/arabic.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgMrWEGZpaFaIA9fU8l0ThMkFSPauv8mvooQ&usqp=CAU"))),
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 112, 215, 247),
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  child: Card(
                      child: Text(
                        "Welcome to the Turkish app",
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 55, 53),
                          fontSize: 55,
                        ),
                      ),
                      color: Color.fromARGB(255, 234, 185, 238))),
              Divider(
                height: 100,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Arabic();
                      })));
                    });
                  },
                  icon: Icon(Icons.book),
                  label: Text(
                    "Go to learn        ",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 245, 197, 242)),
                  )),
              Divider(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Info();
                      })));
                    });
                  },
                  icon: Icon(Icons.info),
                  label: Text(
                    "Your Information",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 245, 197, 242)),
                  ))
            ])));
  }
}
