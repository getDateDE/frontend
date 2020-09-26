# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInstitute**](DefaultApi.md#createInstitute) | **POST** /institute | 
[**createInstituteSlot**](DefaultApi.md#createInstituteSlot) | **POST** /institute/{id}/slot | 
[**deleteInstitute**](DefaultApi.md#deleteInstitute) | **DELETE** /institute | 
[**deleteInstituteSlot**](DefaultApi.md#deleteInstituteSlot) | **DELETE** /institute/{id}/slot | 
[**getInstitute**](DefaultApi.md#getInstitute) | **GET** /institute/{id} | Your GET endpoint
[**getInstituteSlots**](DefaultApi.md#getInstituteSlots) | **GET** /institute/{id}/slot | 
[**getInstitutes**](DefaultApi.md#getInstitutes) | **GET** /institute | Your GET endpoint
[**getSlots**](DefaultApi.md#getSlots) | **GET** /user/slots | Your GET endpoint
[**getUser**](DefaultApi.md#getUser) | **GET** /user | Your GET endpoint
[**makeAppointment**](DefaultApi.md#makeAppointment) | **POST** /institute/{id}/slot/{slotId}/make | 
[**register**](DefaultApi.md#register) | **POST** /user/register | 


# **createInstitute**
> createInstitute(institute)



creates an institute

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

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

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInstituteSlot**
> createInstituteSlot(id, slotCreationRequest)



creates an appointment

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var id = id_example; // String | 
var slotCreationRequest = SlotCreationRequest(); // SlotCreationRequest | 

try { 
    api_instance.createInstituteSlot(id, slotCreationRequest);
} catch (e) {
    print("Exception when calling DefaultApi->createInstituteSlot: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **slotCreationRequest** | [**SlotCreationRequest**](SlotCreationRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstitute**
> deleteInstitute()



### Example 
```dart
import 'package:openapi/api.dart';

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

No authorization required

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
> List<Slot> getInstituteSlots(id, pageSize, page)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 
var pageSize = 56; // int | 
var page = 56; // int | 

try { 
    var result = api_instance.getInstituteSlots(id, pageSize, page);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getInstituteSlots: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **pageSize** | **int**|  | [optional] [default to null]
 **page** | **int**|  | [optional] [default to null]

### Return type

[**List<Slot>**](Slot.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstitutes**
> getInstitutes(institute)

Your GET endpoint

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var institute = [List&lt;Institute&gt;()]; // List<Institute> | 

try { 
    api_instance.getInstitutes(institute);
} catch (e) {
    print("Exception when calling DefaultApi->getInstitutes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institute** | [**List&lt;Institute&gt;**](Institute.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSlots**
> List<Slot> getSlots(pageSize, page)

Your GET endpoint

get all slots of a user

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var pageSize = pageSize_example; // String | 
var page = page_example; // String | 

try { 
    var result = api_instance.getSlots(pageSize, page);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getSlots: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**|  | [default to null]
 **page** | **String**|  | [default to null]

### Return type

[**List<Slot>**](Slot.md)

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
> String makeAppointment(id, slotId)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Authorization
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Authorization').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = 56; // int | 
var slotId = 56; // int | 

try { 
    var result = api_instance.makeAppointment(id, slotId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->makeAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]
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

