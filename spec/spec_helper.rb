require_relative '../lib/omniauth-schoology'
require 'rspec'
require 'rack/test'
require 'webmock/rspec'
require 'pry'

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.include WebMock::API
  config.include Rack::Test::Methods
  config.extend OmniAuth::Test::StrategyMacros, type: :strategy
  config.expect_with :rspec do |expectations|
    expectations.syntax = [:should, :expect]
  end
end
