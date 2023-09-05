class LoginControllers {
  String? _username;
  setUsername(String value) => _username = value;
  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
     return true;
  }
}
