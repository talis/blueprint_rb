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
[**search_assets**](AssetsApi.md#search_assets) | **GET** /{namespace}/assets | Search assets


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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

id = "id_example" # String | id identifying a domain model

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

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
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **id** | **String**| id identifying a domain model | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

asset_id = "asset_id_example" # String | id of an asset

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.


begin
  api_instance.delete_asset(namespace, asset_idasset_type, )
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->delete_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **asset_id** | **String**| id of an asset | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 

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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

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
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

id = "id_example" # String | id identifying a domain model

opts = { 
  filter_asset_type: ["filter_asset_type_example"], # Array<String> | type of asset to return. Depricated. This filters the results by asset type, but incorrectly only returns the assets of thay type. Use asset.type.2
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
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **id** | **String**| id identifying a domain model | 
 **filter_asset_type** | [**Array&lt;String&gt;**](String.md)| type of asset to return. Depricated. This filters the results by asset type, but incorrectly only returns the assets of thay type. Use asset.type.2 | [optional] 
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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

id = "id_example" # String | id identifying a domain model

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

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
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **id** | **String**| id identifying a domain model | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
 **asset_id** | **String**| id of an asset | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **replace_asset**
> AssetBody replace_asset(namespace, asset_idasset_type, , opts)

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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

asset_id = "asset_id_example" # String | id of an asset

asset_type = "asset_type_example" # String | subtype of Asset, e.g. 'textbooks', 'digitisations', etc.

opts = { 
  body: BlueprintClient::AssetBody.new # AssetBody | asset
}

begin
  #Replaces the Asset with the data sent in the body
  result = api_instance.replace_asset(namespace, asset_idasset_type, , opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->replace_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **asset_id** | **String**| id of an asset | 
 **asset_type** | **String**| subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc. | 
 **body** | [**AssetBody**](AssetBody.md)| asset | [optional] 

### Return type

[**AssetBody**](AssetBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **search_assets**
> AssetResultSet search_assets(namespace, , opts)

Search assets

This endpoint provides a way to get assets as a pageable result set, based (optionally) on filters.\nThe include parameter can only be set to `nodes`\n\n###### Find all assets in namespace abc\n`/1/abc/assets`\n\n###### Find all lists for abc:\n`/1/abc/assets?filter[assetType]=lists`\n\n###### Find all assets that are related to a given node of DEP101:\n`/1/abc/assets?filter[node]=departments%2Fdep101`\n\n###### Find all assets that are related to both node DEP101 and DEP102:\n`/1/abc/assets?filter[node]=departments%2Fdep101&filter[node]=departments%2Fdep102`\n\n###### Find all assets that are related to either node DEP101 and DEP102:\n`/1/abc/assets?filter[node]=departments%2Fdep101,departments%2Fdep102`\n

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

namespace = "namespace_example" # String | identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
  include: ["include_example"] # Array<String> | comma separated list of elements to hydrate. Can include children, parents, nodes, and/or assets
  filter_node: ["filter_node_example"], # Array<String> | limit to assets that are related to a node matching type/code
  filter_asset_type: ["filter_asset_type_example"], # Array<String> | type of asset to return. Depricated. This filters the results by asset type, but incorrectly only returns the assets of thay type. Use asset.type.2
}

begin
  #Search assets
  result = api_instance.search_assets(namespace, , opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling AssetsApi->search_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 
 **include** | [**Array&lt;String&gt;**](String.md)| comma separated list of elements to hydrate. Can include children, parents, nodes, and/or assets | [optional] 
 **filter_node** | [**Array&lt;String&gt;**](String.md)| limit to assets that are related to a node matching type/code | [optional] 
 **filter_asset_type** | [**Array&lt;String&gt;**](String.md)| type of asset to return. Depricated. This filters the results by asset type, but incorrectly only returns the assets of thay type. Use asset.type.2 | [optional] 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



