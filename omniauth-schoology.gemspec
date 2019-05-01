require './lib/omniauth/schoology/version'

Gem::Specification.new do |spec|
  spec.name = 'omniauth-strategies'
  spec.version = OmniAuth::Schoology::VERSION
  spec.authors = ['Mark Evans']
  spec.email = ['msteven.evans@gmail.com']
  spec.description = 'OAuth strategy for Schoology'
  spec.summary = 'OAuth strategy for Schoology'
  spec.homepage = 'https://github.com/hivedm/omniauth-strategies' #placeholder, haven't created the repo
  spec.files = 'git ls-files'.split($/)
  spec.license = 'MIT'

  spec.add_runtime_dependency 'omniauth', '~> 1.9'
  spec.add_runtime_dependency 'omniauth-oauth', '~> 1.1.0'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
end
