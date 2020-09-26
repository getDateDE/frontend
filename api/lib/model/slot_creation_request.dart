part of openapi.api;

class SlotCreationRequest {
  
  int date = null;
  
  int durationInMinutes = null;
  SlotCreationRequest();

  @override
  String toString() {
    return 'SlotCreationRequest[date=$date, durationInMinutes=$durationInMinutes, ]';
  }

  SlotCreationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    durationInMinutes = json['durationInMinutes'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date;
    if (durationInMinutes != null)
      json['durationInMinutes'] = durationInMinutes;
    return json;
  }

  static List<SlotCreationRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<SlotCreationRequest>() : json.map((value) => SlotCreationRequest.fromJson(value)).toList();
  }

  static Map<String, SlotCreationRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SlotCreationRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SlotCreationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SlotCreationRequest-objects as value to a dart map
  static Map<String, List<SlotCreationRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SlotCreationRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SlotCreationRequest.listFromJson(value);
       });
     }
     return map;
  }
}

