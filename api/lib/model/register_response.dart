part of openapi.api;

class RegisterResponse {
  /// The underlying value of this enum member.
  final String value;

  const RegisterResponse._internal(this.value);

  static const RegisterResponse sUCCESSFULLYCREATED_ = const RegisterResponse._internal("SUCCESSFULLY_CREATED");
  static const RegisterResponse aLREADYEXISTS_ = const RegisterResponse._internal("ALREADY_EXISTS");

  static RegisterResponse fromJson(String value) {
    return new RegisterResponseTypeTransformer().decode(value);
  }
  
  static List<RegisterResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterResponse>() : json.map((value) => RegisterResponse.fromJson(value)).toList();
  }
}

class RegisterResponseTypeTransformer {

  dynamic encode(RegisterResponse data) {
    return data.value;
  }

  RegisterResponse decode(dynamic data) {
    switch (data) {
      case "SUCCESSFULLY_CREATED": return RegisterResponse.sUCCESSFULLYCREATED_;
      case "ALREADY_EXISTS": return RegisterResponse.aLREADYEXISTS_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

