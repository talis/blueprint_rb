# BlueprintClient::IntegrationsApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_integration**](IntegrationsApi.md#add_integration) | **POST** /{namespace}/integrations | 
[**delete_integration**](IntegrationsApi.md#delete_integration) | **DELETE** /{namespace}/integrations/{integrationType}/{integrationId} | 
[**get_integration**](IntegrationsApi.md#get_integration) | **GET** /{namespace}/integrations/{integrationType}/{integrationId} | 
[**namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post**](IntegrationsApi.md#namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post) | **POST** /{namespace}/integrations/lti1/{integrationId}/assets/{assetType}/{assetId} | 
[**replace_integration**](IntegrationsApi.md#replace_integration) | **PUT** /{namespace}/integrations/{integrationType}/{integrationId} | 


# **add_integration**
> IntegrationBody add_integration(namespace, body)



Add an integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::IntegrationsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

body = BlueprintClient::IntegrationBody.new # IntegrationBody | integration


begin
  result = api_instance.add_integration(namespace, body)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling IntegrationsApi->add_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **body** | [**IntegrationBody**](IntegrationBody.md)| integration | 

### Return type

[**IntegrationBody**](IntegrationBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **delete_integration**
> delete_integration(namespace, integration_id, integration_type)



Delete an integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::IntegrationsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

integration_id = "integration_id_example" # String | id of an integration

integration_type = "integration_type_example" # String | Type of external integration, e.g. 'lti1'


begin
  api_instance.delete_integration(namespace, integration_id, integration_type)
rescue BlueprintClient::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **integration_id** | **String**| id of an integration | 
 **integration_type** | **String**| Type of external integration, e.g. &#39;lti1&#39; | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_integration**
> IntegrationBody get_integration(namespace, integration_typeintegration_id, )



Get details of a given integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::IntegrationsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

integration_type = "integration_type_example" # String | Type of external integration, e.g. 'lti1'

integration_id = "integration_id_example" # String | id of an integration


begin
  result = api_instance.get_integration(namespace, integration_typeintegration_id, )
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **integration_type** | **String**| Type of external integration, e.g. &#39;lti1&#39; | 
 **integration_id** | **String**| id of an integration | 

### Return type

[**IntegrationBody**](IntegrationBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post**
> namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post(namespace, integration_id, asset_type, asset_idlti_message_type, lti_version, resource_link_id, opts)



LTI launch url for integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'

api_instance = BlueprintClient::IntegrationsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

integration_id = "integration_id_example" # String | id of an integration

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

asset_id = "asset_id_example" # String | id of an asset

lti_message_type = "lti_message_type_example" # String | LTI launch data message type, must be 'basic-lti-launch-request'

lti_version = "lti_version_example" # String | LTI launch version, must be 'LTI-1p0'

resource_link_id = "resource_link_id_example" # String | LTI resource_link_id parameters

opts = { 
  oauth_consumer_key: "oauth_consumer_key_example", # String | OAuth 1.0 consumer_key parameters
  oauth_consumer_key2: "oauth_consumer_key_example", # String | OAuth 1.0 consumer_key parameters
  oauth_signature_method: "oauth_signature_method_example", # String | OAuth 1.0 signature method, must be 'HMAC-SHA1'
  oauth_signature_method2: "oauth_signature_method_example", # String | OAuth 1.0 signature method, must be 'HMAC-SHA1'
  oauth_timestamp: 56, # Integer | OAuth 1.0 timestamp of request
  oauth_timestamp2: 56, # Integer | OAuth 1.0 timestamp of request
  oauth_version: 3.4, # Float | OAuth 1.0 version, must be '1.0'
  oauth_version2: 3.4, # Float | OAuth 1.0 version, must be '1.0'
  oauth_nonce: "oauth_nonce_example", # String | OAuth 1.0 Nonce
  oauth_nonce2: "oauth_nonce_example", # String | OAuth 1.0 Nonce
  oauth_signature: "oauth_signature_example", # String | OAuth 1.0 request signature
  oauth_signature2: "oauth_signature_example" # String | OAuth 1.0 request signature
}

begin
  api_instance.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post(namespace, integration_id, asset_type, asset_idlti_message_type, lti_version, resource_link_id, opts)
rescue BlueprintClient::ApiError => e
  puts "Exception when calling IntegrationsApi->namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **integration_id** | **String**| id of an integration | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
 **asset_id** | **String**| id of an asset | 
 **lti_message_type** | **String**| LTI launch data message type, must be &#39;basic-lti-launch-request&#39; | 
 **lti_version** | **String**| LTI launch version, must be &#39;LTI-1p0&#39; | 
 **resource_link_id** | **String**| LTI resource_link_id parameters | 
 **oauth_consumer_key** | **String**| OAuth 1.0 consumer_key parameters | [optional] 
 **oauth_consumer_key2** | **String**| OAuth 1.0 consumer_key parameters | [optional] 
 **oauth_signature_method** | **String**| OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39; | [optional] 
 **oauth_signature_method2** | **String**| OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39; | [optional] 
 **oauth_timestamp** | **Integer**| OAuth 1.0 timestamp of request | [optional] 
 **oauth_timestamp2** | **Integer**| OAuth 1.0 timestamp of request | [optional] 
 **oauth_version** | **Float**| OAuth 1.0 version, must be &#39;1.0&#39; | [optional] 
 **oauth_version2** | **Float**| OAuth 1.0 version, must be &#39;1.0&#39; | [optional] 
 **oauth_nonce** | **String**| OAuth 1.0 Nonce | [optional] 
 **oauth_nonce2** | **String**| OAuth 1.0 Nonce | [optional] 
 **oauth_signature** | **String**| OAuth 1.0 request signature | [optional] 
 **oauth_signature2** | **String**| OAuth 1.0 request signature | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html



# **replace_integration**
> IntegrationBody replace_integration(namespace, integration_id, integration_typebody)



Replace an integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::IntegrationsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

integration_id = "integration_id_example" # String | id of an integration

integration_type = "integration_type_example" # String | Type of external integration, e.g. 'lti1'

body = BlueprintClient::IntegrationBody.new # IntegrationBody | integration


begin
  result = api_instance.replace_integration(namespace, integration_id, integration_typebody)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling IntegrationsApi->replace_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **integration_id** | **String**| id of an integration | 
 **integration_type** | **String**| Type of external integration, e.g. &#39;lti1&#39; | 
 **body** | [**IntegrationBody**](IntegrationBody.md)| integration | 

### Return type

[**IntegrationBody**](IntegrationBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



