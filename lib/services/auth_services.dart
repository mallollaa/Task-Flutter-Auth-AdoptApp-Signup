import 'package:adopt_app/services/client.dart';
import 'package:dio/dio.dart';

import '../models/user.dart';

class AuthServices {
  // signup
  Future<String> SignUp({required User user}) async {
    String token = "";
    try {
      var response = await Client.client.post("/signup",
          data: user
              .toJson()); // this end boin form the backend not from the router
      // this will take the info from the UI and save it inside the class model then trun it into jason
      // then it will send it to the backend
      token = response.data["token"];
    } on DioError catch (e) {
      print(e);
    }
// we are acsseing the token inside the josion data in the backend
    return token;
  }

  Future<String> SignIn({required User user}) async {
    String token = "";
    try {
      var response = await Client.client.post("/signin", data: user.toJson());
      token = response.data["token"];
    } on DioError catch (e) {
      print(e);
    }
// we are acsseing the token inside the josion data in the backend
    return token;
  }
}
