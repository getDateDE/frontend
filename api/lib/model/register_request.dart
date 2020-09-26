part of openapi.api;

class RegisterRequest {
  
  String firstname = null;
  
  String lastname = null;
  
  String email = null;
  
  String password = null;
  
  String phone = null;
  RegisterRequest();

  @override
  String toString() {
    return 'RegisterRequest[firstname=$firstname, lastname=$lastname, email=$email, password=$password, phone=$phone, ]';
  }

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
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
    if (password != null)
      json['password'] = password;
    if (phone != null)
      json['phone'] = phone;
    return json;
  }

  static List<RegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RegisterRequest>() : json.map((value) => RegisterRequest.fromJson(value)).toList();
  }

  static Map<String, RegisterRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegisterRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegisterRequest-objects as value to a dart map
  static Map<String, List<RegisterRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegisterRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegisterRequest.listFromJson(value);
       });
     }
     return map;
  }
}

