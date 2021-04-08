import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app10/Header.dart';
import 'package:learning_app10/Home_Screen1.dart';
import 'package:learning_app10/colour1.dart';
import 'package:learning_app10/indianGk.dart';


class WorldGk extends StatefulWidget {
  @override
  _WorldGkState createState() => _WorldGkState();
}

class _WorldGkState extends State<WorldGk> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.symmetric(
                      horizontal: Constants.mainPadding,
                      vertical: Constants.mainPadding),
                  height: 44,
                  width: 44,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.white.withOpacity(0.3),
                    child: Icon(Icons.keyboard_backspace, color: Colors.white),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  margin: new EdgeInsets.symmetric(
                      horizontal: Constants.mainPadding,
                      vertical: Constants.mainPadding),
                  height: 44,
                  width: 44,
                  // ignore: deprecated_member_use
                  // ignore: deprecated_member_use
                ),
              ],
            ),
          ),
        ),
        body: Stack(children: <Widget>[
          HeaderInner(),
          ListView(
            children: <Widget>[
              SizedBox(height: Constants.mainPadding * 3),
              Center(
                child: Text(
                  "world gk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: Constants.mainPadding * 2),
              Container(
                padding: EdgeInsets.fromLTRB(
                    Constants.mainPadding,
                    Constants.mainPadding * 2,
                    Constants.mainPadding,
                    Constants.mainPadding),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(children: <Widget>[
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Constants.lightYellow,
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image.asset("assets/images/geo1.png",
                                      width: 40, height: 40),
                                ),
                                Container(
                                    child: Center(
                                  child: Text(
                                    'World Geography',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.textDark),
                                  ),
                                )),
                                Container(
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: SizedBox(
                                      child: Image.asset(
                                        "assets/images/play.png",
                                        width: 50,
                                        height: 85,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage1(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ])),
                    ]),
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(children: <Widget>[
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Constants.lightGreen,
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image.asset("assets/images/hbook.png",
                                      width: 40, height: 40),
                                ),
                                Container(
                                    child: Center(
                                  child: Text(
                                    'World History',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.textDark),
                                  ),
                                )),
                                Container(
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: SizedBox(
                                      child: Image.asset(
                                        "assets/images/play.png",
                                        width: 50,
                                        height: 85,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage1(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ])),
                    ]),
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(children: <Widget>[
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Constants.lightViolet,
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image.asset("assets/images/polity.png",
                                      width: 40, height: 40),
                                ),
                                Container(
                                    child: Center(
                                  child: Text(
                                    'world Polity',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.textDark),
                                  ),
                                )),
                                Container(
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: SizedBox(
                                      child: Image.asset(
                                        "assets/images/play.png",
                                        width: 50,
                                        height: 85,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage1(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ])),
                    ]),
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(children: <Widget>[
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Constants.lightPink2,
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image.asset("assets/images/eco.png",
                                      width: 40, height: 40),
                                ),
                                Container(
                                    child: Center(
                                  child: Text(
                                    'World Economics',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.textDark),
                                  ),
                                )),
                                Container(
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: SizedBox(
                                      child: Image.asset(
                                        "assets/images/play.png",
                                        width: 50,
                                        height: 85,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage1(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ])),
                    ]),
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(children: <Widget>[
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Constants.lightViolet2,
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image.asset("assets/images/eco.png",
                                      width: 40, height: 40),
                                ),
                                Container(
                                    child: Center(
                                  child: Text(
                                    'World Economics',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.textDark),
                                  ),
                                )),
                                Container(
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: SizedBox(
                                      child: Image.asset(
                                        "assets/images/play.png",
                                        width: 50,
                                        height: 85,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage1(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ])),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 7.0),
              Container(
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
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6E8AFA),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ]),
              ),
              Container(
                height: 170,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(
                        right: 16,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/image/1.jpg'))),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Morning TestBook",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Container(
                                    width: 150,
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      padding: EdgeInsets.all(10.0),
                                      color: Colors.white30,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                "Click Here",
                                                style: TextStyle(
                                                    color: Colors.blueGrey),
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(13.0),
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
                                ]),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(
                              right: 16,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/image/1.jpg'))),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Morning TestBook",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Container(
                                          width: 150,
                                          // ignore: deprecated_member_use
                                          child: FlatButton(
                                            padding: EdgeInsets.all(10.0),
                                            color: Colors.white30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Expanded(
                                                  child: Center(
                                                    child: Text(
                                                      "Click Here",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey),
                                                    ),
                                                  ),
                                                ),
                                                Icon(Icons.arrow_forward,
                                                    color: Colors.white,
                                                    size: 16),
                                              ],
                                            ),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      13.0),
                                            ),
                                            onPressed: () {
                                              // Navigate to Learning
                                              debugPrint("Pressed here");
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        IndianGk()),
                                              );
                                            },
                                          ),
                                        ),
                                      ]),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 170,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 140,
                                  margin: EdgeInsets.only(
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 3,
                                          spreadRadius: 2,
                                        )
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/image/1.jpg'))),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Morning TestBook",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              Container(
                                                width: 150,
                                                // ignore: deprecated_member_use
                                                child: FlatButton(
                                                  padding: EdgeInsets.all(10.0),
                                                  color: Colors.white30,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Center(
                                                          child: Text(
                                                            "Click Here",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .blueGrey),
                                                          ),
                                                        ),
                                                      ),
                                                      Icon(Icons.arrow_forward,
                                                          color: Colors.white,
                                                          size: 16),
                                                    ],
                                                  ),
                                                  shape:
                                                      new RoundedRectangleBorder(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(13.0),
                                                  ),
                                                  onPressed: () {
                                                    // Navigate to Learning
                                                    debugPrint("Pressed here");
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              IndianGk()),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 170,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        margin: EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 3,
                                                spreadRadius: 2,
                                              )
                                            ]),
                                        child: Column(
                                          children: <Widget>[
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blueGrey,
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            'assets/image/1.jpg'))),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "Morning TestBook",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    Container(
                                                      width: 150,
                                                      // ignore: deprecated_member_use
                                                      child: FlatButton(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        color: Colors.white30,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Expanded(
                                                              child: Center(
                                                                child: Text(
                                                                  "Click Here",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blueGrey),
                                                                ),
                                                              ),
                                                            ),
                                                            Icon(
                                                                Icons
                                                                    .arrow_forward,
                                                                color: Colors
                                                                    .white,
                                                                size: 16),
                                                          ],
                                                        ),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  13.0),
                                                        ),
                                                        onPressed: () {
                                                          // Navigate to Learning
                                                          debugPrint(
                                                              "Pressed here");
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        IndianGk()),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ]),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 170,
                                        child: ListView(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          children: <Widget>[
                                            Container(
                                              width: 140,
                                              margin: EdgeInsets.only(
                                                right: 16,
                                                bottom: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                      blurRadius: 3,
                                                      spreadRadius: 2,
                                                    )
                                                  ]),
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 3,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.blueGrey,
                                                          image: DecorationImage(
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  'assets/image/1.jpg'))),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            "Morning TestBook",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          Container(
                                                            width: 150,
                                                            // ignore: deprecated_member_use
                                                            child: FlatButton(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              color: Colors
                                                                  .white30,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: <
                                                                    Widget>[
                                                                  Expanded(
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        "Click Here",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.blueGrey),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                      Icons
                                                                          .arrow_forward,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 16),
                                                                ],
                                                              ),
                                                              shape:
                                                                  new RoundedRectangleBorder(
                                                                borderRadius:
                                                                    new BorderRadius
                                                                            .circular(
                                                                        13.0),
                                                              ),
                                                              onPressed: () {
                                                                // Navigate to Learning
                                                                debugPrint(
                                                                    "Pressed here");
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              IndianGk()),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 170,
                                              child: ListView(
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: <Widget>[
                                                  Container(
                                                    width: 140,
                                                    margin: EdgeInsets.only(
                                                      right: 16,
                                                      bottom: 8,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                            blurRadius: 3,
                                                            spreadRadius: 2,
                                                          )
                                                        ]),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Expanded(
                                                          flex: 3,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .blueGrey,
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    image: AssetImage(
                                                                        'assets/image/1.jpg'))),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "Morning TestBook",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                                Container(
                                                                  width: 150,
                                                                  // ignore: deprecated_member_use
                                                                  child:
                                                                      // ignore: deprecated_member_use
                                                                      FlatButton(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            10.0),
                                                                    color: Colors
                                                                        .white30,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: <
                                                                          Widget>[
                                                                        Expanded(
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              "Click Here",
                                                                              style: TextStyle(color: Colors.blueGrey),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                            Icons
                                                                                .arrow_forward,
                                                                            color:
                                                                                Colors.white,
                                                                            size: 16),
                                                                      ],
                                                                    ),
                                                                    shape:
                                                                        new RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          new BorderRadius.circular(
                                                                              13.0),
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      // Navigate to Learning
                                                                      debugPrint(
                                                                          "Pressed here");
                                                                      Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                IndianGk()),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 170,
                                              child: ListView(
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: <Widget>[
                                                  Container(
                                                    width: 140,
                                                    margin: EdgeInsets.only(
                                                      right: 16,
                                                      bottom: 8,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                            blurRadius: 3,
                                                            spreadRadius: 2,
                                                          )
                                                        ]),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Expanded(
                                                          flex: 3,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .blueGrey,
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    image: AssetImage(
                                                                        'assets/image/1.jpg'))),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "Morning TestBook",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                                Container(
                                                                  width: 150,
                                                                  // ignore: deprecated_member_use
                                                                  child:
                                                                      // ignore: deprecated_member_use
                                                                      FlatButton(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            10.0),
                                                                    color: Colors
                                                                        .white30,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: <
                                                                          Widget>[
                                                                        Expanded(
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              "Click Here",
                                                                              style: TextStyle(color: Colors.blueGrey),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                            Icons
                                                                                .arrow_forward,
                                                                            color:
                                                                                Colors.white,
                                                                            size: 16),
                                                                      ],
                                                                    ),
                                                                    shape:
                                                                        new RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          new BorderRadius.circular(
                                                                              13.0),
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      // Navigate to Learning
                                                                      debugPrint(
                                                                          "Pressed here");
                                                                      Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                IndianGk()),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}
