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


module Google
  module Cloud
    module GkeConnect
      module Gateway
        module V1
          # A request for connection information for a particular membership.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The Fleet membership resource.
          # @!attribute [rw] force_use_agent
          #   @return [::Boolean]
          #     Optional. Whether to force the use of Connect Agent-based transport.
          #
          #     This will return a configuration that uses Connect Agent as the underlying
          #     transport mechanism for cluster types that would otherwise have used a
          #     different transport. Requires that Connect Agent be installed on the
          #     cluster. Setting this field to false is equivalent to not setting it.
          # @!attribute [rw] version
          #   @return [::String]
          #     Optional. The Connect Gateway version to be used in the resulting
          #     configuration.
          #
          #     Leave this field blank to let the server choose the version (recommended).
          # @!attribute [rw] kubernetes_namespace
          #   @return [::String]
          #     Optional. The namespace to use in the kubeconfig context.
          #
          #     If this field is specified, the server will set the `namespace` field in
          #     kubeconfig context. If not specified, the `namespace` field is omitted.
          # @!attribute [rw] operating_system
          #   @return [::Google::Cloud::GkeConnect::Gateway::V1::GenerateCredentialsRequest::OperatingSystem]
          #     Optional. The operating system where the kubeconfig will be used.
          class GenerateCredentialsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Operating systems requiring specialized kubeconfigs.
            module OperatingSystem
              # Generates a kubeconfig that works for all operating systems not defined
              # below.
              OPERATING_SYSTEM_UNSPECIFIED = 0

              # Generates a kubeconfig that is specifically designed to work with
              # Windows.
              OPERATING_SYSTEM_WINDOWS = 1
            end
          end

          # Connection information for a particular membership.
          # @!attribute [rw] kubeconfig
          #   @return [::String]
          #     A full YAML kubeconfig in serialized format.
          # @!attribute [rw] endpoint
          #   @return [::String]
          #     The generated URI of the cluster as accessed through the Connect Gateway
          #     API.
          class GenerateCredentialsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
