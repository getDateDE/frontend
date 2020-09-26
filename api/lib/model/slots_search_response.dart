part of openapi.api;

class SlotsSearchResponse {
  
  List<Slot> data = [];
  
  int total = null;
  SlotsSearchResponse();

  @override
  String toString() {
    return 'SlotsSearchResponse[data=$data, total=$total, ]';
  }

  SlotsSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      Slot.listFromJson(json['data']);
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (total != null)
      json['total'] = total;
    return json;
  }

  static List<SlotsSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SlotsSearchResponse>() : json.map((value) => SlotsSearchResponse.fromJson(value)).toList();
  }

  static Map<String, SlotsSearchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SlotsSearchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SlotsSearchResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SlotsSearchResponse-objects as value to a dart map
  static Map<String, List<SlotsSearchResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SlotsSearchResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SlotsSearchResponse.listFromJson(value);
       });
     }
     return map;
  }
}

