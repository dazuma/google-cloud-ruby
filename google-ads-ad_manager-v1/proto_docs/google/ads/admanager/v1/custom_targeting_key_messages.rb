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
  module Ads
    module AdManager
      module V1
        # The `CustomTargetingKey` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the `CustomTargetingKey`.
        #     Format:
        #     `networks/{network_code}/customTargetingKeys/{custom_targeting_key_id}`
        # @!attribute [r] custom_targeting_key_id
        #   @return [::Integer]
        #     Output only. `CustomTargetingKey` ID.
        # @!attribute [rw] ad_tag_name
        #   @return [::String]
        #     Immutable. Name of the key. Keys can contain up to 10 characters each. You
        #     can use alphanumeric characters and symbols other than the following:
        #     ", ', =, !, +, #, *, ~, ;, ^, (, ), <, >, [, ], the white space character.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Descriptive name for the `CustomTargetingKey`.
        # @!attribute [rw] type
        #   @return [::Google::Ads::AdManager::V1::CustomTargetingKeyTypeEnum::CustomTargetingKeyType]
        #     Required. Indicates whether users will select from predefined values or
        #     create new targeting values, while specifying targeting criteria for a line
        #     item.
        # @!attribute [r] status
        #   @return [::Google::Ads::AdManager::V1::CustomTargetingKeyStatusEnum::CustomTargetingKeyStatus]
        #     Output only. Status of the `CustomTargetingKey`.
        # @!attribute [rw] reportable_type
        #   @return [::Google::Ads::AdManager::V1::CustomTargetingKeyReportableTypeEnum::CustomTargetingKeyReportableType]
        #     Required. Reportable state of the `CustomTargetingKey`.
        class CustomTargetingKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
