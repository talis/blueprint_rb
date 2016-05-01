=begin
Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for BlueprintClient::HierarchyApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HierarchyApi' do
  before do
    # run before each test
    @instance = BlueprintClient::HierarchyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HierarchyApi' do
    it 'should create an instact of HierarchyApi' do
      @instance.should be_a(BlueprintClient::HierarchyApi)
    end
  end

  # unit tests for add_node
  # 
  # Add a node
  # @param namespace_inc_global identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call.
  # @param body node
  # @param [Hash] opts the optional parameters
  # @return [NodeBody]
  describe 'add_node test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for bulk_upload
  # 
  # Send operations to modify nodes in bulk, to be applied/rejected as a single transaction.\nFormat will be:\n\n  OLD NODE TYPE, OLD NODE ID, NEW NODE TYPE, NEW NODE ID, PARENTS, TITLE, DESCRIPTION, DOMAIN IDS, STUDENT NUMBERS\n
  # @param namespace identifier namespacing the blueprint.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'bulk_upload test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for delete_node
  # 
  # Delete a node
  # @param namespace identifier namespacing the blueprint.
  # @param id id identifying a domain model
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_node test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for export_hierarchy
  # 
  # Download the blueprint&#39;s nodes in CSV format\nFormat will be:\n\n  OLD NODE TYPE, OLD NODE ID, NEW NODE TYPE, NEW NODE ID, PARENTS, TITLE, DESCRIPTION, DOMAIN IDS, STUDENT NUMBERS\n\nOLD NODE TYPE and OLD NODE ID are left intentionally blank to allow direct upload of the output back into the bulk importer\n
  # @param namespace identifier namespacing the blueprint.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'export_hierarchy test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_ancestors
  # Get ancestor nodes
  # A proxy for finding ancestors of a given node, equivalent to\n`/1/abc/nodes?filter[descendant]=department%2Fdep101`\n
  # @param id id identifying a domain model
  # @param namespace identifier namespacing the blueprint.
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @return [NodeResultSet]
  describe 'get_ancestors test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_children
  # Get child nodes
  # A proxy for finding children of a given node, equivalent to\n`/1/abc/nodes?filter[parent]=department%2Fdep101`\n
  # @param id id identifying a domain model
  # @param namespace identifier namespacing the blueprint.
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @return [NodeResultSet]
  describe 'get_children test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_descendants
  # Get descendant nodes
  # A proxy for finding descendants of a given node, equivalent to\n`/1/abc/nodes?filter[ancestor]=department%2Fdep101`\n
  # @param id id identifying a domain model
  # @param namespace identifier namespacing the blueprint.
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @return [NodeResultSet]
  describe 'get_descendants test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_node
  # 
  # Get details of a given node
  # @param namespace identifier namespacing the blueprint.
  # @param id id identifying a domain model
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @option opts [String] :includes comma separated list of elements to hydrate. Can include children, ancestors or both
  # @return [NodeBody]
  describe 'get_node test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_parents
  # Get parent nodes
  # A proxy for finding parents of a given node, equivalent to\n`/1/abc/nodes?filter[child]=department%2Fdep101`\n
  # @param id id identifying a domain model
  # @param namespace identifier namespacing the blueprint.
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @return [NodeResultSet]
  describe 'get_parents test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for replace_node
  # 
  # Replaces the node with the data sent in the body
  # @param namespace identifier namespacing the blueprint.
  # @param id id identifying a domain model
  # @param body node
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @return [NodeBody]
  describe 'replace_node test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for search_nodes
  # Search nodes
  # This endpoint is a really flexible way to ask questions about the hierarchy. for example:\n\n###### Find all nodes for abc:\n`/1/abc/nodes`\n\n###### Find all modules for abc:\n`/1/abc/nodes?filter[nodeType]=Module`\n\n###### Find all nodes that are descendants of DEP101:\n`/1/abc/nodes?filter[descendant]=department%2Fdep101`\n\n###### Find all Departments that are ancestors of ABF203:\n`/1/abc/nodes?filter[descendant]=module%2Fabf203&amp;filter[nodeType]=Department` # &lt;= case insensitive\n\n###### Find all nodes with list assets that are descendants of DEP101 for abc:\n`/1/abc/nodes?filter[nodeType]=Module&amp;filter[ancestor]=department%2FDEP101&amp;filter[hasAssets]=true&amp;filter[assetType]=List`\n\n###### Globally, find all modules that have no list assets\n`/1/global/nodes?filter[nodeType]=Module&amp;filter[hasAssets]=false&amp;filter[assetType]=List`\n\n###### Find all nodes of type time period valid during 2015 that have no list assets. Note a node&#39;s valid_from/valid_to just need to overlap from/to to qualify\n`/1/global/nodes?filter[nodeType]=TimePeriod&amp;filter[hasAssets]=false&amp;filter[assetType]=List&amp;filter[from]=20150101&amp;filter[to]=20151231`\n
  # @param namespace_inc_global identifier namespacing the blueprint. `global` is a special namespace which references data from all blueprints in the call.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :offset index to start result set from
  # @option opts [Float] :limit number of records to return
  # @option opts [String] :filter_node_type type of nodes to return
  # @option opts [String] :filter_child limit to nodes with children matching code
  # @option opts [String] :filter_parent limit to nodes with parent matching code
  # @option opts [String] :filter_ancestor limit to nodes with ancestor matching code
  # @option opts [String] :filter_descendant limit to nodes with descendant matching code
  # @option opts [BOOLEAN] :filter_has_assets limit to either nodes that have assets (true) nodes that have no assets (false) or omit to consider both nodes with and without assets
  # @option opts [String] :filter_asset_type type of asset to return
  # @option opts [Date] :filter_from limit to results valid after this date, format is  ISO8601 date
  # @option opts [Date] :filter_to limit to results valid before this date, format is  ISO8601
  # @return [NodeResultSet]
  describe 'search_nodes test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for update_node
  # 
  # Perform a partial update of a node
  # @param namespace identifier namespacing the blueprint.
  # @param id id identifying a domain model
  # @param body node
  # @param type Plural form of node type (adds an &#39;s&#39; to the end of the type) todo - allow configuration of plurals
  # @param [Hash] opts the optional parameters
  # @return [NodeBody]
  describe 'update_node test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
