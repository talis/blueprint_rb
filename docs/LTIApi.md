# BlueprintClient::LTIApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post**](LTIApi.md#namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post) | **POST** /{namespace}/integrations/lti1/{integrationId}/assets/{assetType}/{assetId} | 


# **namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post**
> namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post(namespace, integration_id, asset_type, asset_idlti_message_type, lti_version, resource_link_id, opts)



LTI launch url for integration

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'

api_instance = BlueprintClient::LTIApi.new

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
  puts "Exception when calling LTIApi->namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post: #{e}"
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
 **oauth_timestamp** | [**Integer**](.md)| OAuth 1.0 timestamp of request | [optional] 
 **oauth_timestamp2** | [**Integer**](.md)| OAuth 1.0 timestamp of request | [optional] 
 **oauth_version** | [**Float**](.md)| OAuth 1.0 version, must be &#39;1.0&#39; | [optional] 
 **oauth_version2** | [**Float**](.md)| OAuth 1.0 version, must be &#39;1.0&#39; | [optional] 
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



