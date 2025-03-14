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
    module Datastore
      module Admin
        module V1
          # An event signifying a change in state of a [migration from Cloud Datastore to
          # Cloud Firestore in Datastore
          # mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationState]
          #     The new state of the migration.
          class MigrationStateEvent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An event signifying the start of a new step in a [migration from Cloud
          # Datastore to Cloud Firestore in Datastore
          # mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).
          # @!attribute [rw] step
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationStep]
          #     The step that is starting.
          #
          #     An event with step set to `START` indicates that the migration
          #     has been reverted back to the initial pre-migration state.
          # @!attribute [rw] prepare_step_details
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationProgressEvent::PrepareStepDetails]
          #     Details for the `PREPARE` step.
          #
          #     Note: The following fields are mutually exclusive: `prepare_step_details`, `redirect_writes_step_details`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] redirect_writes_step_details
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationProgressEvent::RedirectWritesStepDetails]
          #     Details for the `REDIRECT_WRITES` step.
          #
          #     Note: The following fields are mutually exclusive: `redirect_writes_step_details`, `prepare_step_details`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class MigrationProgressEvent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Details for the `PREPARE` step.
            # @!attribute [rw] concurrency_mode
            #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationProgressEvent::ConcurrencyMode]
            #     The concurrency mode this database will use when it reaches the
            #     `REDIRECT_WRITES` step.
            class PrepareStepDetails
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Details for the `REDIRECT_WRITES` step.
            # @!attribute [rw] concurrency_mode
            #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationProgressEvent::ConcurrencyMode]
            #     Ths concurrency mode for this database.
            class RedirectWritesStepDetails
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Concurrency modes for transactions in Cloud Firestore.
            module ConcurrencyMode
              # Unspecified.
              CONCURRENCY_MODE_UNSPECIFIED = 0

              # Pessimistic concurrency.
              PESSIMISTIC = 1

              # Optimistic concurrency.
              OPTIMISTIC = 2

              # Optimistic concurrency with entity groups.
              OPTIMISTIC_WITH_ENTITY_GROUPS = 3
            end
          end

          # States for a migration.
          module MigrationState
            # Unspecified.
            MIGRATION_STATE_UNSPECIFIED = 0

            # The migration is running.
            RUNNING = 1

            # The migration is paused.
            PAUSED = 2

            # The migration is complete.
            COMPLETE = 3
          end

          # Steps in a migration.
          module MigrationStep
            # Unspecified.
            MIGRATION_STEP_UNSPECIFIED = 0

            # Pre-migration: the database is prepared for migration.
            PREPARE = 6

            # Start of migration.
            START = 1

            # Writes are applied synchronously to at least one replica.
            APPLY_WRITES_SYNCHRONOUSLY = 7

            # Data is copied to Cloud Firestore and then verified to match the data in
            # Cloud Datastore.
            COPY_AND_VERIFY = 2

            # Eventually-consistent reads are redirected to Cloud Firestore.
            REDIRECT_EVENTUALLY_CONSISTENT_READS = 3

            # Strongly-consistent reads are redirected to Cloud Firestore.
            REDIRECT_STRONGLY_CONSISTENT_READS = 4

            # Writes are redirected to Cloud Firestore.
            REDIRECT_WRITES = 5
          end
        end
      end
    end
  end
end
