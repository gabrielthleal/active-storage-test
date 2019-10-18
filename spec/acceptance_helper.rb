# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = :json
  config.post_body_formatter = :json
  config.curl_host = 'http://localhost:3000'
  config.api_name = 'TESTE API'
end
