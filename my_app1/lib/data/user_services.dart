import 'package:my_app1/Moduls/User.dart';
import 'package:my_app1/serviecs/handlers.dart';

class UserServices {
  String endPoint = "/users";

  Future<List<User>> getUsers() async {
    try {
      Map<String, dynamic> response =
          await ServicesHandler().getService(endPoint);
      Iterable usersData = response['data'];
      List<User> usersList =
          usersData.map((item) => User.fromJson(item)).toList();
      return usersList;
    } catch (error) {
      throw Exception('Failed to get users!');
    }
  }

  Future postJop(dynamic body) async {
    try {
      Map<String, dynamic> response =
          await ServicesHandler().postService(endPoint, body: body);
      return response;
    } catch (error) {
      print(error);
    }
  }
}
