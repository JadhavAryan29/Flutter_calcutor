import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final color = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[400],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  child: Text(
                    'Simple Calculator',
                    style: TextStyle(
                      fontFamily: 'PatrickHandSC',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: AvatarGlow(
                endRadius: 140,
                duration: Duration(seconds: 2),
                glowColor: Colors.red[100],
                repeat: true,
                repeatPauseDuration: Duration(seconds: 1),
                startDelay: Duration(seconds: 1),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.none,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: Colors.red[400],
                    child: Container(
                      child: Image.asset(
                        'images/calculator.png',
                        // color: Colors.white70,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    radius: 80.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  child: Text(
                    '@ARYANJADHAV',
                    style: TextStyle(
                      fontFamily: 'PatrickHandSC',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(18),
                    color: Colors.white70,
                    child: Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          fontFamily: 'PatrickHandSC',
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }
}
