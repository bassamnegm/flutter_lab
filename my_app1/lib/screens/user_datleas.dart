import 'package:flutter/material.dart';
import '../Moduls/User.dart';
import '../Componats/user_card.dart';

class UserDetailsScreen extends StatefulWidget {
  UserDetailsScreen({user});
  @override
  _UserDetailsScreenState createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("User_details"),
      ),
      body: Center(
        child: UserCard(user: user as User, onItemClick: null),
      ),
    );
  }
}
