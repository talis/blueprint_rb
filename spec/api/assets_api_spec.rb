=begin
#Talis Blueprint API

#This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for BlueprintClient::AssetsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AssetsApi' do
  before do
    # run before each test
    @instance = BlueprintClient::AssetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssetsApi' do
    it 'should create an instact of AssetsApi' do
      expect(@instance).to be_instance_of(BlueprintClient::AssetsApi)
    end
  end

  # unit tests for add_asset_to_node
  # 
  # Add an asset to the node.  Body must be empty.  Will upsert the asset if it doesn&#39;t exist
  # @param namespace identifier namespacing the blueprint.
  # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
  # @param id id identifying a domain model
  # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
  # @param asset_id id of an asset
  # @param [Hash] opts the optional parameters
  # @return [AssetBody]
  describe 'add_asset_to_node test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_asset
  # 
  # Delete an Asset
  # @param namespace identifier namespacing the blueprint.
  # @param asset_id id of an asset
  # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_asset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_asset
  # 
  # Get details of a given asset
  # @param namespace identifier namespacing the blueprint.
  # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
  # @param asset_id id of an asset
  # @param [Hash] opts the optional parameters
  # @return [AssetBody]
  describe 'get_asset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_assets_in_node
  # 
  # Get for assets in the relevant node
  # @param namespace identifier namespacing the blueprint.
  # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
  # @param id id identifying a domain model
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_asset_type type of asset to return
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @return [AssetResultSet]
  describe 'get_assets_in_node test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_asset_from_node
  # 
  # Remove an asset from the relevant node
  # @param namespace identifier namespacing the blueprint.
  # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
  # @param id id identifying a domain model
  # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
  # @param asset_id id of an asset
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_asset_from_node test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_asset
  # Replaces the Asset with the data sent in the body
  # Wholesale replacement of Asset data: if you were to PUT to:   /1/{namespace}/assets/sometype/someid  with a body of:   { type: \&quot;someothertype\&quot;, id: \&quot;someotherid\&quot; }  It would change the Asset&#39;s path to:   /1/{namespace}/assets/someothertype/someotherid  and   /1/{namespace}/assets/sometype/someid would return a 404. It would also update the assets associated with any node. 
  # @param namespace identifier namespacing the blueprint.
  # @param asset_id id of an asset
  # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
  # @param [Hash] opts the optional parameters
  # @option opts [AssetBody] :body asset
  # @return [AssetBody]
  describe 'replace_asset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
