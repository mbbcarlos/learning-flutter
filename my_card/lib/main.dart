import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatefulWidget {
  @override
  _MyCard createState() => _MyCard();
}

class _MyCard extends State<MyCard> {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurple[700],
                      Colors.cyan[500],
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 150.0,
                      backgroundImage: AssetImage('images/cut.jpeg'),
                    ),
                    Text(
                      'Marta Carlos',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    Text(
                      'MSC IN COMPUTER SCIENCE @ FCT NOVA',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[100]),
                    ),
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.cyan[100],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 325),
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.cyan[500],
                          ),
                          title: Text(
                            'mbbcarlos@gmail.com',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 2.5,
                                color: Colors.cyan[900]),
                          ),
                        ),
                      ),
                    ),
                    // Card(
                    //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    //   child: ListTile(
                    //     leading: Icon(
                    //       Icons.public,
                    //       color: Colors.cyan[500],
                    //     ),
                    //     title: Text(
                    //       'github/mbbcarlos',
                    //       style: TextStyle(
                    //           fontSize: 15.0,
                    //           fontFamily: 'SourceSansPro',
                    //           letterSpacing: 2.5,
                    //           color: Colors.cyan[900]),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                child: Expanded(child: Image.asset('images/under.png')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
