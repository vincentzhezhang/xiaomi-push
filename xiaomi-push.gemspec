# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xiaomi/push/version'

Gem::Specification.new do |spec|
  spec.name          = "xiaomi-push"
  spec.version       = Xiaomi::Push::VERSION
  spec.authors       = ["icyleaf"]
  spec.email         = ["icyleaf.cn@gmail.com"]

  spec.summary       = %q{MiPush Server SDK for Ruby}
  spec.description   = %q{MiPush Server SDK for Ruby}
  spec.homepage      = "http://github.com/icyleaf/xiaomi-push"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_dependency "commander"
  spec.add_dependency "multi_json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "awesome_print"
end
