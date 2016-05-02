# BlueprintClient::AssetsApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_asset_to_node**](AssetsApi.md#add_asset_to_node) | **PUT** /{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId} | 
[**delete_asset**](AssetsApi.md#delete_asset) | **DELETE** /{namespace}/assets/{assetType}/{assetId} | 
[**get_asset**](AssetsApi.md#get_asset) | **GET** /{namespace}/assets/{assetType}/{assetId} | 
[**get_assets_in_node**](AssetsApi.md#get_assets_in_node) | **GET** /{namespace}/nodes/{type}/{id}/assets | 
[**remove_asset_from_node**](AssetsApi.md#remove_asset_from_node) | **DELETE** /{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId} | 
[**replace_asset**](AssetsApi.md#replace_asset) | **PUT** /{namespace}/assets/{assetType}/{assetId} | Replaces the Asset with the data sent in the body


# **add_asset_to_node**
> AssetBody add_asset_to_node(namespace, typeid, asset_type, asset_id)



Add an asset to the node.  Body must be empty.  Will upsert the asset if it doesn't exist

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | Plural form of node type (adds an 's' to the end of the type) todo - allow configuration of plurals

id = "id_example" # String | id identifying a domain model

asset_type = "asset_type_example" # String | Plural form of asset type (adds an 's' to the end of the type) todo - allow configuration of plurals

asset_id = "asset_id_example" # String | id of an asset


begin
  result = api_instance.add_asset_to_node(namespace, typeid, asset_type, asset_id)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->add_asset_to_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **id** | **String**| id identifying a domain model | 
 **asset_type** | **String**| Plural form of asset type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **asset_id** | **String**| id of an asset | 

### Return type

[**AssetBody**](AssetBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **delete_asset**
> delete_asset(namespace, asset_idasset_type, )



Delete an Asset

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_id = "asset_id_example" # String | id of an asset

asset_type = "asset_type_example" # String | Plural form of asset type (adds an 's' to the end of the type) todo - allow configuration of plurals


begin
  api_instance.delete_asset(namespace, asset_idasset_type, )
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->delete_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_id** | **String**| id of an asset | 
 **asset_type** | **String**| Plural form of asset type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_asset**
> AssetBody get_asset(namespace, asset_type, asset_id)



Get details of a given asset

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_type = "asset_type_example" # String | Plural form of asset type (adds an 's' to the end of the type) todo - allow configuration of plurals

asset_id = "asset_id_example" # String | id of an asset


begin
  #
  result = api_instance.get_asset(namespace, asset_type, asset_id)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->get_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_type** | **String**| Plural form of asset type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **asset_id** | **String**| id of an asset | 

### Return type

[**AssetBody**](AssetBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_assets_in_node**
> AssetResultSet get_assets_in_node(namespace, typeid, , opts)



Get for assets in the relevant node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | Plural form of node type (adds an 's' to the end of the type) todo - allow configuration of plurals

id = "id_example" # String | id identifying a domain model

opts = { 
  filter_asset_type: "filter_asset_type_example", # String | type of asset to return
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
}

begin
  result = api_instance.get_assets_in_node(namespace, typeid, , opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->get_assets_in_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **id** | **String**| id identifying a domain model | 
 **filter_asset_type** | **String**| type of asset to return | [optional] 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **remove_asset_from_node**
> remove_asset_from_node(namespace, typeid, asset_type, asset_id)



Remove an asset from the relevant node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | Plural form of node type (adds an 's' to the end of the type) todo - allow configuration of plurals

id = "id_example" # String | id identifying a domain model

asset_type = "asset_type_example" # String | Plural form of asset type (adds an 's' to the end of the type) todo - allow configuration of plurals

asset_id = "asset_id_example" # String | id of an asset


begin
  api_instance.remove_asset_from_node(namespace, typeid, asset_type, asset_id)
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->remove_asset_from_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **id** | **String**| id identifying a domain model | 
 **asset_type** | **String**| Plural form of asset type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 
 **asset_id** | **String**| id of an asset | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **replace_asset**
> AssetBody replace_asset(namespace, asset_idasset_type, )

Replaces the Asset with the data sent in the body

Wholesale replacement of Asset data: if you were to PUT to:\n  /1/{namespace}/assets/sometype/someid\n\nwith a body of:\n  { type: \"someothertype\", id: \"someotherid\" }\n\nIt would change the Asset's path to:\n  /1/{namespace}/assets/someothertype/someotherid\n\nand\n  /1/{namespace}/assets/sometype/someid\nwould return a 404.\nIt would also update the assets associated with any node.\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::AssetsApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

asset_id = "asset_id_example" # String | id of an asset

asset_type = "asset_type_example" # String | Plural form of asset type (adds an 's' to the end of the type) todo - allow configuration of plurals


begin
  #Replaces the Asset with the data sent in the body
  result = api_instance.replace_asset(namespace, asset_idasset_type, )
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->replace_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **asset_id** | **String**| id of an asset | 
 **asset_type** | **String**| Plural form of asset type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals | 

### Return type

[**AssetBody**](AssetBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



