# frozen_string_literal: true

# Copyright 2025 Google LLC
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

require "google/cloud/cloud_quotas/v1beta/version"

require "google/cloud/cloud_quotas/v1beta/cloud_quotas/credentials"
require "google/cloud/cloud_quotas/v1beta/cloud_quotas/paths"
require "google/cloud/cloud_quotas/v1beta/cloud_quotas/client"
require "google/cloud/cloud_quotas/v1beta/cloud_quotas/rest"

module Google
  module Cloud
    module CloudQuotas
      module V1beta
        ##
        # The Cloud Quotas API is an infrastructure service for Google Cloud that lets
        # service consumers list and manage their resource usage limits.
        #
        # - List/Get the metadata and current status of the quotas for a service.
        # - Create/Update quota preferencess that declare the preferred quota values.
        # - Check the status of a quota preference request.
        # - List/Get pending and historical quota preference.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/cloud_quotas/v1beta/cloud_quotas"
        #     client = ::Google::Cloud::CloudQuotas::V1beta::CloudQuotas::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/cloud_quotas/v1beta/cloud_quotas/rest"
        #     client = ::Google::Cloud::CloudQuotas::V1beta::CloudQuotas::Rest::Client.new
        #
        module CloudQuotas
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_quotas", "helpers.rb"
require "google/cloud/cloud_quotas/v1beta/cloud_quotas/helpers" if ::File.file? helper_path
