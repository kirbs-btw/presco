import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:presco/friends.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => MyHomePage(),
    '/friends': (context) => FriendsPage(),
  },
  title: 'Presco',
  theme: ThemeData(
    scaffoldBackgroundColor: const Color(0xFF3b3e51),
    primarySwatch: Colors.teal,
    backgroundColor: Color(0xFF3b3e51),
  ),
  home: MyHomePage(title: 'Presco'),
)
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
             IconButton(
               tooltip: 'friends',
               icon: const Icon(Icons.person),
               onPressed: () {
                 Navigator.pushNamed(context, '/friends');
               },
             ),
             const Spacer(),
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
            child: const Icon(Icons.dashboard),
          ),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //margin: const EdgeInsets.fromLTRB(0,  0, 0, 0),
                        child: Text(
                            "Guten Abend!",
                            style: TextStyle(
                              fontFamily: 'Gothamhtf',
                              fontSize: 25,
                              color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Container(
                    margin: const EdgeInsets.fromLTRB(0,  25, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.width * 0.85,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(35.0),
                      color: Color(int.parse("0xff282a3e")),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.fromLTRB(0,  50, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.width * 0.85,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(35.0),
                      color: Color(int.parse("0xff282a3e")),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.fromLTRB(0,  50, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.width * 0.85,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(35.0),
                      color: Color(int.parse("0xff282a3e")),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


/*
new Container(
              margin: const EdgeInsets.fromLTRB(0,  50, 0, 0),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.width * 0.85,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(35.0),
                color: Color(int.parse("0xff282a3e")),
              ),
            ),
            new Container(
              margin: const EdgeInsets.fromLTRB(0,  50, 0, 0),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.width * 0.85,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(35.0),
                color: Color(int.parse("0xff282a3e")),
              ),
            ),
 */