part of openapi.api;

class InstitutesSearchResponse {
  
  List<Institute> data = [];
  
  int total = null;
  InstitutesSearchResponse();

  @override
  String toString() {
    return 'InstitutesSearchResponse[data=$data, total=$total, ]';
  }

  InstitutesSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      Institute.listFromJson(json['data']);
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

  static List<InstitutesSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<InstitutesSearchResponse>() : json.map((value) => InstitutesSearchResponse.fromJson(value)).toList();
  }

  static Map<String, InstitutesSearchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstitutesSearchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstitutesSearchResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InstitutesSearchResponse-objects as value to a dart map
  static Map<String, List<InstitutesSearchResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InstitutesSearchResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InstitutesSearchResponse.listFromJson(value);
       });
     }
     return map;
  }
}

