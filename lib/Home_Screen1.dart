import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:learning_app10/General_Sceince.dart';
import 'package:learning_app10/General_Studies.dart';
import 'package:learning_app10/WorldGk.dart';
import 'package:learning_app10/colour1.dart';
import 'package:learning_app10/drawer.dart';
import 'package:learning_app10/indianGk.dart';

// ignore: unused_import

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: NavDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: SizedBox(
              height: 24,
              width: 28,
              child: Image.asset("assets/images/menu.png"),
            ),
            onPressed: () {
              debugPrint("menu is pressed");
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => NavDrawer(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 2, left: 20, right: 20),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  SizedBox(
                    height: 185.0,
                    width: 420.0,
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      autoplay: true,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 700),
                      dotSize: 4.0,
                      dotColor: Colors.red[200],
                      dotBgColor: Colors.transparent,
                      borderRadius: true,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,
                      images: [
                        AssetImage('assets/image/1.jpg'),
                        AssetImage('assets/image/2.jpg'),
                        AssetImage('assets/image/3.jpg'),
                        AssetImage('assets/image/4.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "General Knowledge",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1333),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6E8AFA),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 10.0),
                  Stack(children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFEF3F3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "World Gk",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),
                          // Categories Button
                          Container(
                            // ignore: deprecated_member_use
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Click Here",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WorldGk()),
                                );
                                
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/world.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ]),
                  SizedBox(height: 20.0),
                  Stack(children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFF5D2E6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Indian Gk",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),
                          // Categories Button
                          Container(
                            // ignore: deprecated_member_use
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Click Here",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IndianGk()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/taj.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ]),
                  SizedBox(height: 20.0),
                  Stack(children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFF8EECE),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "General Studies",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),
                          // Categories Button
                          Container(
                            // ignore: deprecated_member_use
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Click Here",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GeneralStudies()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/gdp.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ]),
                  SizedBox(height: 20.0),
                  Stack(children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFF5FEEF3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "General science",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),
                          // Categories Button
                          Container(
                            // ignore: deprecated_member_use
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Click Here",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GeneralScience()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/test.png",
                        width: 200,
                        height: 120,
                      ),
                    ),
                  ]),
                  SizedBox(height: 20.0),
                  Stack(children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFF83CBF5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Stack Gk",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),
                          // Categories Button
                          Container(
                            // ignore: deprecated_member_use
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Click Here",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage1()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/books.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ]),
                ]))));
  }
}
