=begin
Talis Blueprint API

This is the API documentation for [Blueprint](https://github.com/talis/blueprint-server), a primitive for institutional structure and time periods

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

# Common files
require 'blueprint_ruby_client/api_client'
require 'blueprint_ruby_client/api_error'
require 'blueprint_ruby_client/version'
require 'blueprint_ruby_client/configuration'

# Models
require 'blueprint_ruby_client/models/asset'
require 'blueprint_ruby_client/models/asset_body'
require 'blueprint_ruby_client/models/asset_result_set'
require 'blueprint_ruby_client/models/error'
require 'blueprint_ruby_client/models/errors'
require 'blueprint_ruby_client/models/links'
require 'blueprint_ruby_client/models/meta'
require 'blueprint_ruby_client/models/namespace'
require 'blueprint_ruby_client/models/namespace_relationship'
require 'blueprint_ruby_client/models/node'
require 'blueprint_ruby_client/models/node_attributes'
require 'blueprint_ruby_client/models/node_body'
require 'blueprint_ruby_client/models/node_relationship'
require 'blueprint_ruby_client/models/node_relationships'
require 'blueprint_ruby_client/models/node_result_set'

# APIs
require 'blueprint_ruby_client/api/assets_api'
require 'blueprint_ruby_client/api/hierarchy_api'

module BlueprintClient
  class << self
    # Customize default settings for the SDK using block.
    #   BlueprintClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
