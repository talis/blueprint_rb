# BlueprintClient::AssetTypeTemplatesApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](AssetTypeTemplatesApi.md#add) | **POST** /{namespace}/assets/{assetType}/templates | 
[**delete**](AssetTypeTemplatesApi.md#delete) | **DELETE** /{namespace}/assets/{assetType}/templates | 
[**put**](AssetTypeTemplatesApi.md#put) | **PUT** /{namespace}/assets/{assetType}/templates | 


# **add**
> TemplateBody add(namespace, asset_type, template_body)



Configure a template for a given asset type

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetTypeTemplatesApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

template_body = BlueprintClient::TemplateBody.new # TemplateBody | template body


begin
  result = api_instance.add(namespace, asset_type, template_body)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetTypeTemplatesApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
 **template_body** | [**TemplateBody**](TemplateBody.md)| template body | 

### Return type

[**TemplateBody**](TemplateBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **delete**
> TemplateBody delete(namespace, asset_type, )



Delete a template for a given asset type

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetTypeTemplatesApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.


begin
  result = api_instance.delete(namespace, asset_type, )
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetTypeTemplatesApi->delete: #{e}"
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



# **put**
> TemplateBody put(namespace, asset_type, template_body)



update a template for a given asset type

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetTypeTemplatesApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

template_body = BlueprintClient::TemplateBody.new # TemplateBody | template body


begin
  result = api_instance.put(namespace, asset_type, template_body)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetTypeTemplatesApi->put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
 **template_body** | [**TemplateBody**](TemplateBody.md)| template body | 

### Return type

[**TemplateBody**](TemplateBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



