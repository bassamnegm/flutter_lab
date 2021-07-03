import 'package:flutter/material.dart';
import '../Moduls/User.dart';

class UserCard extends StatelessWidget {
  final User? user;
  final Function? onItemClick;
  UserCard({@required this.user, this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onItemClick != null) {
          onItemClick!(user);
        }
      },
      child: Card(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "${user!.image}",
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("${user!.name}"),
              SizedBox(
                height: 5.0,
              ),
              Text("${user!.email}"),
            ],
          ),
        ),
      ),
    );
  }
}
