library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';

part 'model/add_employee_request.dart';
part 'model/address.dart';
part 'model/institute.dart';
part 'model/institutes_search_response.dart';
part 'model/register_request.dart';
part 'model/register_response.dart';
part 'model/slot.dart';
part 'model/slot_creation_request.dart';
part 'model/slots_search_response.dart';
part 'model/user.dart';


ApiClient defaultApiClient = ApiClient();
