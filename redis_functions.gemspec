# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_functions/version'

Gem::Specification.new do |spec|
  spec.name          = 'redis_functions'
  spec.version       = RedisFunctions::VERSION
  spec.authors       = ['Greg Merritt']
  spec.email         = ['gremerritt@gmail.com']

  spec.summary       = 'Redis function support'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/gremerritt/redis_functions'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7.7'

  # spec.add_dependency 'avromatic'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'overcommit'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4.1'
end
