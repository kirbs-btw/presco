import 'dart:io';
//import 'dart:js';
import 'dart:ui';
import 'dart:async';
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

class FriendsPage extends StatefulWidget {
  FriendsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FriendsPage createState() => _FriendsPage();
}

class _FriendsPage extends State<FriendsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromRGBO(36, 35, 53, 1),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'add party',
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                tooltip: 'friends',
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
        tooltip: 'party',
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
            child: const Icon(Icons.person),
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
              width: 1 * MediaQuery.of(context).size.width,
              height: 0.9 * MediaQuery.of(context).size.height,
              // color: Colors.teal,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                    //color: Colors.red,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gothamhtf',
                              color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Standard friend container
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  40, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                              "super interessant ! ja dahabe ich was dagegen! \n"
                              "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,  10, 0, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 1 * MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(36, 35, 53, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    // color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[

                        Container(
                          margin: const EdgeInsets.fromLTRB(10,  0, 10, 0),
                          width: 0.2 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(

                            borderRadius: new BorderRadius.circular(1000.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color.fromRGBO(229, 141, 144, 1), Color.fromRGBO(248, 56, 94, 1)],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "John",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Text mehr text und so zeug alta das ist wirklich \n"
                                  "super interessant ! ja dahabe ich was dagegen! \n"
                                  "du huuuuuren sohn",
                              style: TextStyle(
                                fontSize: 12.5,
                                fontFamily: "Gothamhtf",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
