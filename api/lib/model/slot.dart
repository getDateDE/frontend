part of openapi.api;

class Slot {
  
  num dateTimestamp = null;
  
  User user = null;
  
  Institute institute = null;
  
  int durationInMinutes = null;
  Slot();

  @override
  String toString() {
    return 'Slot[dateTimestamp=$dateTimestamp, user=$user, institute=$institute, durationInMinutes=$durationInMinutes, ]';
  }

  Slot.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dateTimestamp = json['dateTimestamp'];
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
    institute = (json['institute'] == null) ?
      null :
      Institute.fromJson(json['institute']);
    durationInMinutes = json['durationInMinutes'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dateTimestamp != null)
      json['dateTimestamp'] = dateTimestamp;
    if (user != null)
      json['user'] = user;
    if (institute != null)
      json['institute'] = institute;
    if (durationInMinutes != null)
      json['durationInMinutes'] = durationInMinutes;
    return json;
  }

  static List<Slot> listFromJson(List<dynamic> json) {
    return json == null ? List<Slot>() : json.map((value) => Slot.fromJson(value)).toList();
  }

  static Map<String, Slot> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Slot>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Slot.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Slot-objects as value to a dart map
  static Map<String, List<Slot>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Slot>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Slot.listFromJson(value);
       });
     }
     return map;
  }
}

