# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Deploy
      module V1
        # Type indicates the type of the log entry and can be used as a filter.
        module Type
          # Type is unspecified.
          TYPE_UNSPECIFIED = 0

          # A Pub/Sub notification failed to be sent.
          TYPE_PUBSUB_NOTIFICATION_FAILURE = 1

          # Resource state changed.
          TYPE_RESOURCE_STATE_CHANGE = 3

          # A process aborted.
          TYPE_PROCESS_ABORTED = 4

          # Restriction check failed.
          TYPE_RESTRICTION_VIOLATED = 5

          # Resource deleted.
          TYPE_RESOURCE_DELETED = 6

          # Rollout updated.
          TYPE_ROLLOUT_UPDATE = 7

          # Deploy Policy evaluation.
          TYPE_DEPLOY_POLICY_EVALUATION = 8

          # Deprecated: This field is never used. Use release_render log type instead.
          TYPE_RENDER_STATUES_CHANGE = 2
        end
      end
    end
  end
end
