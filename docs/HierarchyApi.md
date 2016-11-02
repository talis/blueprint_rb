# BlueprintClient::HierarchyApi

All URIs are relative to *http://localhost:10010/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_node**](HierarchyApi.md#add_node) | **POST** /{namespaceIncGlobal}/nodes | 
[**bulk_upload**](HierarchyApi.md#bulk_upload) | **POST** /{namespace}/nodes.csv | 
[**delete_node**](HierarchyApi.md#delete_node) | **DELETE** /{namespace}/nodes/{type}/{id} | 
[**export_hierarchy**](HierarchyApi.md#export_hierarchy) | **GET** /{namespace}/nodes.csv | 
[**get_ancestors**](HierarchyApi.md#get_ancestors) | **GET** /{namespace}/nodes/{type}/{id}/ancestors | Get ancestor nodes
[**get_children**](HierarchyApi.md#get_children) | **GET** /{namespace}/nodes/{type}/{id}/children | Get child nodes
[**get_descendants**](HierarchyApi.md#get_descendants) | **GET** /{namespace}/nodes/{type}/{id}/descendants | Get descendant nodes
[**get_node**](HierarchyApi.md#get_node) | **GET** /{namespace}/nodes/{type}/{id} | 
[**get_parents**](HierarchyApi.md#get_parents) | **GET** /{namespace}/nodes/{type}/{id}/parents | Get parent nodes
[**replace_node**](HierarchyApi.md#replace_node) | **PUT** /{namespace}/nodes/{type}/{id} | 
[**search_nodes**](HierarchyApi.md#search_nodes) | **GET** /{namespaceIncGlobal}/nodes | Search nodes
[**update_node**](HierarchyApi.md#update_node) | **PATCH** /{namespace}/nodes/{type}/{id} | 


# **add_node**
> NodeBody add_node(namespace_inc_global, body, )



Add a node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace_inc_global = "namespace_inc_global_example" # String | identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call.

body = BlueprintClient::NodeBody.new # NodeBody | node


begin
  result = api_instance.add_node(namespace_inc_global, body, )
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->add_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace_inc_global** | **String**| identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call. | 
 **body** | [**NodeBody**](NodeBody.md)| node | 

### Return type

[**NodeBody**](NodeBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **bulk_upload**
> bulk_upload(namespace, )



Send operations to modify nodes in bulk, to be applied/rejected as a single transaction.\nFormat will be:\n\n  OLD NODE TYPE, OLD NODE ID, NEW NODE TYPE, NEW NODE ID, PARENTS, TITLE, DESCRIPTION, DOMAIN IDS, STUDENT NUMBERS\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.


begin
  api_instance.bulk_upload(namespace, )
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->bulk_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: text/plain, application/octet-stream
 - **Accept**: application/vnd.api+json



# **delete_node**
> delete_node(namespace, id, type)



Delete a node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

id = "id_example" # String | id identifying a domain model

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.


begin
  api_instance.delete_node(namespace, id, type)
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->delete_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **id** | **String**| id identifying a domain model | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **export_hierarchy**
> export_hierarchy(namespace, )



Download the blueprint's nodes in CSV format\nFormat will be:\n\n  OLD NODE TYPE, OLD NODE ID, NEW NODE TYPE, NEW NODE ID, PARENTS, TITLE, DESCRIPTION, DOMAIN IDS, STUDENT NUMBERS\n\nOLD NODE TYPE and OLD NODE ID are left intentionally blank to allow direct upload of the output back into the bulk importer\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.


begin
  api_instance.export_hierarchy(namespace, )
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->export_hierarchy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_ancestors**
> NodeResultSet get_ancestors(id, namespace, type, opts)

Get ancestor nodes

A proxy for finding ancestors of a given node, equivalent to\n`/1/abc/nodes?filter[descendant]=department%2Fdep101`\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

id = "id_example" # String | id identifying a domain model

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
}

begin
  #Get ancestor nodes
  result = api_instance.get_ancestors(id, namespace, type, opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->get_ancestors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id identifying a domain model | 
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 

### Return type

[**NodeResultSet**](NodeResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_children**
> NodeResultSet get_children(id, namespace, type, opts)

Get child nodes

A proxy for finding children of a given node, equivalent to\n`/1/abc/nodes?filter[parent]=department%2Fdep101`\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

id = "id_example" # String | id identifying a domain model

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
}

begin
  #Get child nodes
  result = api_instance.get_children(id, namespace, type, opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->get_children: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id identifying a domain model | 
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 

### Return type

[**NodeResultSet**](NodeResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_descendants**
> NodeResultSet get_descendants(id, namespace, type, opts)

Get descendant nodes

A proxy for finding descendants of a given node, equivalent to\n`/1/abc/nodes?filter[ancestor]=department%2Fdep101`\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

id = "id_example" # String | id identifying a domain model

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
}

begin
  #Get descendant nodes
  result = api_instance.get_descendants(id, namespace, type, opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->get_descendants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id identifying a domain model | 
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 

### Return type

[**NodeResultSet**](NodeResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_node**
> NodeBody get_node(namespace, id, type, opts)



Get details of a given node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

id = "id_example" # String | id identifying a domain model

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

opts = { 
  include: ["include_example"] # Array<String> | comma separated list of elements to hydrate. Can include children, parents, and/or assets
}

begin
  #
  result = api_instance.get_node(namespace, id, type, opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->get_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **id** | **String**| id identifying a domain model | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **include** | [**Array&lt;String&gt;**](String.md)| comma separated list of elements to hydrate. Can include children, parents, and/or assets | [optional] 

### Return type

[**NodeBody**](NodeBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_parents**
> NodeResultSet get_parents(id, namespace, type, opts)

Get parent nodes

A proxy for finding parents of a given node, equivalent to\n`/1/abc/nodes?filter[child]=department%2Fdep101`\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

id = "id_example" # String | id identifying a domain model

namespace = "namespace_example" # String | identifier namespacing the blueprint.

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
}

begin
  #Get parent nodes
  result = api_instance.get_parents(id, namespace, type, opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->get_parents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id identifying a domain model | 
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 

### Return type

[**NodeResultSet**](NodeResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **replace_node**
> NodeBody replace_node(namespace, id, body, type)



Replaces the node with the data sent in the body

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

id = "id_example" # String | id identifying a domain model

body = BlueprintClient::NodeBody.new # NodeBody | node

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.


begin
  #
  result = api_instance.replace_node(namespace, id, body, type)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->replace_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **id** | **String**| id identifying a domain model | 
 **body** | [**NodeBody**](NodeBody.md)| node | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 

### Return type

[**NodeBody**](NodeBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **search_nodes**
> NodeResultSet search_nodes(namespace_inc_global, , opts)

Search nodes

This endpoint is a really flexible way to ask questions about the hierarchy. for example:\n\n###### Find all nodes for abc:\n`/1/abc/nodes`\n\n###### Find all modules for abc:\n`/1/abc/nodes?filter[nodeType]=Modules`\n\n###### Find all nodes that are descendants of DEP101:\n`/1/abc/nodes?filter[descendant]=departments%2Fdep101`\n\n###### Find all Departments that are ancestors of ABF203:\n`/1/abc/nodes?filter[descendant]=modules%2Fabf203&filter[nodeType]=Departments` # <= case insensitive\n\n###### Find all nodes with list assets that are descendants of DEP101 for abc:\n`/1/abc/nodes?filter[nodeType]=Modules&filter[ancestor]=departments%2FDEP101&filter[hasAssets]=true&filter[assetType]=Lists`\n\n###### Globally, find all modules that have no list assets\n`/1/global/nodes?filter[nodeType]=Modules&filter[hasAssets]=false&filter[assetType]=Lists`\n\n###### Find all nodes of type modules during 2015 that have no assets. Note a node's valid_from/valid_to just need to overlap from/to to qualify\n`/1/global/nodes?filter[nodeType]=Modules&filter[hasAssets]=false&filter[from]=20150101&filter[to]=20151231`\n

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace_inc_global = "namespace_inc_global_example" # String | identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call.

opts = { 
  offset: 3.4, # Float | index to start result set from
  limit: 3.4 # Float | number of records to return
  include: ["include_example"] # Array<String> | comma separated list of elements to hydrate. Can include children, parents, and/or assets
  filter_node_type: ["filter_node_type_example"], # Array<String> | type of nodes to return
  filter_child: ["filter_child_example"], # Array<String> | limit to nodes with children matching type/code
  filter_parent: ["filter_parent_example"], # Array<String> | limit to nodes with parent matching type/code
  filter_ancestor: ["filter_ancestor_example"], # Array<String> | limit to nodes with ancestor matching type/code
  filter_descendant: ["filter_descendant_example"], # Array<String> | limit to nodes with descendant matching type/code
  filter_has_assets: true, # BOOLEAN | limit to either nodes that have assets (true) nodes that have no assets (false) or omit to consider both nodes with and without assets
  filter_asset_type: ["filter_asset_type_example"], # Array<String> | type of asset to return
  filter_from: Date.parse("2013-10-20"), # Date | limit to results valid after this date, format is  ISO8601 date
  filter_to: Date.parse("2013-10-20"), # Date | limit to results valid before this date, format is  ISO8601
  q_node: "q_node_example", # String | query term(s) to search for nodes.  Allows wildcard searching with '*'
  q_child: "q_child_example", # String | query id/title terms to search for child nodes.  Allows wildcard searching with '*'
  q_parent: "q_parent_example", # String | query id/title terms to search for parent nodes.  Allows wildcard searching with '*'
  q_descendant: "q_descendant_example", # String | query id/title terms to search for descendant nodes.  Allows wildcard searching with '*'
  q_ancestor: "q_ancestor_example" # String | query id/title terms to search for ancestor nodes.  Allows wildcard searching with '*'
}

begin
  #Search nodes
  result = api_instance.search_nodes(namespace_inc_global, , opts)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->search_nodes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace_inc_global** | **String**| identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call. | 
 **offset** | [**Float**](.md)| index to start result set from | [optional] 
 **limit** | [**Float**](.md)| number of records to return | [optional] 
 **include** | [**Array&lt;String&gt;**](String.md)| comma separated list of elements to hydrate. Can include children, parents, and/or assets | [optional] 
 **filter_node_type** | [**Array&lt;String&gt;**](String.md)| type of nodes to return | [optional] 
 **filter_child** | [**Array&lt;String&gt;**](String.md)| limit to nodes with children matching type/code | [optional] 
 **filter_parent** | [**Array&lt;String&gt;**](String.md)| limit to nodes with parent matching type/code | [optional] 
 **filter_ancestor** | [**Array&lt;String&gt;**](String.md)| limit to nodes with ancestor matching type/code | [optional] 
 **filter_descendant** | [**Array&lt;String&gt;**](String.md)| limit to nodes with descendant matching type/code | [optional] 
 **filter_has_assets** | **BOOLEAN**| limit to either nodes that have assets (true) nodes that have no assets (false) or omit to consider both nodes with and without assets | [optional] 
 **filter_asset_type** | [**Array&lt;String&gt;**](String.md)| type of asset to return | [optional] 
 **filter_from** | **Date**| limit to results valid after this date, format is  ISO8601 date | [optional] 
 **filter_to** | **Date**| limit to results valid before this date, format is  ISO8601 | [optional] 
 **q_node** | **String**| query term(s) to search for nodes.  Allows wildcard searching with &#39;*&#39; | [optional] 
 **q_child** | **String**| query id/title terms to search for child nodes.  Allows wildcard searching with &#39;*&#39; | [optional] 
 **q_parent** | **String**| query id/title terms to search for parent nodes.  Allows wildcard searching with &#39;*&#39; | [optional] 
 **q_descendant** | **String**| query id/title terms to search for descendant nodes.  Allows wildcard searching with &#39;*&#39; | [optional] 
 **q_ancestor** | **String**| query id/title terms to search for ancestor nodes.  Allows wildcard searching with &#39;*&#39; | [optional] 

### Return type

[**NodeResultSet**](NodeResultSet.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **update_node**
> NodeBody update_node(namespace, id, body, type)



Perform a partial update of a node

### Example
```ruby
# load the gem
require 'blueprint_ruby_client'
# setup authorization 
BlueprintClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BlueprintClient::HierarchyApi.new

namespace = "namespace_example" # String | identifier namespacing the blueprint.

id = "id_example" # String | id identifying a domain model

body = BlueprintClient::NodeBody.new # NodeBody | node

type = "type_example" # String | subtype of Node, e.g. 'modules', 'departments', etc.


begin
  result = api_instance.update_node(namespace, id, body, type)
  p result
rescue BlueprintClient::ApiError => e
  puts "Exception when calling HierarchyApi->update_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier namespacing the blueprint. | 
 **id** | **String**| id identifying a domain model | 
 **body** | [**NodeBody**](NodeBody.md)| node | 
 **type** | **String**| subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc. | 

### Return type

[**NodeBody**](NodeBody.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



