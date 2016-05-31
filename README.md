# blueprint_ruby_client

BlueprintClient - the Ruby gem for the Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 0.3.0
- Build date: 2016-05-31T15:05:29.982-04:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Generating the code

To update the gem code to the latest API specification:

```shell
sh generate.sh
```

Customise the code generation by modifying the template files.

### Build a gem

To build the Ruby code into a gem:

```shell
gem build blueprint_ruby_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./blueprint_ruby_client-0.3.0.gem
```
(for development, run `gem install --dev ./blueprint_ruby_client-0.3.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'blueprint_ruby_client', '~> 0.3.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/talis/blueprint_rb, then add the following in the Gemfile:

    gem 'blueprint_ruby_client', :git => 'https://github.com/talis/blueprint_rb.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'blueprint_ruby_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *http://localhost:10010/1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlueprintClient::AssetsApi* | [**add_asset_to_node**](docs/AssetsApi.md#add_asset_to_node) | **PUT** /{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId} | 
*BlueprintClient::AssetsApi* | [**delete_asset**](docs/AssetsApi.md#delete_asset) | **DELETE** /{namespace}/assets/{assetType}/{assetId} | 
*BlueprintClient::AssetsApi* | [**get_asset**](docs/AssetsApi.md#get_asset) | **GET** /{namespace}/assets/{assetType}/{assetId} | 
*BlueprintClient::AssetsApi* | [**get_assets_in_node**](docs/AssetsApi.md#get_assets_in_node) | **GET** /{namespace}/nodes/{type}/{id}/assets | 
*BlueprintClient::AssetsApi* | [**remove_asset_from_node**](docs/AssetsApi.md#remove_asset_from_node) | **DELETE** /{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId} | 
*BlueprintClient::AssetsApi* | [**replace_asset**](docs/AssetsApi.md#replace_asset) | **PUT** /{namespace}/assets/{assetType}/{assetId} | Replaces the Asset with the data sent in the body
*BlueprintClient::HierarchyApi* | [**add_node**](docs/HierarchyApi.md#add_node) | **POST** /{namespaceIncGlobal}/nodes | 
*BlueprintClient::HierarchyApi* | [**bulk_upload**](docs/HierarchyApi.md#bulk_upload) | **POST** /{namespace}/nodes.csv | 
*BlueprintClient::HierarchyApi* | [**delete_node**](docs/HierarchyApi.md#delete_node) | **DELETE** /{namespace}/nodes/{type}/{id} | 
*BlueprintClient::HierarchyApi* | [**export_hierarchy**](docs/HierarchyApi.md#export_hierarchy) | **GET** /{namespace}/nodes.csv | 
*BlueprintClient::HierarchyApi* | [**get_ancestors**](docs/HierarchyApi.md#get_ancestors) | **GET** /{namespace}/nodes/{type}/{id}/ancestors | Get ancestor nodes
*BlueprintClient::HierarchyApi* | [**get_children**](docs/HierarchyApi.md#get_children) | **GET** /{namespace}/nodes/{type}/{id}/children | Get child nodes
*BlueprintClient::HierarchyApi* | [**get_descendants**](docs/HierarchyApi.md#get_descendants) | **GET** /{namespace}/nodes/{type}/{id}/descendants | Get descendant nodes
*BlueprintClient::HierarchyApi* | [**get_node**](docs/HierarchyApi.md#get_node) | **GET** /{namespace}/nodes/{type}/{id} | 
*BlueprintClient::HierarchyApi* | [**get_parents**](docs/HierarchyApi.md#get_parents) | **GET** /{namespace}/nodes/{type}/{id}/parents | Get parent nodes
*BlueprintClient::HierarchyApi* | [**replace_node**](docs/HierarchyApi.md#replace_node) | **PUT** /{namespace}/nodes/{type}/{id} | 
*BlueprintClient::HierarchyApi* | [**search_nodes**](docs/HierarchyApi.md#search_nodes) | **GET** /{namespaceIncGlobal}/nodes | Search nodes
*BlueprintClient::HierarchyApi* | [**update_node**](docs/HierarchyApi.md#update_node) | **PATCH** /{namespace}/nodes/{type}/{id} | 


## Documentation for Models

 - [BlueprintClient::Asset](docs/Asset.md)
 - [BlueprintClient::AssetAttributes](docs/AssetAttributes.md)
 - [BlueprintClient::AssetBody](docs/AssetBody.md)
 - [BlueprintClient::AssetRelationship](docs/AssetRelationship.md)
 - [BlueprintClient::AssetResultSet](docs/AssetResultSet.md)
 - [BlueprintClient::Error](docs/Error.md)
 - [BlueprintClient::Errors](docs/Errors.md)
 - [BlueprintClient::Links](docs/Links.md)
 - [BlueprintClient::Meta](docs/Meta.md)
 - [BlueprintClient::MixedResourceResultSet](docs/MixedResourceResultSet.md)
 - [BlueprintClient::Namespace](docs/Namespace.md)
 - [BlueprintClient::NamespaceRelationship](docs/NamespaceRelationship.md)
 - [BlueprintClient::Node](docs/Node.md)
 - [BlueprintClient::NodeAttributes](docs/NodeAttributes.md)
 - [BlueprintClient::NodeBody](docs/NodeBody.md)
 - [BlueprintClient::NodeRelationship](docs/NodeRelationship.md)
 - [BlueprintClient::NodeRelationships](docs/NodeRelationships.md)
 - [BlueprintClient::NodeResultSet](docs/NodeResultSet.md)
 - [BlueprintClient::Resource](docs/Resource.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - su: Talis super user
  - su@{namespace}: Super user for a specific blueprint

