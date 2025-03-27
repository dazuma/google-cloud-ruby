# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/discoveryengine/v1/conversational_search_service.proto for package 'Google.Cloud.DiscoveryEngine.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/discoveryengine/v1/conversational_search_service_pb'

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module ConversationalSearchService
          # Service for conversational search.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.discoveryengine.v1.ConversationalSearchService'

            # Converses a conversation.
            rpc :ConverseConversation, ::Google::Cloud::DiscoveryEngine::V1::ConverseConversationRequest, ::Google::Cloud::DiscoveryEngine::V1::ConverseConversationResponse
            # Creates a Conversation.
            #
            # If the [Conversation][google.cloud.discoveryengine.v1.Conversation] to
            # create already exists, an ALREADY_EXISTS error is returned.
            rpc :CreateConversation, ::Google::Cloud::DiscoveryEngine::V1::CreateConversationRequest, ::Google::Cloud::DiscoveryEngine::V1::Conversation
            # Deletes a Conversation.
            #
            # If the [Conversation][google.cloud.discoveryengine.v1.Conversation] to
            # delete does not exist, a NOT_FOUND error is returned.
            rpc :DeleteConversation, ::Google::Cloud::DiscoveryEngine::V1::DeleteConversationRequest, ::Google::Protobuf::Empty
            # Updates a Conversation.
            #
            # [Conversation][google.cloud.discoveryengine.v1.Conversation] action type
            # cannot be changed. If the
            # [Conversation][google.cloud.discoveryengine.v1.Conversation] to update does
            # not exist, a NOT_FOUND error is returned.
            rpc :UpdateConversation, ::Google::Cloud::DiscoveryEngine::V1::UpdateConversationRequest, ::Google::Cloud::DiscoveryEngine::V1::Conversation
            # Gets a Conversation.
            rpc :GetConversation, ::Google::Cloud::DiscoveryEngine::V1::GetConversationRequest, ::Google::Cloud::DiscoveryEngine::V1::Conversation
            # Lists all Conversations by their parent
            # [DataStore][google.cloud.discoveryengine.v1.DataStore].
            rpc :ListConversations, ::Google::Cloud::DiscoveryEngine::V1::ListConversationsRequest, ::Google::Cloud::DiscoveryEngine::V1::ListConversationsResponse
            # Answer query method.
            rpc :AnswerQuery, ::Google::Cloud::DiscoveryEngine::V1::AnswerQueryRequest, ::Google::Cloud::DiscoveryEngine::V1::AnswerQueryResponse
            # Answer query method (streaming).
            #
            # It takes one
            # [AnswerQueryRequest][google.cloud.discoveryengine.v1.AnswerQueryRequest]
            # and returns multiple
            # [AnswerQueryResponse][google.cloud.discoveryengine.v1.AnswerQueryResponse]
            # messages in a stream.
            rpc :StreamAnswerQuery, ::Google::Cloud::DiscoveryEngine::V1::AnswerQueryRequest, stream(::Google::Cloud::DiscoveryEngine::V1::AnswerQueryResponse)
            # Gets a Answer.
            rpc :GetAnswer, ::Google::Cloud::DiscoveryEngine::V1::GetAnswerRequest, ::Google::Cloud::DiscoveryEngine::V1::Answer
            # Creates a Session.
            #
            # If the [Session][google.cloud.discoveryengine.v1.Session] to create already
            # exists, an ALREADY_EXISTS error is returned.
            rpc :CreateSession, ::Google::Cloud::DiscoveryEngine::V1::CreateSessionRequest, ::Google::Cloud::DiscoveryEngine::V1::Session
            # Deletes a Session.
            #
            # If the [Session][google.cloud.discoveryengine.v1.Session] to delete does
            # not exist, a NOT_FOUND error is returned.
            rpc :DeleteSession, ::Google::Cloud::DiscoveryEngine::V1::DeleteSessionRequest, ::Google::Protobuf::Empty
            # Updates a Session.
            #
            # [Session][google.cloud.discoveryengine.v1.Session] action type cannot be
            # changed. If the [Session][google.cloud.discoveryengine.v1.Session] to
            # update does not exist, a NOT_FOUND error is returned.
            rpc :UpdateSession, ::Google::Cloud::DiscoveryEngine::V1::UpdateSessionRequest, ::Google::Cloud::DiscoveryEngine::V1::Session
            # Gets a Session.
            rpc :GetSession, ::Google::Cloud::DiscoveryEngine::V1::GetSessionRequest, ::Google::Cloud::DiscoveryEngine::V1::Session
            # Lists all Sessions by their parent
            # [DataStore][google.cloud.discoveryengine.v1.DataStore].
            rpc :ListSessions, ::Google::Cloud::DiscoveryEngine::V1::ListSessionsRequest, ::Google::Cloud::DiscoveryEngine::V1::ListSessionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
