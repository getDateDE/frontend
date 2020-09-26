part of openapi.api;

class Address {
  
  String city = null;
  
  String country = null;
  
  String street = null;
  
  String houseNumber = null;
  
  String latitude = null;
  
  String longitude = null;
  
  String postalCode = null;
  Address();

  @override
  String toString() {
    return 'Address[city=$city, country=$country, street=$street, houseNumber=$houseNumber, latitude=$latitude, longitude=$longitude, postalCode=$postalCode, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    city = json['city'];
    country = json['country'];
    street = json['street'];
    houseNumber = json['house_number'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (city != null)
      json['city'] = city;
    if (country != null)
      json['country'] = country;
    if (street != null)
      json['street'] = street;
    if (houseNumber != null)
      json['house_number'] = houseNumber;
    if (latitude != null)
      json['latitude'] = latitude;
    if (longitude != null)
      json['longitude'] = longitude;
    if (postalCode != null)
      json['postal_code'] = postalCode;
    return json;
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? List<Address>() : json.map((value) => Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Address>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Address.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Address>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Address.listFromJson(value);
       });
     }
     return map;
  }
}

