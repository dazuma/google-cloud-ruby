# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/contactcenterinsights/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/contactcenterinsights/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.contactcenterinsights.v1.Conversation" do
      optional :name, :string, 1
      optional :data_source, :message, 2, "google.cloud.contactcenterinsights.v1.ConversationDataSource"
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :start_time, :message, 17, "google.protobuf.Timestamp"
      optional :language_code, :string, 14
      optional :agent_id, :string, 5
      map :labels, :string, :string, 6
      optional :transcript, :message, 8, "google.cloud.contactcenterinsights.v1.Conversation.Transcript"
      optional :medium, :enum, 9, "google.cloud.contactcenterinsights.v1.Conversation.Medium"
      optional :duration, :message, 10, "google.protobuf.Duration"
      optional :turn_count, :int32, 11
      optional :latest_analysis, :message, 12, "google.cloud.contactcenterinsights.v1.Analysis"
      repeated :runtime_annotations, :message, 13, "google.cloud.contactcenterinsights.v1.RuntimeAnnotation"
      map :dialogflow_intents, :string, :message, 18, "google.cloud.contactcenterinsights.v1.DialogflowIntent"
      oneof :metadata do
        optional :call_metadata, :message, 7, "google.cloud.contactcenterinsights.v1.Conversation.CallMetadata"
      end
      oneof :expiration do
        optional :expire_time, :message, 15, "google.protobuf.Timestamp"
        optional :ttl, :message, 16, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.Conversation.CallMetadata" do
      optional :customer_channel, :int32, 1
      optional :agent_channel, :int32, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.Conversation.Transcript" do
      repeated :transcript_segments, :message, 1, "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment"
    end
    add_message "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment" do
      optional :message_time, :message, 6, "google.protobuf.Timestamp"
      optional :text, :string, 1
      optional :confidence, :float, 2
      repeated :words, :message, 3, "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.WordInfo"
      optional :language_code, :string, 4
      optional :channel_tag, :int32, 5
      optional :segment_participant, :message, 9, "google.cloud.contactcenterinsights.v1.ConversationParticipant"
      optional :dialogflow_segment_metadata, :message, 10, "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata"
      optional :sentiment, :message, 11, "google.cloud.contactcenterinsights.v1.SentimentData"
    end
    add_message "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.WordInfo" do
      optional :start_offset, :message, 1, "google.protobuf.Duration"
      optional :end_offset, :message, 2, "google.protobuf.Duration"
      optional :word, :string, 3
      optional :confidence, :float, 4
    end
    add_message "google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata" do
      optional :smart_reply_allowlist_covered, :bool, 1
    end
    add_enum "google.cloud.contactcenterinsights.v1.Conversation.Medium" do
      value :MEDIUM_UNSPECIFIED, 0
      value :PHONE_CALL, 1
      value :CHAT, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.Analysis" do
      optional :name, :string, 1
      optional :request_time, :message, 2, "google.protobuf.Timestamp"
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :analysis_result, :message, 7, "google.cloud.contactcenterinsights.v1.AnalysisResult"
    end
    add_message "google.cloud.contactcenterinsights.v1.ConversationDataSource" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.contactcenterinsights.v1.GcsSource"
        optional :dialogflow_source, :message, 3, "google.cloud.contactcenterinsights.v1.DialogflowSource"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.GcsSource" do
      optional :audio_uri, :string, 1
      optional :transcript_uri, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.DialogflowSource" do
      optional :dialogflow_conversation, :string, 1
      optional :audio_uri, :string, 3
    end
    add_message "google.cloud.contactcenterinsights.v1.AnalysisResult" do
      optional :end_time, :message, 1, "google.protobuf.Timestamp"
      oneof :metadata do
        optional :call_analysis_metadata, :message, 2, "google.cloud.contactcenterinsights.v1.AnalysisResult.CallAnalysisMetadata"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.AnalysisResult.CallAnalysisMetadata" do
      repeated :annotations, :message, 2, "google.cloud.contactcenterinsights.v1.CallAnnotation"
      map :entities, :string, :message, 3, "google.cloud.contactcenterinsights.v1.Entity"
      repeated :sentiments, :message, 4, "google.cloud.contactcenterinsights.v1.ConversationLevelSentiment"
      map :intents, :string, :message, 6, "google.cloud.contactcenterinsights.v1.Intent"
      map :phrase_matchers, :string, :message, 7, "google.cloud.contactcenterinsights.v1.PhraseMatchData"
      optional :issue_model_result, :message, 8, "google.cloud.contactcenterinsights.v1.IssueModelResult"
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueModelResult" do
      optional :issue_model, :string, 1
      repeated :issues, :message, 2, "google.cloud.contactcenterinsights.v1.IssueAssignment"
    end
    add_message "google.cloud.contactcenterinsights.v1.ConversationLevelSentiment" do
      optional :channel_tag, :int32, 1
      optional :sentiment_data, :message, 2, "google.cloud.contactcenterinsights.v1.SentimentData"
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueAssignment" do
      optional :issue, :string, 1
      optional :score, :double, 2
      optional :display_name, :string, 3
    end
    add_message "google.cloud.contactcenterinsights.v1.CallAnnotation" do
      optional :channel_tag, :int32, 1
      optional :annotation_start_boundary, :message, 4, "google.cloud.contactcenterinsights.v1.AnnotationBoundary"
      optional :annotation_end_boundary, :message, 5, "google.cloud.contactcenterinsights.v1.AnnotationBoundary"
      oneof :data do
        optional :interruption_data, :message, 10, "google.cloud.contactcenterinsights.v1.InterruptionData"
        optional :sentiment_data, :message, 11, "google.cloud.contactcenterinsights.v1.SentimentData"
        optional :silence_data, :message, 12, "google.cloud.contactcenterinsights.v1.SilenceData"
        optional :hold_data, :message, 13, "google.cloud.contactcenterinsights.v1.HoldData"
        optional :entity_mention_data, :message, 15, "google.cloud.contactcenterinsights.v1.EntityMentionData"
        optional :intent_match_data, :message, 16, "google.cloud.contactcenterinsights.v1.IntentMatchData"
        optional :phrase_match_data, :message, 17, "google.cloud.contactcenterinsights.v1.PhraseMatchData"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.AnnotationBoundary" do
      optional :transcript_index, :int32, 1
      oneof :detailed_boundary do
        optional :word_index, :int32, 3
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.Entity" do
      optional :display_name, :string, 1
      optional :type, :enum, 2, "google.cloud.contactcenterinsights.v1.Entity.Type"
      map :metadata, :string, :string, 3
      optional :salience, :float, 4
      optional :sentiment, :message, 5, "google.cloud.contactcenterinsights.v1.SentimentData"
    end
    add_enum "google.cloud.contactcenterinsights.v1.Entity.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :PERSON, 1
      value :LOCATION, 2
      value :ORGANIZATION, 3
      value :EVENT, 4
      value :WORK_OF_ART, 5
      value :CONSUMER_GOOD, 6
      value :OTHER, 7
      value :PHONE_NUMBER, 9
      value :ADDRESS, 10
      value :DATE, 11
      value :NUMBER, 12
      value :PRICE, 13
    end
    add_message "google.cloud.contactcenterinsights.v1.Intent" do
      optional :id, :string, 1
      optional :display_name, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.PhraseMatchData" do
      optional :phrase_matcher, :string, 1
      optional :display_name, :string, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.DialogflowIntent" do
      optional :display_name, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.InterruptionData" do
    end
    add_message "google.cloud.contactcenterinsights.v1.SilenceData" do
    end
    add_message "google.cloud.contactcenterinsights.v1.HoldData" do
    end
    add_message "google.cloud.contactcenterinsights.v1.EntityMentionData" do
      optional :entity_unique_id, :string, 1
      optional :type, :enum, 2, "google.cloud.contactcenterinsights.v1.EntityMentionData.MentionType"
      optional :sentiment, :message, 3, "google.cloud.contactcenterinsights.v1.SentimentData"
    end
    add_enum "google.cloud.contactcenterinsights.v1.EntityMentionData.MentionType" do
      value :MENTION_TYPE_UNSPECIFIED, 0
      value :PROPER, 1
      value :COMMON, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.IntentMatchData" do
      optional :intent_unique_id, :string, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.SentimentData" do
      optional :magnitude, :float, 1
      optional :score, :float, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueModel" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :state, :enum, 5, "google.cloud.contactcenterinsights.v1.IssueModel.State"
      optional :input_data_config, :message, 6, "google.cloud.contactcenterinsights.v1.IssueModel.InputDataConfig"
      optional :training_stats, :message, 7, "google.cloud.contactcenterinsights.v1.IssueModelLabelStats"
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueModel.InputDataConfig" do
      optional :medium, :enum, 1, "google.cloud.contactcenterinsights.v1.Conversation.Medium"
      optional :training_conversations_count, :int64, 2
      optional :filter, :string, 3
    end
    add_enum "google.cloud.contactcenterinsights.v1.IssueModel.State" do
      value :STATE_UNSPECIFIED, 0
      value :UNDEPLOYED, 1
      value :DEPLOYING, 2
      value :DEPLOYED, 3
      value :UNDEPLOYING, 4
      value :DELETING, 5
    end
    add_message "google.cloud.contactcenterinsights.v1.Issue" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueModelLabelStats" do
      optional :analyzed_conversations_count, :int64, 1
      optional :unclassified_conversations_count, :int64, 2
      map :issue_stats, :string, :message, 3, "google.cloud.contactcenterinsights.v1.IssueModelLabelStats.IssueStats"
    end
    add_message "google.cloud.contactcenterinsights.v1.IssueModelLabelStats.IssueStats" do
      optional :issue, :string, 1
      optional :labeled_conversations_count, :int64, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.PhraseMatcher" do
      optional :name, :string, 1
      optional :revision_id, :string, 2
      optional :version_tag, :string, 3
      optional :revision_create_time, :message, 4, "google.protobuf.Timestamp"
      optional :display_name, :string, 5
      optional :type, :enum, 6, "google.cloud.contactcenterinsights.v1.PhraseMatcher.PhraseMatcherType"
      optional :active, :bool, 7
      repeated :phrase_match_rule_groups, :message, 8, "google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup"
      optional :activation_update_time, :message, 9, "google.protobuf.Timestamp"
      optional :role_match, :enum, 10, "google.cloud.contactcenterinsights.v1.ConversationParticipant.Role"
      optional :update_time, :message, 11, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.contactcenterinsights.v1.PhraseMatcher.PhraseMatcherType" do
      value :PHRASE_MATCHER_TYPE_UNSPECIFIED, 0
      value :ALL_OF, 1
      value :ANY_OF, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup" do
      optional :type, :enum, 1, "google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType"
      repeated :phrase_match_rules, :message, 2, "google.cloud.contactcenterinsights.v1.PhraseMatchRule"
    end
    add_enum "google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType" do
      value :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED, 0
      value :ALL_OF, 1
      value :ANY_OF, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.PhraseMatchRule" do
      optional :query, :string, 1
      optional :negated, :bool, 2
      optional :config, :message, 3, "google.cloud.contactcenterinsights.v1.PhraseMatchRuleConfig"
    end
    add_message "google.cloud.contactcenterinsights.v1.PhraseMatchRuleConfig" do
      oneof :config do
        optional :exact_match_config, :message, 1, "google.cloud.contactcenterinsights.v1.ExactMatchConfig"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.ExactMatchConfig" do
      optional :case_sensitive, :bool, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.Settings" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      optional :language_code, :string, 4
      optional :conversation_ttl, :message, 5, "google.protobuf.Duration"
      map :pubsub_notification_settings, :string, :string, 6
      optional :analysis_config, :message, 7, "google.cloud.contactcenterinsights.v1.Settings.AnalysisConfig"
    end
    add_message "google.cloud.contactcenterinsights.v1.Settings.AnalysisConfig" do
      optional :runtime_integration_analysis_percentage, :double, 1
    end
    add_message "google.cloud.contactcenterinsights.v1.RuntimeAnnotation" do
      optional :annotation_id, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :start_boundary, :message, 3, "google.cloud.contactcenterinsights.v1.AnnotationBoundary"
      optional :end_boundary, :message, 4, "google.cloud.contactcenterinsights.v1.AnnotationBoundary"
      optional :answer_feedback, :message, 5, "google.cloud.contactcenterinsights.v1.AnswerFeedback"
      oneof :data do
        optional :article_suggestion, :message, 6, "google.cloud.contactcenterinsights.v1.ArticleSuggestionData"
        optional :faq_answer, :message, 7, "google.cloud.contactcenterinsights.v1.FaqAnswerData"
        optional :smart_reply, :message, 8, "google.cloud.contactcenterinsights.v1.SmartReplyData"
        optional :smart_compose_suggestion, :message, 9, "google.cloud.contactcenterinsights.v1.SmartComposeSuggestionData"
        optional :dialogflow_interaction, :message, 10, "google.cloud.contactcenterinsights.v1.DialogflowInteractionData"
      end
    end
    add_message "google.cloud.contactcenterinsights.v1.AnswerFeedback" do
      optional :correctness_level, :enum, 1, "google.cloud.contactcenterinsights.v1.AnswerFeedback.CorrectnessLevel"
      optional :clicked, :bool, 2
      optional :displayed, :bool, 3
    end
    add_enum "google.cloud.contactcenterinsights.v1.AnswerFeedback.CorrectnessLevel" do
      value :CORRECTNESS_LEVEL_UNSPECIFIED, 0
      value :NOT_CORRECT, 1
      value :PARTIALLY_CORRECT, 2
      value :FULLY_CORRECT, 3
    end
    add_message "google.cloud.contactcenterinsights.v1.ArticleSuggestionData" do
      optional :title, :string, 1
      optional :uri, :string, 2
      optional :confidence_score, :float, 3
      map :metadata, :string, :string, 4
      optional :query_record, :string, 5
      optional :source, :string, 6
    end
    add_message "google.cloud.contactcenterinsights.v1.FaqAnswerData" do
      optional :answer, :string, 1
      optional :confidence_score, :float, 2
      optional :question, :string, 3
      map :metadata, :string, :string, 4
      optional :query_record, :string, 5
      optional :source, :string, 6
    end
    add_message "google.cloud.contactcenterinsights.v1.SmartReplyData" do
      optional :reply, :string, 1
      optional :confidence_score, :double, 2
      map :metadata, :string, :string, 3
      optional :query_record, :string, 4
    end
    add_message "google.cloud.contactcenterinsights.v1.SmartComposeSuggestionData" do
      optional :suggestion, :string, 1
      optional :confidence_score, :double, 2
      map :metadata, :string, :string, 3
      optional :query_record, :string, 4
    end
    add_message "google.cloud.contactcenterinsights.v1.DialogflowInteractionData" do
      optional :dialogflow_intent_id, :string, 1
      optional :confidence, :float, 2
    end
    add_message "google.cloud.contactcenterinsights.v1.ConversationParticipant" do
      optional :dialogflow_participant, :string, 1
      optional :obfuscated_external_user_id, :string, 3
      optional :role, :enum, 2, "google.cloud.contactcenterinsights.v1.ConversationParticipant.Role"
      oneof :participant do
        optional :dialogflow_participant_name, :string, 5
        optional :user_id, :string, 6
      end
    end
    add_enum "google.cloud.contactcenterinsights.v1.ConversationParticipant.Role" do
      value :ROLE_UNSPECIFIED, 0
      value :HUMAN_AGENT, 1
      value :AUTOMATED_AGENT, 2
      value :END_USER, 3
      value :ANY_AGENT, 4
    end
  end
