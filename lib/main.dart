import 'package:buautiful_material_navigation_drawer_app/about.dart';
import 'contact.dart';
import 'sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: new HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/a": (BuildContext context) => new AboutUs("About Us"),
      //   "/b": (BuildContext context) => new Contact("Contact Us"),
      //   "/c": (BuildContext context) => new SignIn("Sign In"),
      //   "/d": (BuildContext context) => new MyApp(),}
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Nabeel"),
              accountEmail: new Text("nabeelshakeel966@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.deepPurple
                        : Colors.white,
                child: new Text("N"),
              ),
              otherAccountsPictures: [
                new CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.deepPurple
                          : Colors.white,
                  child: new Text("K"),
                )
              ],
            ),
            new ListTile(
                title: new Text("Home"),
                trailing: new Icon(
                  Icons.home,
                ),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new MyApp()));
                  Navigator.of(context).pop();
                }),
            new Divider(),
            new ListTile(
                title: new Text("About"),
                trailing: new Icon(Icons.face_unlock_sharp),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new AboutUs("About Us")));
                  Navigator.of(context).pop();
                }),
            new ListTile(
                title: new Text("Contact"),
                trailing: new Icon(Icons.phone),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Contact("Contact Us")));
                  Navigator.of(context).pop();
                }),
            new ListTile(
                title: new Text("Sign In"),
                trailing: new Icon(Icons.account_circle),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new SignIn("Sign In")));
                  Navigator.of(context).pop();
                }),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
          child: new Center(
        child: new Text("Home Page"),
      )),
    );
  }
}
