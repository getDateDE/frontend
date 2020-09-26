import 'package:frontend/main.dart';
import 'package:openapi/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

User currentUser;

Future<User> setCredentials(email, password) async {
  apiClient.getAuthentication<HttpBasicAuth>("Authorization")
    ..username = email
    ..password = password;

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("email", email);
  sharedPreferences.setString("password", password);

  currentUser = await defaultApi.getUser();
  return currentUser;
}

Future<User> loadCredentials() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  if (sharedPreferences.containsKey("email") &&
      sharedPreferences.containsKey("password")) {
    String email = sharedPreferences.getString("email");
    String password = sharedPreferences.getString("password");

    apiClient.getAuthentication<HttpBasicAuth>("Authorization")
      ..username = email
      ..password = password;

    currentUser = await defaultApi.getUser();
    return currentUser;
  }
  return null;
}
