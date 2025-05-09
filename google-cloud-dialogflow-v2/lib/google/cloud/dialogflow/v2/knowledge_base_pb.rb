# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/knowledge_base.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n/google/cloud/dialogflow/v2/knowledge_base.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xfc\x01\n\rKnowledgeBase\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rlanguage_code\x18\x04 \x01(\t:\xaa\x01\xea\x41\xa6\x01\n\'dialogflow.googleapis.com/KnowledgeBase\x12\x32projects/{project}/knowledgeBases/{knowledge_base}\x12Gprojects/{project}/locations/{location}/knowledgeBases/{knowledge_base}\"\x93\x01\n\x19ListKnowledgeBasesRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'dialogflow.googleapis.com/KnowledgeBase\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"y\n\x1aListKnowledgeBasesResponse\x12\x42\n\x0fknowledge_bases\x18\x01 \x03(\x0b\x32).google.cloud.dialogflow.v2.KnowledgeBase\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"X\n\x17GetKnowledgeBaseRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'dialogflow.googleapis.com/KnowledgeBase\"\xa5\x01\n\x1a\x43reateKnowledgeBaseRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'dialogflow.googleapis.com/KnowledgeBase\x12\x46\n\x0eknowledge_base\x18\x02 \x01(\x0b\x32).google.cloud.dialogflow.v2.KnowledgeBaseB\x03\xe0\x41\x02\"o\n\x1a\x44\x65leteKnowledgeBaseRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'dialogflow.googleapis.com/KnowledgeBase\x12\x12\n\x05\x66orce\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"\x9a\x01\n\x1aUpdateKnowledgeBaseRequest\x12\x46\n\x0eknowledge_base\x18\x01 \x01(\x0b\x32).google.cloud.dialogflow.v2.KnowledgeBaseB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x32\xb4\r\n\x0eKnowledgeBases\x12\xa4\x02\n\x12ListKnowledgeBases\x12\x35.google.cloud.dialogflow.v2.ListKnowledgeBasesRequest\x1a\x36.google.cloud.dialogflow.v2.ListKnowledgeBasesResponse\"\x9e\x01\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x8e\x01\x12&/v2/{parent=projects/*}/knowledgeBasesZ4\x12\x32/v2/{parent=projects/*/locations/*}/knowledgeBasesZ.\x12,/v2/{parent=projects/*/agent}/knowledgeBases\x12\x91\x02\n\x10GetKnowledgeBase\x12\x33.google.cloud.dialogflow.v2.GetKnowledgeBaseRequest\x1a).google.cloud.dialogflow.v2.KnowledgeBase\"\x9c\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02\x8e\x01\x12&/v2/{name=projects/*/knowledgeBases/*}Z4\x12\x32/v2/{name=projects/*/locations/*/knowledgeBases/*}Z.\x12,/v2/{name=projects/*/agent/knowledgeBases/*}\x12\xd8\x02\n\x13\x43reateKnowledgeBase\x12\x36.google.cloud.dialogflow.v2.CreateKnowledgeBaseRequest\x1a).google.cloud.dialogflow.v2.KnowledgeBase\"\xdd\x01\xda\x41\x15parent,knowledge_base\x82\xd3\xe4\x93\x02\xbe\x01\"&/v2/{parent=projects/*}/knowledgeBases:\x0eknowledge_baseZD\"2/v2/{parent=projects/*/locations/*}/knowledgeBases:\x0eknowledge_baseZ>\",/v2/{parent=projects/*/agent}/knowledgeBases:\x0eknowledge_base\x12\x84\x02\n\x13\x44\x65leteKnowledgeBase\x12\x36.google.cloud.dialogflow.v2.DeleteKnowledgeBaseRequest\x1a\x16.google.protobuf.Empty\"\x9c\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02\x8e\x01*&/v2/{name=projects/*/knowledgeBases/*}Z4*2/v2/{name=projects/*/locations/*/knowledgeBases/*}Z.*,/v2/{name=projects/*/agent/knowledgeBases/*}\x12\x8a\x03\n\x13UpdateKnowledgeBase\x12\x36.google.cloud.dialogflow.v2.UpdateKnowledgeBaseRequest\x1a).google.cloud.dialogflow.v2.KnowledgeBase\"\x8f\x02\xda\x41\x1aknowledge_base,update_mask\x82\xd3\xe4\x93\x02\xeb\x01\x32\x35/v2/{knowledge_base.name=projects/*/knowledgeBases/*}:\x0eknowledge_baseZS2A/v2/{knowledge_base.name=projects/*/locations/*/knowledgeBases/*}:\x0eknowledge_baseZM2;/v2/{knowledge_base.name=projects/*/agent/knowledgeBases/*}:\x0eknowledge_base\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\x98\x01\n\x1e\x63om.google.cloud.dialogflow.v2B\x12KnowledgeBaseProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
        KnowledgeBase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.KnowledgeBase").msgclass
        ListKnowledgeBasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListKnowledgeBasesRequest").msgclass
        ListKnowledgeBasesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListKnowledgeBasesResponse").msgclass
        GetKnowledgeBaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetKnowledgeBaseRequest").msgclass
        CreateKnowledgeBaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateKnowledgeBaseRequest").msgclass
        DeleteKnowledgeBaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteKnowledgeBaseRequest").msgclass
        UpdateKnowledgeBaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateKnowledgeBaseRequest").msgclass
      end
    end
  end
end
