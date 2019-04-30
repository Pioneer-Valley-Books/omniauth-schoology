require './lib/omniauth/schoology/version'

Gem::Specification.new do |spec|
  spec.name = 'omniauth-strategies'
  spec.version = OmniAuth::Schoology::VERSION
  spec.authors = ['Mark Evans']
  spec.email = ['msteven.evans@gmail.com']
  spec.description = 'OAuth2 strategy for Schoology'
  spec.summary = 'OAuth2 strategy for Schoology'
  spec.homepage = 'https://github.com/hivedm/omniauth-strategies' #placeholder, haven't created the repo
  spec.files = 'git ls-files'.split($/)
  spec.license = 'MIT'

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.6.0'

  spec.add_development_dependency 'rspec'
end