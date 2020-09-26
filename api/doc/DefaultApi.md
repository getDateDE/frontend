# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEmployee**](DefaultApi.md#addEmployee) | **POST** /institute/{id}/employees | 
[**clearSlot**](DefaultApi.md#clearSlot) | **DELETE** /slot/{slotId}/clear | 
[**createInstitute**](DefaultApi.md#createInstitute) | **POST** /institute | 
[**createSlot**](DefaultApi.md#createSlot) | **POST** /slot | 
[**deleteInstitute**](DefaultApi.md#deleteInstitute) | **DELETE** /institute | 
[**deleteInstituteSlot**](DefaultApi.md#deleteInstituteSlot) | **DELETE** /institute/{id}/slots | 
[**getInstitute**](DefaultApi.md#getInstitute) | **GET** /institute/{id} | Your GET endpoint
[**getInstituteSlots**](DefaultApi.md#getInstituteSlots) | **GET** /institute/{id}/slots | 
[**getInstitutes**](DefaultApi.md#getInstitutes) | **GET** /institute | Your GET endpoint
[**getSlots**](DefaultApi.md#getSlots) | **GET** /user/slots | Your GET endpoint
[**getUser**](DefaultApi.md#getUser) | **GET** /user | Your GET endpoint
[**makeAppointment**](DefaultApi.md#makeAppointment) | **POST** /slot/{slotId}/make | 
[**register**](DefaultApi.md#register) | **POST** /user/register | 


# **addEmployee**
> addEmployee(id, addEmployeeRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var id = id_example; // String | 
var addEmployeeRequest = AddEmployeeRequest(); // AddEmployeeRequest | 

try { 
    api_instance.addEmployee(id, addEmployeeRequest);
} catch (e) {
    print("Exception when calling DefaultApi->addEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **addEmployeeRequest** | [**AddEmployeeRequest**](AddEmployeeRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearSlot**
> clearSlot(slotId)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var slotId = slotId_example; // String | 

try { 
    api_instance.clearSlot(slotId);
} catch (e) {
    print("Exception when calling DefaultApi->clearSlot: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slotId** | **String**|  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInstitute**
> createInstitute(institute)



creates an institute

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var institute = Institute(); // Institute | 

try { 
    api_instance.createInstitute(institute);
} catch (e) {
    print("Exception when calling DefaultApi->createInstitute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institute** | [**Institute**](Institute.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSlot**
> createSlot(slotCreationRequest)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var slotCreationRequest = SlotCreationRequest(); // SlotCreationRequest | 

try { 
    api_instance.createSlot(slotCreationRequest);
} catch (e) {
    print("Exception when calling DefaultApi->createSlot: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slotCreationRequest** | [**SlotCreationRequest**](SlotCreationRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstitute**
> deleteInstitute()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();

try { 
    api_instance.deleteInstitute();
} catch (e) {
    print("Exception when calling DefaultApi->deleteInstitute: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstituteSlot**
> deleteInstituteSlot(id)



deletes an appointment

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var id = id_example; // String | 

try { 
    api_instance.deleteInstituteSlot(id);
} catch (e) {
    print("Exception when calling DefaultApi->deleteInstituteSlot: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstitute**
> Institute getInstitute(id)

Your GET endpoint

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var id = id_example; // String | 

try { 
    var result = api_instance.getInstitute(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getInstitute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**Institute**](Institute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstituteSlots**
> SlotsSearchResponse getInstituteSlots(id, page, pageSize, query)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var id = id_example; // String | 
var page = 56; // int | 
var pageSize = 56; // int | 
var query = username='abc';id='abc';age=18; // String | 

try { 
    var result = api_instance.getInstituteSlots(id, page, pageSize, query);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getInstituteSlots: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **page** | **int**|  | [optional] [default to null]
 **pageSize** | **int**|  | [optional] [default to null]
 **query** | **String**|  | [optional] [default to null]

### Return type

[**SlotsSearchResponse**](SlotsSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstitutes**
> InstitutesSearchResponse getInstitutes(page, pageSize, query)

Your GET endpoint

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var page = 56; // int | 
var pageSize = 56; // int | 
var query = username='abc';id='abc';age=18; // String | 

try { 
    var result = api_instance.getInstitutes(page, pageSize, query);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getInstitutes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to null]
 **pageSize** | **int**|  | [optional] [default to null]
 **query** | **String**|  | [optional] [default to null]

### Return type

[**InstitutesSearchResponse**](InstitutesSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSlots**
> SlotsSearchResponse getSlots(page, pageSize)

Your GET endpoint

get all slots of a user

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var page = 56; // int | 
var pageSize = 56; // int | 

try { 
    var result = api_instance.getSlots(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getSlots: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to null]
 **pageSize** | **int**|  | [optional] [default to null]

### Return type

[**SlotsSearchResponse**](SlotsSearchResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser()

Your GET endpoint

get user that is active

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();

try { 
    var result = api_instance.getUser();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUser: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeAppointment**
> String makeAppointment(slotId)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var slotId = 56; // int | 

try { 
    var result = api_instance.makeAppointment(slotId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->makeAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slotId** | **int**|  | [default to null]

### Return type

**String**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
> RegisterResponse register(registerRequest)



register for user

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var registerRequest = RegisterRequest(); // RegisterRequest | 

try { 
    var result = api_instance.register(registerRequest);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->register: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)|  | [optional] 

### Return type

[**RegisterResponse**](RegisterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

