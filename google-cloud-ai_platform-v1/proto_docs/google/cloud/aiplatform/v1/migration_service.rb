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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::MigrationService::Client#search_migratable_resources MigrationService.SearchMigratableResources}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location that the migratable resources should be searched
        #     from. It's the Vertex AI location that the resources can be migrated to,
        #     not the resources' original location. Format:
        #     `projects/{project}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard page size.
        #     The default and maximum value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter for your search. You can use the following types of filters:
        #
        #     *   Resource type filters. The following strings filter for a specific type
        #         of {::Google::Cloud::AIPlatform::V1::MigratableResource MigratableResource}:
        #         *   `ml_engine_model_version:*`
        #         *   `automl_model:*`
        #         *   `automl_dataset:*`
        #         *   `data_labeling_dataset:*`
        #     *   "Migrated or not" filters. The following strings filter for resources
        #         that either have or have not already been migrated:
        #         *   `last_migrate_time:*` filters for migrated resources.
        #         *   `NOT last_migrate_time:*` filters for not yet migrated resources.
        class SearchMigratableResourcesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::MigrationService::Client#search_migratable_resources MigrationService.SearchMigratableResources}.
        # @!attribute [rw] migratable_resources
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::MigratableResource>]
        #     All migratable resources that can be migrated to the
        #     location specified in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard next-page token.
        #     The migratable_resources may not fill page_size in
        #     SearchMigratableResourcesRequest even when there are subsequent pages.
        class SearchMigratableResourcesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::MigrationService::Client#batch_migrate_resources MigrationService.BatchMigrateResources}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location of the migrated resource will live in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] migrate_resource_requests
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::MigrateResourceRequest>]
        #     Required. The request messages specifying the resources to migrate.
        #     They must be in the same location as the destination.
        #     Up to 50 resources can be migrated in one batch.
        class BatchMigrateResourcesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config of migrating one resource from automl.googleapis.com,
        # datalabeling.googleapis.com and ml.googleapis.com to Vertex AI.
        # @!attribute [rw] migrate_ml_engine_model_version_config
        #   @return [::Google::Cloud::AIPlatform::V1::MigrateResourceRequest::MigrateMlEngineModelVersionConfig]
        #     Config for migrating Version in ml.googleapis.com to Vertex AI's Model.
        #
        #     Note: The following fields are mutually exclusive: `migrate_ml_engine_model_version_config`, `migrate_automl_model_config`, `migrate_automl_dataset_config`, `migrate_data_labeling_dataset_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] migrate_automl_model_config
        #   @return [::Google::Cloud::AIPlatform::V1::MigrateResourceRequest::MigrateAutomlModelConfig]
        #     Config for migrating Model in automl.googleapis.com to Vertex AI's
        #     Model.
        #
        #     Note: The following fields are mutually exclusive: `migrate_automl_model_config`, `migrate_ml_engine_model_version_config`, `migrate_automl_dataset_config`, `migrate_data_labeling_dataset_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] migrate_automl_dataset_config
        #   @return [::Google::Cloud::AIPlatform::V1::MigrateResourceRequest::MigrateAutomlDatasetConfig]
        #     Config for migrating Dataset in automl.googleapis.com to Vertex AI's
        #     Dataset.
        #
        #     Note: The following fields are mutually exclusive: `migrate_automl_dataset_config`, `migrate_ml_engine_model_version_config`, `migrate_automl_model_config`, `migrate_data_labeling_dataset_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] migrate_data_labeling_dataset_config
        #   @return [::Google::Cloud::AIPlatform::V1::MigrateResourceRequest::MigrateDataLabelingDatasetConfig]
        #     Config for migrating Dataset in datalabeling.googleapis.com to
        #     Vertex AI's Dataset.
        #
        #     Note: The following fields are mutually exclusive: `migrate_data_labeling_dataset_config`, `migrate_ml_engine_model_version_config`, `migrate_automl_model_config`, `migrate_automl_dataset_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class MigrateResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Config for migrating version in ml.googleapis.com to Vertex AI's Model.
          # @!attribute [rw] endpoint
          #   @return [::String]
          #     Required. The ml.googleapis.com endpoint that this model version should
          #     be migrated from. Example values:
          #
          #     * ml.googleapis.com
          #
          #     * us-centrall-ml.googleapis.com
          #
          #     * europe-west4-ml.googleapis.com
          #
          #     * asia-east1-ml.googleapis.com
          # @!attribute [rw] model_version
          #   @return [::String]
          #     Required. Full resource name of ml engine model version.
          #     Format: `projects/{project}/models/{model}/versions/{version}`.
          # @!attribute [rw] model_display_name
          #   @return [::String]
          #     Required. Display name of the model in Vertex AI.
          #     System will pick a display name if unspecified.
          class MigrateMlEngineModelVersionConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Config for migrating Model in automl.googleapis.com to Vertex AI's Model.
          # @!attribute [rw] model
          #   @return [::String]
          #     Required. Full resource name of automl Model.
          #     Format:
          #     `projects/{project}/locations/{location}/models/{model}`.
          # @!attribute [rw] model_display_name
          #   @return [::String]
          #     Optional. Display name of the model in Vertex AI.
          #     System will pick a display name if unspecified.
          class MigrateAutomlModelConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Config for migrating Dataset in automl.googleapis.com to Vertex AI's
          # Dataset.
          # @!attribute [rw] dataset
          #   @return [::String]
          #     Required. Full resource name of automl Dataset.
          #     Format:
          #     `projects/{project}/locations/{location}/datasets/{dataset}`.
          # @!attribute [rw] dataset_display_name
          #   @return [::String]
          #     Required. Display name of the Dataset in Vertex AI.
          #     System will pick a display name if unspecified.
          class MigrateAutomlDatasetConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Config for migrating Dataset in datalabeling.googleapis.com to Vertex
          # AI's Dataset.
          # @!attribute [rw] dataset
          #   @return [::String]
          #     Required. Full resource name of data labeling Dataset.
          #     Format:
          #     `projects/{project}/datasets/{dataset}`.
          # @!attribute [rw] dataset_display_name
          #   @return [::String]
          #     Optional. Display name of the Dataset in Vertex AI.
          #     System will pick a display name if unspecified.
          # @!attribute [rw] migrate_data_labeling_annotated_dataset_configs
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::MigrateResourceRequest::MigrateDataLabelingDatasetConfig::MigrateDataLabelingAnnotatedDatasetConfig>]
          #     Optional. Configs for migrating AnnotatedDataset in
          #     datalabeling.googleapis.com to Vertex AI's SavedQuery. The specified
          #     AnnotatedDatasets have to belong to the datalabeling Dataset.
          class MigrateDataLabelingDatasetConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Config for migrating AnnotatedDataset in datalabeling.googleapis.com to
            # Vertex AI's SavedQuery.
            # @!attribute [rw] annotated_dataset
            #   @return [::String]
            #     Required. Full resource name of data labeling AnnotatedDataset.
            #     Format:
            #     `projects/{project}/datasets/{dataset}/annotatedDatasets/{annotated_dataset}`.
            class MigrateDataLabelingAnnotatedDatasetConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::MigrationService::Client#batch_migrate_resources MigrationService.BatchMigrateResources}.
        # @!attribute [rw] migrate_resource_responses
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::MigrateResourceResponse>]
        #     Successfully migrated resources.
        class BatchMigrateResourcesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes a successfully migrated resource.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Migrated Dataset's resource name.
        #
        #     Note: The following fields are mutually exclusive: `dataset`, `model`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] model
        #   @return [::String]
        #     Migrated Model's resource name.
        #
        #     Note: The following fields are mutually exclusive: `model`, `dataset`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] migratable_resource
        #   @return [::Google::Cloud::AIPlatform::V1::MigratableResource]
        #     Before migration, the identifier in ml.googleapis.com,
        #     automl.googleapis.com or datalabeling.googleapis.com.
        class MigrateResourceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::MigrationService::Client#batch_migrate_resources MigrationService.BatchMigrateResources}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        # @!attribute [rw] partial_results
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::BatchMigrateResourcesOperationMetadata::PartialResult>]
        #     Partial results that reflect the latest migration operation progress.
        class BatchMigrateResourcesOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents a partial result in batch migration operation for one
          # {::Google::Cloud::AIPlatform::V1::MigrateResourceRequest MigrateResourceRequest}.
          # @!attribute [rw] error
          #   @return [::Google::Rpc::Status]
          #     The error result of the migration request in case of failure.
          #
          #     Note: The following fields are mutually exclusive: `error`, `model`, `dataset`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] model
          #   @return [::String]
          #     Migrated model resource name.
          #
          #     Note: The following fields are mutually exclusive: `model`, `error`, `dataset`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] dataset
          #   @return [::String]
          #     Migrated dataset resource name.
          #
          #     Note: The following fields are mutually exclusive: `dataset`, `error`, `model`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] request
          #   @return [::Google::Cloud::AIPlatform::V1::MigrateResourceRequest]
          #     It's the same as the value in
          #     {::Google::Cloud::AIPlatform::V1::BatchMigrateResourcesRequest#migrate_resource_requests BatchMigrateResourcesRequest.migrate_resource_requests}.
          class PartialResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
