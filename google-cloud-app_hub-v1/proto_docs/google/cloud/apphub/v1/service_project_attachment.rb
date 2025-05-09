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
    module AppHub
      module V1
        # ServiceProjectAttachment represents an attachment from a service project to a
        # host project. Service projects contain the underlying cloud
        # infrastructure resources, and expose these resources to the host project
        # through a ServiceProjectAttachment. With the attachments, the host project
        # can provide an aggregated view of resources across all service projects.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of a ServiceProjectAttachment. Format:
        #     `"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}."`
        # @!attribute [rw] service_project
        #   @return [::String]
        #     Required. Immutable. Service project name in the format: `"projects/abc"`
        #     or `"projects/123"`. As input, project name with either project id or
        #     number are accepted. As output, this field will contain project number.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Create time.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier (in UUID4 format) for the
        #     `ServiceProjectAttachment`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AppHub::V1::ServiceProjectAttachment::State]
        #     Output only. ServiceProjectAttachment state.
        class ServiceProjectAttachment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # ServiceProjectAttachment state.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The ServiceProjectAttachment is being created.
            CREATING = 1

            # The ServiceProjectAttachment is ready.
            # This means Services and Workloads under the corresponding
            # ServiceProjectAttachment is ready for registration.
            ACTIVE = 2

            # The ServiceProjectAttachment is being deleted.
            DELETING = 3
          end
        end
      end
    end
  end
end