end

module Google
  module Cloud
    module ContactCenterInsights
      module V1
        Conversation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation").msgclass
        Conversation::CallMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.CallMetadata").msgclass
        Conversation::Transcript = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.Transcript").msgclass
        Conversation::Transcript::TranscriptSegment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment").msgclass
        Conversation::Transcript::TranscriptSegment::WordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.WordInfo").msgclass
        Conversation::Transcript::TranscriptSegment::DialogflowSegmentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata").msgclass
        Conversation::Medium = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Conversation.Medium").enummodule
        Analysis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Analysis").msgclass
        ConversationDataSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ConversationDataSource").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.GcsSource").msgclass
        DialogflowSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DialogflowSource").msgclass
        AnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.AnalysisResult").msgclass
        AnalysisResult::CallAnalysisMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.AnalysisResult.CallAnalysisMetadata").msgclass
        IssueModelResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModelResult").msgclass
        ConversationLevelSentiment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ConversationLevelSentiment").msgclass
        IssueAssignment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueAssignment").msgclass
        CallAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.CallAnnotation").msgclass
        AnnotationBoundary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.AnnotationBoundary").msgclass
        Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Entity").msgclass
        Entity::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Entity.Type").enummodule
        Intent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Intent").msgclass
        PhraseMatchData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatchData").msgclass
        DialogflowIntent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DialogflowIntent").msgclass
        InterruptionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.InterruptionData").msgclass
        SilenceData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.SilenceData").msgclass
        HoldData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.HoldData").msgclass
        EntityMentionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.EntityMentionData").msgclass
        EntityMentionData::MentionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.EntityMentionData.MentionType").enummodule
        IntentMatchData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IntentMatchData").msgclass
        SentimentData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.SentimentData").msgclass
        IssueModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModel").msgclass
        IssueModel::InputDataConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModel.InputDataConfig").msgclass
        IssueModel::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModel.State").enummodule
        Issue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Issue").msgclass
        IssueModelLabelStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModelLabelStats").msgclass
        IssueModelLabelStats::IssueStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.IssueModelLabelStats.IssueStats").msgclass
        PhraseMatcher = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatcher").msgclass
        PhraseMatcher::PhraseMatcherType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatcher.PhraseMatcherType").enummodule
        PhraseMatchRuleGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup").msgclass
        PhraseMatchRuleGroup::PhraseMatchRuleGroupType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType").enummodule
        PhraseMatchRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatchRule").msgclass
        PhraseMatchRuleConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.PhraseMatchRuleConfig").msgclass
        ExactMatchConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ExactMatchConfig").msgclass
        Settings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Settings").msgclass
        Settings::AnalysisConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.Settings.AnalysisConfig").msgclass
        RuntimeAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.RuntimeAnnotation").msgclass
        AnswerFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.AnswerFeedback").msgclass
        AnswerFeedback::CorrectnessLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.AnswerFeedback.CorrectnessLevel").enummodule
        ArticleSuggestionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ArticleSuggestionData").msgclass
        FaqAnswerData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.FaqAnswerData").msgclass
        SmartReplyData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.SmartReplyData").msgclass
        SmartComposeSuggestionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.SmartComposeSuggestionData").msgclass
        DialogflowInteractionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.DialogflowInteractionData").msgclass
        ConversationParticipant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ConversationParticipant").msgclass
        ConversationParticipant::Role = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.contactcenterinsights.v1.ConversationParticipant.Role").enummodule
      end
    end
  end
end
