# BlueprintClient::SecurityApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_public_certificate**](SecurityApi.md#get_public_certificate) | **GET** /keys/public | 


# **get_public_certificate**
> get_public_certificate



Return public key that is used to verify signed data

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'

api_instance = BlueprintClient::SecurityApi.new

begin
  api_instance.get_public_certificate
rescue BlueprintClient::ApiError => e
  puts "Exception when calling SecurityApi->get_public_certificate: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



