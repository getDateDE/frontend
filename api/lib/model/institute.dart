part of openapi.api;

class Institute {
  
  String name = null;
  
  String id = null;
  
  String phone = null;
  
  Address address = null;
  
  String description = null;
  Institute();

  @override
  String toString() {
    return 'Institute[name=$name, id=$id, phone=$phone, address=$address, description=$description, ]';
  }

  Institute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    id = json['id'];
    phone = json['phone'];
    address = (json['address'] == null) ?
      null :
      Address.fromJson(json['address']);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (id != null)
      json['id'] = id;
    if (phone != null)
      json['phone'] = phone;
    if (address != null)
      json['address'] = address;
    if (description != null)
      json['description'] = description;
    return json;
  }

  static List<Institute> listFromJson(List<dynamic> json) {
    return json == null ? List<Institute>() : json.map((value) => Institute.fromJson(value)).toList();
  }

  static Map<String, Institute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Institute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Institute.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Institute-objects as value to a dart map
  static Map<String, List<Institute>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Institute>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Institute.listFromJson(value);
       });
     }
     return map;
  }
}

