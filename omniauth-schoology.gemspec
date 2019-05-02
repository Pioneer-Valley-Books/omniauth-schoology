require './lib/omniauth/schoology/version'

Gem::Specification.new do |spec|
  spec.name = 'omniauth-schoology'
  spec.version = OmniAuth::Schoology::VERSION
  spec.authors = ['Mark Evans']
  spec.email = ['msteven.evans@gmail.com']
  spec.description = 'OAuth strategy for Schoology'
  spec.summary = 'OAuth strategy for Schoology'
  spec.homepage = 'https://github.com/hivedm/omniauth-schoology' #placeholder, haven't created the repo

  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.license = 'MIT'

  spec.add_runtime_dependency 'omniauth', '~> 1.9'
  spec.add_runtime_dependency 'omniauth-oauth', '~> 1.1.0'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
end
