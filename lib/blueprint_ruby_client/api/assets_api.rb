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

require "uri"

module BlueprintClient
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Add an asset to the node.  Body must be empty.  Will upsert the asset if it doesn't exist
    # @param namespace identifier namespacing the blueprint.
    # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
    # @param id id identifying a domain model
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [AssetBody]
    def add_asset_to_node(namespace, type, id, asset_type, asset_id, opts = {})
      data, _status_code, _headers = add_asset_to_node_with_http_info(namespace, type, id, asset_type, asset_id, opts)
      return data
    end

    # 
    # Add an asset to the node.  Body must be empty.  Will upsert the asset if it doesn&#39;t exist
    # @param namespace identifier namespacing the blueprint.
    # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
    # @param id id identifying a domain model
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetBody, Fixnum, Hash)>] AssetBody data, response status code and response headers
    def add_asset_to_node_with_http_info(namespace, type, id, asset_type, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.add_asset_to_node ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.add_asset_to_node" if namespace.nil?
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling AssetsApi.add_asset_to_node" if type.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AssetsApi.add_asset_to_node" if id.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetsApi.add_asset_to_node" if asset_type.nil?
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.add_asset_to_node" if asset_id.nil?
      # resource path
      local_var_path = "/{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'id' + '}', id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s).sub('{' + 'assetId' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#add_asset_to_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete an Asset
    # @param namespace identifier namespacing the blueprint.
    # @param asset_id id of an asset
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_asset(namespace, asset_id, asset_type, opts = {})
      delete_asset_with_http_info(namespace, asset_id, asset_type, opts)
      return nil
    end

    # 
    # Delete an Asset
    # @param namespace identifier namespacing the blueprint.
    # @param asset_id id of an asset
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_asset_with_http_info(namespace, asset_id, asset_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.delete_asset ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.delete_asset" if namespace.nil?
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.delete_asset" if asset_id.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetsApi.delete_asset" if asset_type.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetId' + '}', asset_id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#delete_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get details of a given asset
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [AssetBody]
    def get_asset(namespace, asset_type, asset_id, opts = {})
      data, _status_code, _headers = get_asset_with_http_info(namespace, asset_type, asset_id, opts)
      return data
    end

    # 
    # Get details of a given asset
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetBody, Fixnum, Hash)>] AssetBody data, response status code and response headers
    def get_asset_with_http_info(namespace, asset_type, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.get_asset ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.get_asset" if namespace.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetsApi.get_asset" if asset_type.nil?
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset" if asset_id.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetType' + '}', asset_type.to_s).sub('{' + 'assetId' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def get_assets_in_node(namespace, type, id, opts = {})
      data, _status_code, _headers = get_assets_in_node_with_http_info(namespace, type, id, opts)
      return data
    end

    # 
    # Get for assets in the relevant node
    # @param namespace identifier namespacing the blueprint.
    # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
    # @param id id identifying a domain model
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_asset_type type of asset to return
    # @option opts [Float] :offset index to start result set from
    # @option opts [Float] :limit number of records to return
    # @return [Array<(AssetResultSet, Fixnum, Hash)>] AssetResultSet data, response status code and response headers
    def get_assets_in_node_with_http_info(namespace, type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.get_assets_in_node ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.get_assets_in_node" if namespace.nil?
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling AssetsApi.get_assets_in_node" if type.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AssetsApi.get_assets_in_node" if id.nil?
      # resource path
      local_var_path = "/{namespace}/nodes/{type}/{id}/assets".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter[assetType]'] = @api_client.build_collection_param(opts[:'filter_asset_type'], :csv) if !opts[:'filter_asset_type'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_assets_in_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Remove an asset from the relevant node
    # @param namespace identifier namespacing the blueprint.
    # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
    # @param id id identifying a domain model
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_asset_from_node(namespace, type, id, asset_type, asset_id, opts = {})
      remove_asset_from_node_with_http_info(namespace, type, id, asset_type, asset_id, opts)
      return nil
    end

    # 
    # Remove an asset from the relevant node
    # @param namespace identifier namespacing the blueprint.
    # @param type subtype of Node, e.g. &#39;modules&#39;, &#39;departments&#39;, etc.
    # @param id id identifying a domain model
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_asset_from_node_with_http_info(namespace, type, id, asset_type, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.remove_asset_from_node ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.remove_asset_from_node" if namespace.nil?
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling AssetsApi.remove_asset_from_node" if type.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AssetsApi.remove_asset_from_node" if id.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetsApi.remove_asset_from_node" if asset_type.nil?
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.remove_asset_from_node" if asset_id.nil?
      # resource path
      local_var_path = "/{namespace}/nodes/{type}/{id}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'id' + '}', id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s).sub('{' + 'assetId' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#remove_asset_from_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replaces the Asset with the data sent in the body
    # Wholesale replacement of Asset data: if you were to PUT to:   /1/{namespace}/assets/sometype/someid  with a body of:   { type: \"someothertype\", id: \"someotherid\" }  It would change the Asset's path to:   /1/{namespace}/assets/someothertype/someotherid  and   /1/{namespace}/assets/sometype/someid would return a 404. It would also update the assets associated with any node. 
    # @param namespace identifier namespacing the blueprint.
    # @param asset_id id of an asset
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @option opts [AssetBody] :body asset
    # @return [AssetBody]
    def replace_asset(namespace, asset_id, asset_type, opts = {})
      data, _status_code, _headers = replace_asset_with_http_info(namespace, asset_id, asset_type, opts)
      return data
    end

    # Replaces the Asset with the data sent in the body
    # Wholesale replacement of Asset data: if you were to PUT to:   /1/{namespace}/assets/sometype/someid  with a body of:   { type: \&quot;someothertype\&quot;, id: \&quot;someotherid\&quot; }  It would change the Asset&#39;s path to:   /1/{namespace}/assets/someothertype/someotherid  and   /1/{namespace}/assets/sometype/someid would return a 404. It would also update the assets associated with any node. 
    # @param namespace identifier namespacing the blueprint.
    # @param asset_id id of an asset
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @option opts [AssetBody] :body asset
    # @return [Array<(AssetBody, Fixnum, Hash)>] AssetBody data, response status code and response headers
    def replace_asset_with_http_info(namespace, asset_id, asset_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetsApi.replace_asset ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetsApi.replace_asset" if namespace.nil?
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.replace_asset" if asset_id.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetsApi.replace_asset" if asset_type.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetId' + '}', asset_id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#replace_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
