import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

class Arabic extends StatefulWidget {
  const Arabic({super.key});

  @override
  State<Arabic> createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  String Language = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZHMz9ABPcEt5Q0lwZyVlAeYMglKtmXg3wzg&usqp=CAU"))),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  });
                }),
                child: Text(
                  "back to home page",
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 239, 217, 241)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 79, 205, 236)),
              ),
              Divider(
                height: 70,
              ),
              Center(
                child: Text(
                  "What you want to learn ?",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              RadioListTile(
                  title: Text("Arabic", style: TextStyle(color: Colors.amber)),
                  subtitle: Text("arabic language"),
                  secondary: Icon(Icons.language),
                  groupValue: Language,
                  value: "United Arab Emirates",
                  onChanged: ((val) {
                    Language = val.toString();
                  })),
              RadioListTile(
                  title: Text("English", style: TextStyle(color: Colors.amber)),
                  subtitle: Text("English language"),
                  secondary: Icon(Icons.language),
                  groupValue: Language,
                  value: "United States of America",
                  onChanged: ((val) {
                    Language = val.toString();
                  })),
              RadioListTile(
                  title: Text(
                    "Turkish",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text("Turkish language"),
                  secondary: Icon(Icons.language),
                  groupValue: Language,
                  value: "Turki",
                  onChanged: ((val) {
                    Language = val.toString();
                  })),
            ],
          ),
        ));
  }
}
