import 'package:flutter/material.dart';
import 'package:my_app1/data/user_services.dart';
import 'package:my_app1/screens/Login.dart';
import 'package:my_app1/screens/user_datleas.dart';
import '../Componats/user_card.dart';
import '../Moduls/User.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<User>> _usersList;
  late List<User> users;
  _getUsers() async {
    _usersList = UserServices().getUsers();
  }

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getUserCard(),
      appBar: getAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      title: Text('NEGM'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {
          print('Menu button Clicked');
        },
      ),
    );
  }

  Widget getUserCard() {
    return FutureBuilder<List<User>>(
        future: _usersList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Widget> items = List.generate(
              snapshot.data!.length,
              (index) => UserCard(
                user: snapshot.data![index],
                onItemClick: (clickedUser) {
                  print('Clicked user ${clickedUser.name}');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UserDetailsScreen(
                        user: clickedUser,
                      ),
                    ),
                  );
                },
              ),
            );

            return GridView.count(
              crossAxisCount: 2,
              children: items,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
