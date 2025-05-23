# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/css/v1/quota.proto for package 'Google.Shopping.Css.V1'
# Original file comments:
# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/css/v1/quota_pb'

module Google
  module Shopping
    module Css
      module V1
        module QuotaService
          # Service to get method call quota information per CSS API method.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.shopping.css.v1.QuotaService'

            # Lists the daily call quota and usage per group for your CSS Center account.
            rpc :ListQuotaGroups, ::Google::Shopping::Css::V1::ListQuotaGroupsRequest, ::Google::Shopping::Css::V1::ListQuotaGroupsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
