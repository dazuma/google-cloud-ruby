# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/apps/chat/version"

require "googleauth"

module Google
  module Apps
    module Chat
      ##
      # Create a new client object for ChatService.
      #
      # By default, this returns an instance of
      # [Google::Apps::Chat::V1::ChatService::Client](https://cloud.google.com/ruby/docs/reference/google-apps-chat-v1/latest/Google-Apps-Chat-V1-ChatService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ChatService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the ChatService service.
      # You can determine whether the method will succeed by calling
      # {Google::Apps::Chat.chat_service_available?}.
      #
      # ## About ChatService
      #
      # Enables developers to build Chat apps and
      # integrations on Google Chat Platform.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.chat_service version: :v1, transport: :grpc, &block
        require "google/apps/chat/#{version.to_s.downcase}"

        package_name = Google::Apps::Chat
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Apps::Chat.const_get(package_name).const_get(:ChatService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the ChatService service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Apps::Chat.chat_service}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the ChatService service,
      # or if the versioned client gem needs an update to support the ChatService service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.chat_service_available? version: :v1, transport: :grpc
        require "google/apps/chat/#{version.to_s.downcase}"
        package_name = Google::Apps::Chat
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Apps::Chat.const_get package_name
        return false unless service_module.const_defined? :ChatService
        service_module = service_module.const_get :ChatService
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end
    end
  end
end

helper_path = ::File.join __dir__, "chat", "helpers.rb"
require "google/apps/chat/helpers" if ::File.file? helper_path
