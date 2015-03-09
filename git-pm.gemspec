# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git-pm/version'

Gem::Specification.new do |spec|
  spec.name          = "git-pm"
  spec.version       = GitPM::VERSION
  spec.authors       = ["codenamev"]
  spec.email         = ["thevalentino+code@gmail.com"]
  s.platform         = Gem::Platform::RUBY

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Agile project management for your git repository.}
  spec.description   = %q{Agile project management for your git repository.}
  spec.homepage      = "http://reenhanced.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.bindir        = "bin"
  spec.require_paths << "lib"

  spec.add_dependency "gli", "~> 2.13.0"
  spec.add_dependency "cuba", "~> 3.1.1"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
