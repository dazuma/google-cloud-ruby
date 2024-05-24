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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/network_services/v1/version"

require "google/cloud/network_services/v1/network_services/credentials"
require "google/cloud/network_services/v1/network_services/paths"
require "google/cloud/network_services/v1/network_services/operations"
require "google/cloud/network_services/v1/network_services/client"
require "google/cloud/network_services/v1/network_services/rest"

module Google
  module Cloud
    module NetworkServices
      module V1
        ##
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/network_services/v1/network_services"
        #     client = ::Google::Cloud::NetworkServices::V1::NetworkServices::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/network_services/v1/network_services/rest"
        #     client = ::Google::Cloud::NetworkServices::V1::NetworkServices::Rest::Client.new
        #
        module NetworkServices
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "network_services", "helpers.rb"
require "google/cloud/network_services/v1/network_services/helpers" if ::File.file? helper_path
