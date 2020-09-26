part of openapi.api;

class User {
  
  String firstname = null;
  
  String lastname = null;
  
  String email = null;
  
  String phone = null;
  User();

  @override
  String toString() {
    return 'User[firstname=$firstname, lastname=$lastname, email=$email, phone=$phone, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (firstname != null)
      json['firstname'] = firstname;
    if (lastname != null)
      json['lastname'] = lastname;
    if (email != null)
      json['email'] = email;
    if (phone != null)
      json['phone'] = phone;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

