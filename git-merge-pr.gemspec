# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git-merge-pr/version'

Gem::Specification.new do |spec|
  spec.name          = "git-merge-pr"
  spec.version       = GitMergePr::VERSION
  spec.authors       = ["Parker Moore"]
  spec.email         = ["parkrmoore@gmail.com"]
  spec.summary       = %q{Merge a pull request on GitHub.com from the command-line.}
  spec.homepage      = "https://github.com/parkr/git-merge-pr"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "octokit", "~> 2.7"
  spec.add_runtime_dependency "rugged", "~> 0.19.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
