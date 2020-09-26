part of openapi.api;

class AddEmployeeRequest {
  
  String name = null;
  AddEmployeeRequest();

  @override
  String toString() {
    return 'AddEmployeeRequest[name=$name, ]';
  }

  AddEmployeeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<AddEmployeeRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<AddEmployeeRequest>() : json.map((value) => AddEmployeeRequest.fromJson(value)).toList();
  }

  static Map<String, AddEmployeeRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AddEmployeeRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AddEmployeeRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddEmployeeRequest-objects as value to a dart map
  static Map<String, List<AddEmployeeRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AddEmployeeRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AddEmployeeRequest.listFromJson(value);
       });
     }
     return map;
  }
}

