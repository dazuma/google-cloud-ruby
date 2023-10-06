# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/bigquery/analytics_hub/v1/version"

require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/credentials"
require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/paths"
require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/rest/operations"
require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/rest/client"

module Google
  module Cloud
    module Bigquery
      module AnalyticsHub
        module V1
          ##
          # The `AnalyticsHubService` API facilitates data sharing within and across
          # organizations. It allows data providers to publish listings that reference
          # shared datasets. With Analytics Hub, users can discover and search for
          # listings that they have access to. Subscribers can view and subscribe to
          # listings. When you subscribe to a listing, Analytics Hub creates a linked
          # dataset in your project.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/rest"
          #     client = ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Rest::Client.new
          #
          module AnalyticsHubService
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service/rest/helpers" if ::File.file? helper_path