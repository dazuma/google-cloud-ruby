# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/datastream/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-datastream"
  gem.version       = Google::Cloud::Datastream::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Datastream is a serverless and easy-to-use change data capture (CDC) and replication service. It allows you to synchronize data across heterogeneous databases and applications reliably, and with minimal latency and downtime."
  gem.summary       = "API Client library for the Datastream API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-datastream-v1", "~> 1.0"
end
