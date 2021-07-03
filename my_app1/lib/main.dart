import 'package:flutter/material.dart';
import 'package:my_app1/screens/Login.dart';
import 'package:my_app1/screens/home.dart';

//import './screens/home.dart';
import './screens/user_datleas.dart';

void main() {
  runApp(getAppRoot());
}

Widget getAppRoot() {
  ThemeData appTheme = ThemeData(brightness: Brightness.light);
  return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        "/userDetails": (context) => UserDetailsScreen()
      });
}
/*void main() {
  runApp(myApp());
}

Widget myApp() {
  return MaterialApp(
    home: getScaffold(),
    theme: ThemeData(primarySwatch: Colors.purple),
  );
}

Widget getScaffold() {
  return Scaffold(
    appBar: AppBar(
      title: Text("YouDon'tKnowAnyThingJonSnow"),
      leading: Icon(
        Icons.account_circle,
        color: Colors.grey[50],
        size: 40.0,
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => print("NEGM"),
      child: Icon(Icons.add),
    ),
    body: myBody(),
  );
}

Widget myBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [text1(), text2()],
    ),
  );
}

Widget text1() {
  return Text(
    "don't say his name",
    style: myTextStyle(),
  );
}

Widget text2() {
  return Text(
    ":) obs.. Voldemort",
    style: myTextStyle(),
  );
}

TextStyle myTextStyle() {
  return TextStyle(
      fontSize: 37,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: Colors.purple);
}
*/
