# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/shell/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-shell-v1"
  gem.version       = Google::Cloud::Shell::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Shell is an interactive shell environment for Google Cloud that makes it easy for you to learn and experiment with Google Cloud and manage your projects and resources from your web browser. Note that google-cloud-shell-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-shell instead. See the readme for more details."
  gem.summary       = "Allows users to start, configure, and connect to interactive shell sessions running in the cloud."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
