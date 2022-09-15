import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String MLanguage = "";
  List Older = ["6-18", "19-29", "30-39", "40-59"];
  String Selected = "6-18";
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
                height: 40,
              ),
              Center(
                child: Text(
                  "Please enter your information ",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.green,
              ),
              Center(
                child: Text(
                  "How old are you ?",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 248, 30, 22),
                  ),
                ),
              ),
              Divider(
                height: 5,
                color: Colors.green,
              ),
              DropdownButton(
                  value: Selected,
                  items: Older.map(
                          (e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: ((val) {
                    setState(() {
                      Selected = val.toString();
                    });
                  })),
              Center(
                child: Text(
                  "Please select your mother language!",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 248, 30, 22),
                  ),
                ),
              ),
              Divider(
                height: 5,
                color: Colors.green,
              ),
              RadioListTile(
                  title: Text("Arabic", style: TextStyle(color: Colors.amber)),
                  subtitle: Text("arabic language"),
                  groupValue: MLanguage,
                  value: "Arabic",
                  onChanged: ((val) {
                    MLanguage = val.toString();
                  })),
              RadioListTile(
                  title: Text("English", style: TextStyle(color: Colors.amber)),
                  subtitle: Text("English language"),
                  groupValue: MLanguage,
                  value: "English",
                  onChanged: ((val) {
                    MLanguage = val.toString();
                  })),
              RadioListTile(
                  title: Text("Turkish", style: TextStyle(color: Colors.amber)),
                  subtitle: Text("Turkish language"),
                  groupValue: MLanguage,
                  value: "Turki",
                  onChanged: ((val) {
                    MLanguage = val.toString();
                  })),
            ],
          ),
        ));
  }
}
