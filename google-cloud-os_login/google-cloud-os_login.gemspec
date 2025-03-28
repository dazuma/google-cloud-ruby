# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/os_login/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-os_login"
  gem.version       = Google::Cloud::OsLogin::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Use OS Login to manage SSH access to your instances using IAM without having to create and manage individual SSH keys. OS Login maintains a consistent Linux user identity across VM instances and is the recommended way to manage many users across multiple instances or projects."
  gem.summary       = "API Client library for the Cloud OS Login API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-os_login-v1", "~> 1.2"
end
