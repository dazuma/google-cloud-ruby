# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/conversation_profile_pb'
require 'google/cloud/dialogflow/v2/generator_pb'
require 'google/cloud/dialogflow/v2/participant_pb'
require 'google/cloud/dialogflow/v2/session_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/cloud/dialogflow/v2/conversation.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x35google/cloud/dialogflow/v2/conversation_profile.proto\x1a*google/cloud/dialogflow/v2/generator.proto\x1a,google/cloud/dialogflow/v2/participant.proto\x1a(google/cloud/dialogflow/v2/session.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe0\n\n\x0c\x43onversation\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x08\x12U\n\x0flifecycle_state\x18\x02 \x01(\x0e\x32\x37.google.cloud.dialogflow.v2.Conversation.LifecycleStateB\x03\xe0\x41\x03\x12S\n\x14\x63onversation_profile\x18\x03 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationProfile\x12N\n\x0cphone_number\x18\x04 \x01(\x0b\x32\x33.google.cloud.dialogflow.v2.ConversationPhoneNumberB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12[\n\x12\x63onversation_stage\x18\x07 \x01(\x0e\x32:.google.cloud.dialogflow.v2.Conversation.ConversationStageB\x03\xe0\x41\x01\x12h\n\x19telephony_connection_info\x18\n \x01(\x0b\x32@.google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfoB\x03\xe0\x41\x03\x1a\x8e\x03\n\x17TelephonyConnectionInfo\x12\x1a\n\rdialed_number\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03sdp\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x64\n\x0bsip_headers\x18\x0c \x03(\x0b\x32J.google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfo.SipHeaderB\x03\xe0\x41\x03\x12n\n\x13\x65xtra_mime_contents\x18\r \x03(\x0b\x32L.google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfo.MimeContentB\x03\xe0\x41\x03\x1a\x32\n\tSipHeader\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x01\x1a;\n\x0bMimeContent\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x14\n\x07\x63ontent\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x01\"Q\n\x0eLifecycleState\x12\x1f\n\x1bLIFECYCLE_STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\r\n\tCOMPLETED\x10\x02\"h\n\x11\x43onversationStage\x12\"\n\x1e\x43ONVERSATION_STAGE_UNSPECIFIED\x10\x00\x12\x17\n\x13VIRTUAL_AGENT_STAGE\x10\x01\x12\x16\n\x12HUMAN_ASSIST_STAGE\x10\x02:\xc0\x01\xea\x41\xbc\x01\n&dialogflow.googleapis.com/Conversation\x12/projects/{project}/conversations/{conversation}\x12\x44projects/{project}/locations/{location}/conversations/{conversation}*\rconversations2\x0c\x63onversation\"\xbe\x01\n\x19\x43reateConversationRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&dialogflow.googleapis.com/Conversation\x12\x43\n\x0c\x63onversation\x18\x02 \x01(\x0b\x32(.google.cloud.dialogflow.v2.ConversationB\x03\xe0\x41\x02\x12\x1c\n\x0f\x63onversation_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xa0\x01\n\x18ListConversationsRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&dialogflow.googleapis.com/Conversation\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"u\n\x19ListConversationsResponse\x12?\n\rconversations\x18\x01 \x03(\x0b\x32(.google.cloud.dialogflow.v2.Conversation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"V\n\x16GetConversationRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&dialogflow.googleapis.com/Conversation\"[\n\x1b\x43ompleteConversationRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&dialogflow.googleapis.com/Conversation\"\x96\x01\n\x13ListMessagesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!dialogflow.googleapis.com/Message\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"f\n\x14ListMessagesResponse\x12\x35\n\x08messages\x18\x01 \x03(\x0b\x32#.google.cloud.dialogflow.v2.Message\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"O\n\x17\x43onversationPhoneNumber\x12\x19\n\x0c\x63ountry_code\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x19\n\x0cphone_number\x18\x03 \x01(\tB\x03\xe0\x41\x03\"\x9c\x02\n!SuggestConversationSummaryRequest\x12\x44\n\x0c\x63onversation\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&dialogflow.googleapis.com/Conversation\x12\x41\n\x0elatest_message\x18\x03 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!dialogflow.googleapis.com/Message\x12\x19\n\x0c\x63ontext_size\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01\x12S\n\x13\x61ssist_query_params\x18\x05 \x01(\x0b\x32\x31.google.cloud.dialogflow.v2.AssistQueryParametersB\x03\xe0\x41\x01\"\xf7\x03\n\"SuggestConversationSummaryResponse\x12W\n\x07summary\x18\x01 \x01(\x0b\x32\x46.google.cloud.dialogflow.v2.SuggestConversationSummaryResponse.Summary\x12>\n\x0elatest_message\x18\x02 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Message\x12\x14\n\x0c\x63ontext_size\x18\x03 \x01(\x05\x1a\xa1\x02\n\x07Summary\x12\x0c\n\x04text\x18\x01 \x01(\t\x12o\n\rtext_sections\x18\x04 \x03(\x0b\x32X.google.cloud.dialogflow.v2.SuggestConversationSummaryResponse.Summary.TextSectionsEntry\x12\x42\n\ranswer_record\x18\x03 \x01(\tB+\xfa\x41(\n&dialogflow.googleapis.com/AnswerRecord\x12\x1e\n\x16\x62\x61seline_model_version\x18\x05 \x01(\t\x1a\x33\n\x11TextSectionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xdc\x03\n\x1fGenerateStatelessSummaryRequest\x12t\n\x16stateless_conversation\x18\x01 \x01(\x0b\x32O.google.cloud.dialogflow.v2.GenerateStatelessSummaryRequest.MinimalConversationB\x03\xe0\x41\x02\x12R\n\x14\x63onversation_profile\x18\x02 \x01(\x0b\x32/.google.cloud.dialogflow.v2.ConversationProfileB\x03\xe0\x41\x02\x12\x41\n\x0elatest_message\x18\x03 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!dialogflow.googleapis.com/Message\x12\x1d\n\x10max_context_size\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01\x1a\x8c\x01\n\x13MinimalConversation\x12:\n\x08messages\x18\x01 \x03(\x0b\x32#.google.cloud.dialogflow.v2.MessageB\x03\xe0\x41\x02\x12\x39\n\x06parent\x18\x02 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\"\xad\x03\n GenerateStatelessSummaryResponse\x12U\n\x07summary\x18\x01 \x01(\x0b\x32\x44.google.cloud.dialogflow.v2.GenerateStatelessSummaryResponse.Summary\x12>\n\x0elatest_message\x18\x02 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Message\x12\x14\n\x0c\x63ontext_size\x18\x03 \x01(\x05\x1a\xdb\x01\n\x07Summary\x12\x0c\n\x04text\x18\x01 \x01(\t\x12m\n\rtext_sections\x18\x02 \x03(\x0b\x32V.google.cloud.dialogflow.v2.GenerateStatelessSummaryResponse.Summary.TextSectionsEntry\x12\x1e\n\x16\x62\x61seline_model_version\x18\x04 \x01(\t\x1a\x33\n\x11TextSectionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xe6\x02\n\"GenerateStatelessSuggestionRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12:\n\tgenerator\x18\x02 \x01(\x0b\x32%.google.cloud.dialogflow.v2.GeneratorH\x00\x12\x18\n\x0egenerator_name\x18\x03 \x01(\tH\x00\x12R\n\x14\x63onversation_context\x18\x05 \x01(\x0b\x32/.google.cloud.dialogflow.v2.ConversationContextB\x03\xe0\x41\x01\x12\x45\n\x0etrigger_events\x18\x06 \x03(\x0e\x32(.google.cloud.dialogflow.v2.TriggerEventB\x03\xe0\x41\x01\x42\x14\n\x12generator_resource\"y\n#GenerateStatelessSuggestionResponse\x12R\n\x14generator_suggestion\x18\x01 \x01(\x0b\x32/.google.cloud.dialogflow.v2.GeneratorSuggestionB\x03\xe0\x41\x02\"\x9c\x12\n\x16SearchKnowledgeRequest\x12\x13\n\x06parent\x18\x06 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x05query\x18\x01 \x01(\x0b\x32%.google.cloud.dialogflow.v2.TextInputB\x03\xe0\x41\x02\x12S\n\x14\x63onversation_profile\x18\x02 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationProfile\x12\x17\n\nsession_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x0c\x63onversation\x18\x04 \x01(\tB.\xe0\x41\x01\xfa\x41(\n&dialogflow.googleapis.com/Conversation\x12\x41\n\x0elatest_message\x18\x05 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!dialogflow.googleapis.com/Message\x12Y\n\x0cquery_source\x18\x07 \x01(\x0e\x32>.google.cloud.dialogflow.v2.SearchKnowledgeRequest.QuerySourceB\x03\xe0\x41\x01\x12\x37\n\x11\x65nd_user_metadata\x18\t \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x01\x12[\n\rsearch_config\x18\x0b \x01(\x0b\x32?.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfigB\x03\xe0\x41\x01\x12\x19\n\x0c\x65xact_search\x18\x0e \x01(\x08\x42\x03\xe0\x41\x01\x1a\xdb\x0c\n\x0cSearchConfig\x12\x64\n\x0b\x62oost_specs\x18\x01 \x03(\x0b\x32J.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecsB\x03\xe0\x41\x01\x12\x66\n\x0c\x66ilter_specs\x18\x02 \x03(\x0b\x32K.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.FilterSpecsB\x03\xe0\x41\x01\x1a\xbe\n\n\nBoostSpecs\x12\x45\n\x0b\x64\x61ta_stores\x18\x01 \x03(\tB0\xe0\x41\x01\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12g\n\x04spec\x18\x02 \x03(\x0b\x32T.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpecB\x03\xe0\x41\x01\x1a\xff\x08\n\tBoostSpec\x12\x8b\x01\n\x15\x63ondition_boost_specs\x18\x01 \x03(\x0b\x32g.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpecB\x03\xe0\x41\x01\x1a\xe3\x07\n\x12\x43onditionBoostSpec\x12\x16\n\tcondition\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x62oost\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01\x12\x99\x01\n\x12\x62oost_control_spec\x18\x04 \x01(\x0b\x32x.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpecB\x03\xe0\x41\x01\x1a\x84\x06\n\x10\x42oostControlSpec\x12\x17\n\nfield_name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\xa4\x01\n\x0e\x61ttribute_type\x18\x02 \x01(\x0e\x32\x86\x01.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeTypeB\x03\xe0\x41\x01\x12\xac\x01\n\x12interpolation_type\x18\x03 \x01(\x0e\x32\x8a\x01.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationTypeB\x03\xe0\x41\x01\x12\xa3\x01\n\x0e\x63ontrol_points\x18\x04 \x03(\x0b\x32\x85\x01.google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPointB\x03\xe0\x41\x01\x1aG\n\x0c\x43ontrolPoint\x12\x1c\n\x0f\x61ttribute_value\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x62oost_amount\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01\"M\n\rAttributeType\x12\x1e\n\x1a\x41TTRIBUTE_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tNUMERICAL\x10\x01\x12\r\n\tFRESHNESS\x10\x02\"C\n\x11InterpolationType\x12\"\n\x1eINTERPOLATION_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06LINEAR\x10\x01\x1a<\n\x0b\x46ilterSpecs\x12\x18\n\x0b\x64\x61ta_stores\x18\x01 \x03(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\"Q\n\x0bQuerySource\x12\x1c\n\x18QUERY_SOURCE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x41GENT_QUERY\x10\x01\x12\x13\n\x0fSUGGESTED_QUERY\x10\x02\"v\n\x17SearchKnowledgeResponse\x12\x42\n\x07\x61nswers\x18\x02 \x03(\x0b\x32\x31.google.cloud.dialogflow.v2.SearchKnowledgeAnswer\x12\x17\n\x0frewritten_query\x18\x03 \x01(\t\"\xce\x03\n\x15SearchKnowledgeAnswer\x12\x0e\n\x06\x61nswer\x18\x01 \x01(\t\x12Q\n\x0b\x61nswer_type\x18\x02 \x01(\x0e\x32<.google.cloud.dialogflow.v2.SearchKnowledgeAnswer.AnswerType\x12V\n\x0e\x61nswer_sources\x18\x03 \x03(\x0b\x32>.google.cloud.dialogflow.v2.SearchKnowledgeAnswer.AnswerSource\x12\x42\n\ranswer_record\x18\x05 \x01(\tB+\xfa\x41(\n&dialogflow.googleapis.com/AnswerRecord\x1a\x66\n\x0c\x41nswerSource\x12\r\n\x05title\x18\x01 \x01(\t\x12\x0b\n\x03uri\x18\x02 \x01(\t\x12\x0f\n\x07snippet\x18\x03 \x01(\t\x12)\n\x08metadata\x18\x05 \x01(\x0b\x32\x17.google.protobuf.Struct\"N\n\nAnswerType\x12\x1b\n\x17\x41NSWER_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03\x46\x41Q\x10\x01\x12\x0e\n\nGENERATIVE\x10\x02\x12\n\n\x06INTENT\x10\x03\x32\xd3\x15\n\rConversations\x12\x8c\x02\n\x12\x43reateConversation\x12\x35.google.cloud.dialogflow.v2.CreateConversationRequest\x1a(.google.cloud.dialogflow.v2.Conversation\"\x94\x01\xda\x41\x13parent,conversation\x82\xd3\xe4\x93\x02x\"%/v2/{parent=projects/*}/conversations:\x0c\x63onversationZA\"1/v2/{parent=projects/*/locations/*}/conversations:\x0c\x63onversation\x12\xed\x01\n\x11ListConversations\x12\x34.google.cloud.dialogflow.v2.ListConversationsRequest\x1a\x35.google.cloud.dialogflow.v2.ListConversationsResponse\"k\xda\x41\x06parent\x82\xd3\xe4\x93\x02\\\x12%/v2/{parent=projects/*}/conversationsZ3\x12\x31/v2/{parent=projects/*/locations/*}/conversations\x12\xda\x01\n\x0fGetConversation\x12\x32.google.cloud.dialogflow.v2.GetConversationRequest\x1a(.google.cloud.dialogflow.v2.Conversation\"i\xda\x41\x04name\x82\xd3\xe4\x93\x02\\\x12%/v2/{name=projects/*/conversations/*}Z3\x12\x31/v2/{name=projects/*/locations/*/conversations/*}\x12\xfd\x01\n\x14\x43ompleteConversation\x12\x37.google.cloud.dialogflow.v2.CompleteConversationRequest\x1a(.google.cloud.dialogflow.v2.Conversation\"\x81\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02t\"./v2/{name=projects/*/conversations/*}:complete:\x01*Z?\":/v2/{name=projects/*/locations/*/conversations/*}:complete:\x01*\x12\xf5\x01\n\x0cListMessages\x12/.google.cloud.dialogflow.v2.ListMessagesRequest\x1a\x30.google.cloud.dialogflow.v2.ListMessagesResponse\"\x81\x01\xda\x41\x06parent\x82\xd3\xe4\x93\x02r\x12\x30/v2/{parent=projects/*/conversations/*}/messagesZ>\x12</v2/{parent=projects/*/locations/*/conversations/*}/messages\x12\xf4\x02\n\x1aSuggestConversationSummary\x12=.google.cloud.dialogflow.v2.SuggestConversationSummaryRequest\x1a>.google.cloud.dialogflow.v2.SuggestConversationSummaryResponse\"\xd6\x01\xda\x41\x0c\x63onversation\x82\xd3\xe4\x93\x02\xc0\x01\"T/v2/{conversation=projects/*/conversations/*}/suggestions:suggestConversationSummary:\x01*Ze\"`/v2/{conversation=projects/*/locations/*/conversations/*}/suggestions:suggestConversationSummary:\x01*\x12\xdd\x02\n\x18GenerateStatelessSummary\x12;.google.cloud.dialogflow.v2.GenerateStatelessSummaryRequest\x1a<.google.cloud.dialogflow.v2.GenerateStatelessSummaryResponse\"\xc5\x01\x82\xd3\xe4\x93\x02\xbe\x01\"S/v2/{stateless_conversation.parent=projects/*}/suggestions:generateStatelessSummary:\x01*Zd\"_/v2/{stateless_conversation.parent=projects/*/locations/*}/suggestions:generateStatelessSummary:\x01*\x12\xeb\x01\n\x1bGenerateStatelessSuggestion\x12>.google.cloud.dialogflow.v2.GenerateStatelessSuggestionRequest\x1a?.google.cloud.dialogflow.v2.GenerateStatelessSuggestionResponse\"K\x82\xd3\xe4\x93\x02\x45\"@/v2/{parent=projects/*/locations/*}/statelessSuggestion:generate:\x01*\x12\xae\x03\n\x0fSearchKnowledge\x12\x32.google.cloud.dialogflow.v2.SearchKnowledgeRequest\x1a\x33.google.cloud.dialogflow.v2.SearchKnowledgeResponse\"\xb1\x02\x82\xd3\xe4\x93\x02\xaa\x02\"3/v2/{parent=projects/*}/suggestions:searchKnowledge:\x01*ZD\"?/v2/{parent=projects/*/locations/*}/suggestions:searchKnowledge:\x01*ZN\"I/v2/{conversation=projects/*/conversations/*}/suggestions:searchKnowledge:\x01*ZZ\"U/v2/{conversation=projects/*/locations/*/conversations/*}/suggestions:searchKnowledge:\x01*\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xe0\x02\n\x1e\x63om.google.cloud.dialogflow.v2B\x11\x43onversationProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2\xea\x41\xc5\x01\n(discoveryengine.googleapis.com/DataStore\x12Xprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}\x12?projects/{project}/locations/{location}/dataStores/{data_store}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.dialogflow.v2.Message", "google/cloud/dialogflow/v2/participant.proto"],
    ["google.cloud.dialogflow.v2.ConversationProfile", "google/cloud/dialogflow/v2/conversation_profile.proto"],
    ["google.cloud.dialogflow.v2.Generator", "google/cloud/dialogflow/v2/generator.proto"],
    ["google.cloud.dialogflow.v2.TextInput", "google/cloud/dialogflow/v2/session.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module V2
        Conversation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation").msgclass
        Conversation::TelephonyConnectionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfo").msgclass
        Conversation::TelephonyConnectionInfo::SipHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfo.SipHeader").msgclass
        Conversation::TelephonyConnectionInfo::MimeContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation.TelephonyConnectionInfo.MimeContent").msgclass
        Conversation::LifecycleState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation.LifecycleState").enummodule
        Conversation::ConversationStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Conversation.ConversationStage").enummodule
        CreateConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationRequest").msgclass
        ListConversationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationsRequest").msgclass
        ListConversationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationsResponse").msgclass
        GetConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetConversationRequest").msgclass
        CompleteConversationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CompleteConversationRequest").msgclass
        ListMessagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListMessagesRequest").msgclass
        ListMessagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListMessagesResponse").msgclass
        ConversationPhoneNumber = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationPhoneNumber").msgclass
        SuggestConversationSummaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestConversationSummaryRequest").msgclass
        SuggestConversationSummaryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestConversationSummaryResponse").msgclass
        SuggestConversationSummaryResponse::Summary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestConversationSummaryResponse.Summary").msgclass
        GenerateStatelessSummaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSummaryRequest").msgclass
        GenerateStatelessSummaryRequest::MinimalConversation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSummaryRequest.MinimalConversation").msgclass
        GenerateStatelessSummaryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSummaryResponse").msgclass
        GenerateStatelessSummaryResponse::Summary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSummaryResponse.Summary").msgclass
        GenerateStatelessSuggestionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSuggestionRequest").msgclass
        GenerateStatelessSuggestionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GenerateStatelessSuggestionResponse").msgclass
        SearchKnowledgeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest").msgclass
        SearchKnowledgeRequest::SearchConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec::ConditionBoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec::ConditionBoostSpec::BoostControlSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec::ConditionBoostSpec::BoostControlSpec::ControlPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint").msgclass
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec::ConditionBoostSpec::BoostControlSpec::AttributeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType").enummodule
        SearchKnowledgeRequest::SearchConfig::BoostSpecs::BoostSpec::ConditionBoostSpec::BoostControlSpec::InterpolationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType").enummodule
        SearchKnowledgeRequest::SearchConfig::FilterSpecs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.SearchConfig.FilterSpecs").msgclass
        SearchKnowledgeRequest::QuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeRequest.QuerySource").enummodule
        SearchKnowledgeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeResponse").msgclass
        SearchKnowledgeAnswer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeAnswer").msgclass
        SearchKnowledgeAnswer::AnswerSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeAnswer.AnswerSource").msgclass
        SearchKnowledgeAnswer::AnswerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchKnowledgeAnswer.AnswerType").enummodule
      end
    end
  end
end
