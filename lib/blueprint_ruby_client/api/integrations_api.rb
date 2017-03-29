=begin
Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module BlueprintClient
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Add an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param body integration
    # @param [Hash] opts the optional parameters
    # @return [IntegrationBody]
    def add_integration(namespace, body, opts = {})
      data, _status_code, _headers = add_integration_with_http_info(namespace, body, opts)
      return data
    end

    # 
    # Add an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param body integration
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationBody, Fixnum, Hash)>] IntegrationBody data, response status code and response headers
    def add_integration_with_http_info(namespace, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsApi.add_integration ..."
      end
      
      
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling IntegrationsApi.add_integration" if namespace.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling IntegrationsApi.add_integration" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/{namespace}/integrations".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#add_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration(namespace, integration_id, integration_type, opts = {})
      delete_integration_with_http_info(namespace, integration_id, integration_type, opts)
      return nil
    end

    # 
    # Delete an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_with_http_info(namespace, integration_id, integration_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsApi.delete_integration ..."
      end
      
      
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling IntegrationsApi.delete_integration" if namespace.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.delete_integration" if integration_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_type' is set
      fail ArgumentError, "Missing the required parameter 'integration_type' when calling IntegrationsApi.delete_integration" if integration_type.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/{namespace}/integrations/{integrationType}/{integrationId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s).sub('{' + 'integrationType' + '}', integration_type.to_s)

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
        @api_client.config.logger.debug "API called: IntegrationsApi#delete_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get details of a given integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param integration_id id of an integration
    # @param [Hash] opts the optional parameters
    # @return [IntegrationBody]
    def get_integration(namespace, integration_type, integration_id, opts = {})
      data, _status_code, _headers = get_integration_with_http_info(namespace, integration_type, integration_id, opts)
      return data
    end

    # 
    # Get details of a given integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param integration_id id of an integration
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationBody, Fixnum, Hash)>] IntegrationBody data, response status code and response headers
    def get_integration_with_http_info(namespace, integration_type, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsApi.get_integration ..."
      end
      
      
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling IntegrationsApi.get_integration" if namespace.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_type' is set
      fail ArgumentError, "Missing the required parameter 'integration_type' when calling IntegrationsApi.get_integration" if integration_type.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.get_integration" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/{namespace}/integrations/{integrationType}/{integrationId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'integrationType' + '}', integration_type.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'IntegrationBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # LTI launch url for integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param lti_message_type LTI launch data message type, must be &#39;basic-lti-launch-request&#39;
    # @param lti_version LTI launch version, must be &#39;LTI-1p0&#39;
    # @param resource_link_id LTI resource_link_id parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :oauth_consumer_key OAuth 1.0 consumer_key parameters
    # @option opts [String] :oauth_consumer_key2 OAuth 1.0 consumer_key parameters
    # @option opts [String] :oauth_signature_method OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39;
    # @option opts [String] :oauth_signature_method2 OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39;
    # @option opts [Integer] :oauth_timestamp OAuth 1.0 timestamp of request
    # @option opts [Integer] :oauth_timestamp2 OAuth 1.0 timestamp of request
    # @option opts [Float] :oauth_version OAuth 1.0 version, must be &#39;1.0&#39;
    # @option opts [Float] :oauth_version2 OAuth 1.0 version, must be &#39;1.0&#39;
    # @option opts [String] :oauth_nonce OAuth 1.0 Nonce
    # @option opts [String] :oauth_nonce2 OAuth 1.0 Nonce
    # @option opts [String] :oauth_signature OAuth 1.0 request signature
    # @option opts [String] :oauth_signature2 OAuth 1.0 request signature
    # @return [nil]
    def namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post(namespace, integration_id, asset_type, asset_id, lti_message_type, lti_version, resource_link_id, opts = {})
      namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post_with_http_info(namespace, integration_id, asset_type, asset_id, lti_message_type, lti_version, resource_link_id, opts)
      return nil
    end

    # 
    # LTI launch url for integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param asset_type subtype of Asset, e.g. &#39;textbooks&#39;, &#39;digitisations&#39;, etc.
    # @param asset_id id of an asset
    # @param lti_message_type LTI launch data message type, must be &#39;basic-lti-launch-request&#39;
    # @param lti_version LTI launch version, must be &#39;LTI-1p0&#39;
    # @param resource_link_id LTI resource_link_id parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :oauth_consumer_key OAuth 1.0 consumer_key parameters
    # @option opts [String] :oauth_consumer_key2 OAuth 1.0 consumer_key parameters
    # @option opts [String] :oauth_signature_method OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39;
    # @option opts [String] :oauth_signature_method2 OAuth 1.0 signature method, must be &#39;HMAC-SHA1&#39;
    # @option opts [Integer] :oauth_timestamp OAuth 1.0 timestamp of request
    # @option opts [Integer] :oauth_timestamp2 OAuth 1.0 timestamp of request
    # @option opts [Float] :oauth_version OAuth 1.0 version, must be &#39;1.0&#39;
    # @option opts [Float] :oauth_version2 OAuth 1.0 version, must be &#39;1.0&#39;
    # @option opts [String] :oauth_nonce OAuth 1.0 Nonce
    # @option opts [String] :oauth_nonce2 OAuth 1.0 Nonce
    # @option opts [String] :oauth_signature OAuth 1.0 request signature
    # @option opts [String] :oauth_signature2 OAuth 1.0 request signature
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post_with_http_info(namespace, integration_id, asset_type, asset_id, lti_message_type, lti_version, resource_link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post ..."
      end
      
      
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if namespace.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if integration_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if asset_type.nil?
      
      
      
      
      
      
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if asset_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'lti_message_type' is set
      fail ArgumentError, "Missing the required parameter 'lti_message_type' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if lti_message_type.nil?
      
      # verify enum value
      unless ['basic-lti-launch-request'].include?(lti_message_type)
        fail ArgumentError, "invalid value for 'lti_message_type', must be one of basic-lti-launch-request"
      end
      
      
      
      
      
      
      # verify the required parameter 'lti_version' is set
      fail ArgumentError, "Missing the required parameter 'lti_version' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if lti_version.nil?
      
      # verify enum value
      unless ['LTI-1p0'].include?(lti_version)
        fail ArgumentError, "invalid value for 'lti_version', must be one of LTI-1p0"
      end
      
      
      
      
      
      
      # verify the required parameter 'resource_link_id' is set
      fail ArgumentError, "Missing the required parameter 'resource_link_id' when calling IntegrationsApi.namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post" if resource_link_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if opts[:'oauth_signature_method'] && !['HMAC-SHA1'].include?(opts[:'oauth_signature_method'])
        fail ArgumentError, 'invalid value for "oauth_signature_method", must be one of HMAC-SHA1'
      end
      
      
      
      
      
      
      
      if opts[:'oauth_signature_method2'] && !['HMAC-SHA1'].include?(opts[:'oauth_signature_method2'])
        fail ArgumentError, 'invalid value for "oauth_signature_method2", must be one of HMAC-SHA1'
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/{namespace}/integrations/lti1/{integrationId}/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s).sub('{' + 'assetId' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'oauth_consumer_key'] = opts[:'oauth_consumer_key2'] if opts[:'oauth_consumer_key2']
      header_params[:'oauth_signature_method'] = opts[:'oauth_signature_method2'] if opts[:'oauth_signature_method2']
      header_params[:'oauth_timestamp'] = opts[:'oauth_timestamp2'] if opts[:'oauth_timestamp2']
      header_params[:'oauth_version'] = opts[:'oauth_version2'] if opts[:'oauth_version2']
      header_params[:'oauth_nonce'] = opts[:'oauth_nonce2'] if opts[:'oauth_nonce2']
      header_params[:'oauth_signature'] = opts[:'oauth_signature2'] if opts[:'oauth_signature2']

      # form parameters
      form_params = {}
      form_params["lti_message_type"] = lti_message_type
      form_params["lti_version"] = lti_version
      form_params["resource_link_id"] = resource_link_id
      form_params["oauth_consumer_key"] = opts[:'oauth_consumer_key'] if opts[:'oauth_consumer_key']
      form_params["oauth_signature_method"] = opts[:'oauth_signature_method'] if opts[:'oauth_signature_method']
      form_params["oauth_timestamp"] = opts[:'oauth_timestamp'] if opts[:'oauth_timestamp']
      form_params["oauth_version"] = opts[:'oauth_version'] if opts[:'oauth_version']
      form_params["oauth_nonce"] = opts[:'oauth_nonce'] if opts[:'oauth_nonce']
      form_params["oauth_signature"] = opts[:'oauth_signature'] if opts[:'oauth_signature']

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param body integration
    # @param [Hash] opts the optional parameters
    # @return [IntegrationBody]
    def replace_integration(namespace, integration_id, integration_type, body, opts = {})
      data, _status_code, _headers = replace_integration_with_http_info(namespace, integration_id, integration_type, body, opts)
      return data
    end

    # 
    # Replace an integration
    # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
    # @param integration_id id of an integration
    # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
    # @param body integration
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationBody, Fixnum, Hash)>] IntegrationBody data, response status code and response headers
    def replace_integration_with_http_info(namespace, integration_id, integration_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsApi.replace_integration ..."
      end
      
      
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling IntegrationsApi.replace_integration" if namespace.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.replace_integration" if integration_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'integration_type' is set
      fail ArgumentError, "Missing the required parameter 'integration_type' when calling IntegrationsApi.replace_integration" if integration_type.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling IntegrationsApi.replace_integration" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/{namespace}/integrations/{integrationType}/{integrationId}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s).sub('{' + 'integrationType' + '}', integration_type.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#replace_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
