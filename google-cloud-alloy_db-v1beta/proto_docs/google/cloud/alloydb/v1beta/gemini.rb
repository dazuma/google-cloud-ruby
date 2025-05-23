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
    module AlloyDB
      module V1beta
        # Cluster level configuration parameters related to the Gemini in Databases
        # add-on.
        # @!attribute [r] entitled
        #   @return [::Boolean]
        #     Output only. Whether the Gemini in Databases add-on is enabled for the
        #     cluster. It will be true only if the add-on has been enabled for the
        #     billing account corresponding to the cluster. Its status is toggled from
        #     the Admin Control Center (ACC) and cannot be toggled using AlloyDB's APIs.
        class GeminiClusterConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Instance level configuration parameters related to the Gemini in Databases
        # add-on.
        # @!attribute [r] entitled
        #   @return [::Boolean]
        #     Output only. Whether the Gemini in Databases add-on is enabled for the
        #     instance. It will be true only if the add-on has been enabled for the
        #     billing account corresponding to the instance. Its status is toggled from
        #     the Admin Control Center (ACC) and cannot be toggled using AlloyDB's APIs.
        class GeminiInstanceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Instance level configuration parameters related to the Gemini Cloud Assist
        # product.
        # @!attribute [r] gca_entitlement
        #   @return [::Google::Cloud::AlloyDB::V1beta::GCAEntitlementType]
        #     Output only. Represents the GCA entitlement state of the instance.
        class GCAInstanceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Enum representing the type of GCA entitlement assigned to a resource.
        module GCAEntitlementType
          # No GCA entitlement is assigned.
          GCA_ENTITLEMENT_TYPE_UNSPECIFIED = 0

          # The resource is entitled to the GCA Standard Tier.
          GCA_STANDARD = 1
        end
      end
    end
  end
end
