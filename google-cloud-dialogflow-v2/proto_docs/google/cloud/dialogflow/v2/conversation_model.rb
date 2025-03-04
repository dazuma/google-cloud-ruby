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
    module Dialogflow
      module V2
        # Represents a conversation model.
        # @!attribute [rw] name
        #   @return [::String]
        #     ConversationModel resource name. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the model. At most 64 bytes long.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time of this model.
        # @!attribute [rw] datasets
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::InputDataset>]
        #     Required. Datasets used to create model.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationModel::State]
        #     Output only. State of the model. A model can only serve prediction requests
        #     after it gets deployed.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Language code for the conversation model. If not specified, the language
        #     is en-US. Language at ConversationModel should be set for all non en-us
        #     languages.
        #     This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
        #     language tag. Example: "en-US".
        # @!attribute [rw] article_suggestion_model_metadata
        #   @return [::Google::Cloud::Dialogflow::V2::ArticleSuggestionModelMetadata]
        #     Metadata for article suggestion models.
        #
        #     Note: The following fields are mutually exclusive: `article_suggestion_model_metadata`, `smart_reply_model_metadata`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] smart_reply_model_metadata
        #   @return [::Google::Cloud::Dialogflow::V2::SmartReplyModelMetadata]
        #     Metadata for smart reply models.
        #
        #     Note: The following fields are mutually exclusive: `smart_reply_model_metadata`, `article_suggestion_model_metadata`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. A read only boolean field reflecting Zone Separation
        #     status of the model.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. A read only boolean field reflecting Zone Isolation status
        #     of the model.
        class ConversationModel
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of the model.
          module State
            # Should not be used, an un-set enum has this value by default.
            STATE_UNSPECIFIED = 0

            # Model being created.
            CREATING = 1

            # Model is not deployed but ready to deploy.
            UNDEPLOYED = 2

            # Model is deploying.
            DEPLOYING = 3

            # Model is deployed and ready to use.
            DEPLOYED = 4

            # Model is undeploying.
            UNDEPLOYING = 5

            # Model is deleting.
            DELETING = 6

            # Model is in error state. Not ready to deploy and use.
            FAILED = 7

            # Model is being created but the training has not started,
            # The model may remain in this state until there is enough capacity to
            # start training.
            PENDING = 8
          end

          # Model type.
          module ModelType
            # ModelType unspecified.
            MODEL_TYPE_UNSPECIFIED = 0

            # ModelType smart reply dual encoder model.
            SMART_REPLY_DUAL_ENCODER_MODEL = 2

            # ModelType smart reply bert model.
            SMART_REPLY_BERT_MODEL = 6
          end
        end

        # Represents evaluation result of a conversation model.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the evaluation. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model
        #     ID>/evaluations/<Evaluation ID>`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. The display name of the model evaluation. At most 64 bytes long.
        # @!attribute [rw] evaluation_config
        #   @return [::Google::Cloud::Dialogflow::V2::EvaluationConfig]
        #     Optional. The configuration of the evaluation task.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time of this model.
        # @!attribute [r] smart_reply_metrics
        #   @return [::Google::Cloud::Dialogflow::V2::SmartReplyMetrics]
        #     Output only. Only available when model is for smart reply.
        # @!attribute [r] raw_human_eval_template_csv
        #   @return [::String]
        #     Output only. Human eval template in csv format.
        #     It takes real-world conversations provided through input dataset, generates
        #     example suggestions for customer to verify quality of the model.
        #     For Smart Reply, the generated csv file contains columns of
        #     Context, (Suggestions,Q1,Q2)*3, Actual reply.
        #     Context contains at most 10 latest messages in the conversation prior to
        #     the current suggestion.
        #     Q1: "Would you send it as the next message of agent?"
        #     Evaluated based on whether the suggest is appropriate to be sent by
        #     agent in current context.
        #     Q2: "Does the suggestion move the conversation closer to resolution?"
        #     Evaluated based on whether the suggestion provide solutions, or answers
        #     customer's question or collect information from customer to resolve the
        #     customer's issue.
        #     Actual reply column contains the actual agent reply sent in the context.
        class ConversationModelEvaluation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration for model evaluation.
        # @!attribute [rw] datasets
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::InputDataset>]
        #     Required. Datasets used for evaluation.
        # @!attribute [rw] smart_reply_config
        #   @return [::Google::Cloud::Dialogflow::V2::EvaluationConfig::SmartReplyConfig]
        #     Configuration for smart reply model evaluation.
        #
        #     Note: The following fields are mutually exclusive: `smart_reply_config`, `smart_compose_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] smart_compose_config
        #   @return [::Google::Cloud::Dialogflow::V2::EvaluationConfig::SmartComposeConfig]
        #     Configuration for smart compose model evaluation.
        #
        #     Note: The following fields are mutually exclusive: `smart_compose_config`, `smart_reply_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class EvaluationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Smart reply specific configuration for evaluation job.
          # @!attribute [rw] allowlist_document
          #   @return [::String]
          #     The allowlist document resource name.
          #     Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
          #     ID>/documents/<Document ID>`. Only used for smart reply model.
          # @!attribute [rw] max_result_count
          #   @return [::Integer]
          #     Required. The model to be evaluated can return multiple results with
          #     confidence score on each query. These results will be sorted by the
          #     descending order of the scores and we only keep the first
          #     max_result_count results as the final results to evaluate.
          class SmartReplyConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Smart compose specific configuration for evaluation job.
          # @!attribute [rw] allowlist_document
          #   @return [::String]
          #     The allowlist document resource name.
          #     Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
          #     ID>/documents/<Document ID>`. Only used for smart compose model.
          # @!attribute [rw] max_result_count
          #   @return [::Integer]
          #     Required. The model to be evaluated can return multiple results with
          #     confidence score on each query. These results will be sorted by the
          #     descending order of the scores and we only keep the first
          #     max_result_count results as the final results to evaluate.
          class SmartComposeConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # InputDataset used to create model or do evaluation.
        # NextID:5
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Required. ConversationDataset resource name. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset ID>`
        class InputDataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for article suggestion models.
        # @!attribute [rw] training_model_type
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationModel::ModelType]
        #     Optional. Type of the article suggestion model. If not provided, model_type
        #     is used.
        class ArticleSuggestionModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for smart reply models.
        # @!attribute [rw] training_model_type
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationModel::ModelType]
        #     Optional. Type of the smart reply model. If not provided, model_type is
        #     used.
        class SmartReplyModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The evaluation metrics for smart reply model.
        # @!attribute [rw] allowlist_coverage
        #   @return [::Float]
        #     Percentage of target participant messages in the evaluation dataset for
        #     which similar messages have appeared at least once in the allowlist. Should
        #     be [0, 1].
        # @!attribute [rw] top_n_metrics
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SmartReplyMetrics::TopNMetrics>]
        #     Metrics of top n smart replies, sorted by [TopNMetric.n][].
        # @!attribute [rw] conversation_count
        #   @return [::Integer]
        #     Total number of conversations used to generate this metric.
        class SmartReplyMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Evaluation metrics when retrieving `n` smart replies with the model.
          # @!attribute [rw] n
          #   @return [::Integer]
          #     Number of retrieved smart replies. For example, when `n` is 3, this
          #     evaluation contains metrics for when Dialogflow retrieves 3 smart replies
          #     with the model.
          # @!attribute [rw] recall
          #   @return [::Float]
          #     Defined as `number of queries whose top n smart replies have at least one
          #     similar (token match similarity above the defined threshold) reply as the
          #     real reply` divided by `number of queries with at least one smart reply`.
          #     Value ranges from 0.0 to 1.0 inclusive.
          class TopNMetrics
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#create_conversation_model ConversationModels.CreateConversationModel}
        # @!attribute [rw] parent
        #   @return [::String]
        #     The project to create conversation model for. Format:
        #     `projects/<Project ID>`
        # @!attribute [rw] conversation_model
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationModel]
        #     Required. The conversation model to create.
        class CreateConversationModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#get_conversation_model ConversationModels.GetConversationModel}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation model to retrieve. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        class GetConversationModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#list_conversation_models ConversationModels.ListConversationModels}
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to list all conversation models for.
        #     Format: `projects/<Project ID>`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of conversation models to return in a single
        #     page. By default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListConversationModelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#list_conversation_models ConversationModels.ListConversationModels}
        # @!attribute [rw] conversation_models
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::ConversationModel>]
        #     The list of models to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListConversationModelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#delete_conversation_model ConversationModels.DeleteConversationModel}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation model to delete. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        class DeleteConversationModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#deploy_conversation_model ConversationModels.DeployConversationModel}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation model to deploy. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        class DeployConversationModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#undeploy_conversation_model ConversationModels.UndeployConversationModel}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation model to undeploy. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        class UndeployConversationModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#get_conversation_model_evaluation ConversationModels.GetConversationModelEvaluation}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation model evaluation resource name. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model
        #     ID>/evaluations/<Evaluation ID>`
        class GetConversationModelEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#list_conversation_model_evaluations ConversationModels.ListConversationModelEvaluations}
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The conversation model resource name. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model ID>`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of evaluations to return in a
        #     single page. By default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListConversationModelEvaluationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#list_conversation_model_evaluations ConversationModels.ListConversationModelEvaluations}
        # @!attribute [rw] conversation_model_evaluations
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::ConversationModelEvaluation>]
        #     The list of evaluations to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListConversationModelEvaluationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#create_conversation_model_evaluation ConversationModels.CreateConversationModelEvaluation}
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The conversation model resource name. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationModels/<Conversation Model ID>`
        # @!attribute [rw] conversation_model_evaluation
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationModelEvaluation]
        #     Required. The conversation model evaluation to be created.
        class CreateConversationModelEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for a
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#create_conversation_model ConversationModels.CreateConversationModel}
        # operation.
        # @!attribute [rw] conversation_model
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model Id>`
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Dialogflow::V2::CreateConversationModelOperationMetadata::State]
        #     State of CreateConversationModel operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when the request to create conversation model is submitted. The
        #     time is measured on server side.
        class CreateConversationModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of CreateConversationModel operation.
          module State
            # Invalid.
            STATE_UNSPECIFIED = 0

            # Request is submitted, but training has not started yet.
            # The model may remain in this state until there is enough capacity to
            # start training.
            PENDING = 1

            # The training has succeeded.
            SUCCEEDED = 2

            # The training has succeeded.
            FAILED = 3

            # The training has been cancelled.
            CANCELLED = 4

            # The training is in cancelling state.
            CANCELLING = 5

            # Custom model is training.
            TRAINING = 6
          end
        end

        # Metadata for a
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#deploy_conversation_model ConversationModels.DeployConversationModel}
        # operation.
        # @!attribute [rw] conversation_model
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model Id>`
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when request to deploy conversation model was submitted. The time
        #     is measured on server side.
        class DeployConversationModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for a
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#undeploy_conversation_model ConversationModels.UndeployConversationModel}
        # operation.
        # @!attribute [rw] conversation_model
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model Id>`
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when the request to undeploy conversation model was submitted.
        #     The time is measured on server side.
        class UndeployConversationModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for a
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#delete_conversation_model ConversationModels.DeleteConversationModel}
        # operation.
        # @!attribute [rw] conversation_model
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/conversationModels/<Conversation Model Id>`
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when delete conversation model request was created. The time is
        #     measured on server side.
        class DeleteConversationModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for a
        # {::Google::Cloud::Dialogflow::V2::ConversationModels::Client#create_conversation_model_evaluation ConversationModels.CreateConversationModelEvaluation}
        # operation.
        # @!attribute [rw] conversation_model_evaluation
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationModels/<Conversation Model Id>/evaluations/<Evaluation Id>`
        # @!attribute [rw] conversation_model
        #   @return [::String]
        #     The resource name of the conversation model. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationModels/<Conversation Model Id>`
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Dialogflow::V2::CreateConversationModelEvaluationOperationMetadata::State]
        #     State of CreateConversationModel operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when the request to create conversation model was submitted. The
        #     time is measured on server side.
        class CreateConversationModelEvaluationOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of CreateConversationModel operation.
          module State
            # Operation status not specified.
            STATE_UNSPECIFIED = 0

            # The operation is being prepared.
            INITIALIZING = 1

            # The operation is running.
            RUNNING = 2

            # The operation is cancelled.
            CANCELLED = 3

            # The operation has succeeded.
            SUCCEEDED = 4

            # The operation has failed.
            FAILED = 5
          end
        end
      end
    end
  end
end
