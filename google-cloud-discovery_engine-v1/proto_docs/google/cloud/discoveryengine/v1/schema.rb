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


module Google
  module Cloud
    module DiscoveryEngine
      module V1
        # Defines the structure and layout of a type of document data.
        # @!attribute [rw] struct_schema
        #   @return [::Google::Protobuf::Struct]
        #     The structured representation of the schema.
        #
        #     Note: The following fields are mutually exclusive: `struct_schema`, `json_schema`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] json_schema
        #   @return [::String]
        #     The JSON representation of the schema.
        #
        #     Note: The following fields are mutually exclusive: `json_schema`, `struct_schema`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The full resource name of the schema, in the format of
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 1024
        #     characters.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
