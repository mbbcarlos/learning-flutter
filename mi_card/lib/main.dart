import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/cut.jpeg'),
              ),
              Text(
                'Marta Carlos',
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'SOFTWARE DEVELOPER',
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
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.public,
                    color: Colors.cyan[500],
                  ),
                  title: Text(
                    'github/mbbcarlos',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'SourceSansPro',
                        letterSpacing: 2.5,
                        color: Colors.cyan[900]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
