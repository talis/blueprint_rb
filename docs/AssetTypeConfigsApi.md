# BlueprintClient::AssetTypeConfigsApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AssetTypeConfigsApi.md#get) | **GET** /{namespace}/assets/{assetType}/templates | 


# **get**
> TemplateBody get(namespace, asset_type, )



get a template for a given asset type

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetTypeConfigsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.


begin
  result = api_instance.get(namespace, asset_type, )
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetTypeConfigsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 

### Return type

[**TemplateBody**](TemplateBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



