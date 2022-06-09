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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}
