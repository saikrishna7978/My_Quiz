import 'dart:io';
import 'package:flutter/material.dart';
import 'package:learning_app10/Home_Screen1.dart';
import 'package:learning_app10/drawerinfo.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              //   style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/image/1.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => HomePage1(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Profile(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
            ),
            title: Text('Bookmark'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Bookmark(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Share(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rating'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Rating(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Settings(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => exit(0),
          ),
        ],
      ),
    );
  }
}
