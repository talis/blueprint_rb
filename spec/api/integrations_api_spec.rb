=begin
Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for BlueprintClient::IntegrationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IntegrationsApi' do
  before do
    # run before each test
    @instance = BlueprintClient::IntegrationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationsApi' do
    it 'should create an instact of IntegrationsApi' do
      @instance.should be_a(BlueprintClient::IntegrationsApi)
    end
  end

  # unit tests for add_integration
  # 
  # Add an integration
  # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
  # @param body integration
  # @param [Hash] opts the optional parameters
  # @return [IntegrationBody]
  describe 'add_integration test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for delete_integration
  # 
  # Delete an integration
  # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
  # @param integration_id id of an integration
  # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_integration test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_integration
  # 
  # Get details of a given integration
  # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
  # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
  # @param integration_id id of an integration
  # @param [Hash] opts the optional parameters
  # @return [IntegrationBody]
  describe 'get_integration test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post
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
  describe 'namespace_integrations_lti1_integration_id_assets_asset_type_asset_id_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for replace_integration
  # 
  # Replace an integration
  # @param namespace identifier namespacing the blueprint. It must start with a letter or underscore and can only be followed by letters, numbers and underscores.
  # @param integration_id id of an integration
  # @param integration_type Type of external integration, e.g. &#39;lti1&#39;
  # @param body integration
  # @param [Hash] opts the optional parameters
  # @return [IntegrationBody]
  describe 'replace_integration test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
