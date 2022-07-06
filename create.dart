// rights reserved to Bastian Lipka


import 'dart:io';
//import 'dart:js';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presco/main.dart';


class MyApp  extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presco',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF3b3e51),
        backgroundColor: const Color(0xFF3b3e51),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Presco'),
    );
  }
}

class CreatePartyPage extends StatefulWidget {
  CreatePartyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreatePartyPage createState() => _CreatePartyPage();
}

class _CreatePartyPage extends State<CreatePartyPage> {
  String partyName = '';
  String partyDescription = '';
  String partyDate = '';


  void updateName(String text){
    partyName = text;
  }

  void updateDescription(String text){
    partyDescription = text;
  }

  void updateDate(String text){
    partyDate = text;
  }

  void listParty(){
    print(partyName);
    print(partyDescription);
    print(partyDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // change bottom app bar with bottom navigation bar ?
      // convex bottom bar ?  https://pub.dev/packages/convex_bottom_bar

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromRGBO(36, 35, 53, 1),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Spacer(),
              IconButton(
                tooltip: 'friends',
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, '/friends');
                },
              ),
              IconButton(
                tooltip: 'party',
                icon: const Icon(Icons.dashboard),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              IconButton(
                tooltip: 'locate',
                icon: const Icon(Icons.near_me),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'settings',
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'add party',
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            width: 10000,
            height: 10000,
            alignment: Alignment.center,
            child: const Icon(Icons.add),
          ),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(1000.0),
                color: const Color.fromRGBO(36, 35, 53, 1),
              ),
              child: Icon(
                Icons.add,
                size: 150,
                color: Colors.white,
              ),
            ),

            // name input
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 0.8 * MediaQuery.of(context).size.width,
              child: TextField(
                onChanged: updateName,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gothamhtf",
                  ),
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Color.fromRGBO(36, 35, 53, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Name',
                ),
              ),
            ),

            // description input
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 0.8 * MediaQuery.of(context).size.width,
              child: TextField(
                onChanged: updateDescription,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gothamhtf",
                  ),
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Color.fromRGBO(36, 35, 53, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Description',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              width: 0.8 * MediaQuery.of(context).size.width,
              child: Wrap(
                children: <Widget>[
                  // tag widget example
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Text(
                      "Party",
                      style: TextStyle(
                        fontFamily: "Gothamhtf",
                        color: Colors.white,
                      ),
                    ),
                  ), // Tag Widget end
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Text(
                      "Cool chilly jazz",
                      style: TextStyle(
                        fontFamily: "Gothamhtf",
                        color: Colors.white,
                      ),
                    ),
                  ), // Tag Widget end
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Text(
                      "Nicer test",
                      style: TextStyle(
                        fontFamily: "Gothamhtf",
                        color: Colors.white,
                      ),
                    ),
                  ), // Tag Widget end
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Text(
                      "Mehr text",
                      style: TextStyle(
                        fontFamily: "Gothamhtf",
                        color: Colors.white,
                      ),
                    ),
                  ), // Tag Widget end
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Text(
                      "Das ist ganz langer text für den Wrap",
                      style: TextStyle(
                        fontFamily: "Gothamhtf",
                        color: Colors.white,
                      ),
                    ),
                  ), // Tag Widget end
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(1000.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ), // Tag Widget end
                ],
              ),
            ),
            // date/time input
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 0.8 * MediaQuery.of(context).size.width,
              child: TextField(
                onChanged: updateDate,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gothamhtf",
                  ),
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Color.fromRGBO(36, 35, 53, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Time',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 0.8 * MediaQuery.of(context).size.width,
              child: RaisedButton(
                onPressed: (){
                  listParty();
                },
                textColor: Colors.white,
                color: Colors.redAccent,
                child: Text("Create"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
