=begin
Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module BlueprintClient
  class AssetTypeTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Configure a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param template_body template body
    # @param [Hash] opts the optional parameters
    # @return [TemplateBody]
    def add(namespace, asset_type, template_body, opts = {})
      data, _status_code, _headers = add_with_http_info(namespace, asset_type, template_body, opts)
      return data
    end

    # 
    # Configure a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param template_body template body
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateBody, Fixnum, Hash)>] TemplateBody data, response status code and response headers
    def add_with_http_info(namespace, asset_type, template_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetTypeTemplatesApi.add ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetTypeTemplatesApi.add" if namespace.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetTypeTemplatesApi.add" if asset_type.nil?
      # verify the required parameter 'template_body' is set
      fail ArgumentError, "Missing the required parameter 'template_body' when calling AssetTypeTemplatesApi.add" if template_body.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/templates".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

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
      post_body = @api_client.object_to_http_body(template_body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetTypeTemplatesApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @return [TemplateBody]
    def delete(namespace, asset_type, opts = {})
      data, _status_code, _headers = delete_with_http_info(namespace, asset_type, opts)
      return data
    end

    # 
    # Delete a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateBody, Fixnum, Hash)>] TemplateBody data, response status code and response headers
    def delete_with_http_info(namespace, asset_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetTypeTemplatesApi.delete ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetTypeTemplatesApi.delete" if namespace.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetTypeTemplatesApi.delete" if asset_type.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/templates".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

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
        :auth_names => auth_names,
        :return_type => 'TemplateBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetTypeTemplatesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # update a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param template_body template body
    # @param [Hash] opts the optional parameters
    # @return [TemplateBody]
    def put(namespace, asset_type, template_body, opts = {})
      data, _status_code, _headers = put_with_http_info(namespace, asset_type, template_body, opts)
      return data
    end

    # 
    # update a template for a given asset type
    # @param namespace identifier namespacing the blueprint.
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param template_body template body
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateBody, Fixnum, Hash)>] TemplateBody data, response status code and response headers
    def put_with_http_info(namespace, asset_type, template_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AssetTypeTemplatesApi.put ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling AssetTypeTemplatesApi.put" if namespace.nil?
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling AssetTypeTemplatesApi.put" if asset_type.nil?
      # verify the required parameter 'template_body' is set
      fail ArgumentError, "Missing the required parameter 'template_body' when calling AssetTypeTemplatesApi.put" if template_body.nil?
      # resource path
      local_var_path = "/{namespace}/assets/{assetType}/templates".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

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
      post_body = @api_client.object_to_http_body(template_body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetTypeTemplatesApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
