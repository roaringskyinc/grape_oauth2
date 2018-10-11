$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'grape_oauth2/version'

Gem::Specification.new do |gem|
  gem.name        = 'grape_oauth2'
  gem.version     = Grape::OAuth2.gem_version
  gem.authors     = ['Nikita Bulai']
  gem.email       = ['bulajnikita@gmail.com']
  gem.homepage    = 'http://github.com/nbulaj/grape-oauth2'
  gem.summary     = 'Grape OAuth2 provider'
  gem.description = 'Flexible, ORM-agnostic, fully customizable and simple OAuth2 provider support for Grape APIs'
  gem.license     = 'MIT'

  gem.require_paths = %w[lib]
  gem.files = `git ls-files`.split($RS) - ['README.md', 'grape_oauth2.png', 'gemfiles', '.travis.yml', '.rubocop.yml']
  gem.test_files = Dir['spec/**/*']

  gem.required_ruby_version = '>= 2.2.2'

  gem.add_runtime_dependency 'grape', '~> 1.0', '>= 1.0'
  gem.add_runtime_dependency 'rack-oauth2', '~> 1.9.1', '>= 1.9.0'

  gem.add_development_dependency 'rspec-rails', '~> 3.6.0', '>= 3.6.0'
  gem.add_development_dependency 'database_cleaner', '~> 1.5.0', '>= 1.5.0'
end
