# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/engine.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/common_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/discoveryengine/v1/engine.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/discoveryengine/v1/common.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa4\x0b\n\x06\x45ngine\x12V\n\x12\x63hat_engine_config\x18\x0b \x01(\x0b\x32\x38.google.cloud.discoveryengine.v1.Engine.ChatEngineConfigH\x00\x12Z\n\x14search_engine_config\x18\r \x01(\x0b\x32:.google.cloud.discoveryengine.v1.Engine.SearchEngineConfigH\x00\x12_\n\x14\x63hat_engine_metadata\x18\x0c \x01(\x0b\x32:.google.cloud.discoveryengine.v1.Engine.ChatEngineMetadataB\x03\xe0\x41\x03H\x01\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x16\n\x0e\x64\x61ta_store_ids\x18\x05 \x03(\t\x12I\n\rsolution_type\x18\x06 \x01(\x0e\x32-.google.cloud.discoveryengine.v1.SolutionTypeB\x03\xe0\x41\x02\x12L\n\x11industry_vertical\x18\x10 \x01(\x0e\x32\x31.google.cloud.discoveryengine.v1.IndustryVertical\x12K\n\rcommon_config\x18\x0f \x01(\x0b\x32\x34.google.cloud.discoveryengine.v1.Engine.CommonConfig\x12\x1e\n\x11\x64isable_analytics\x18\x1a \x01(\x08\x42\x03\xe0\x41\x01\x1a\x9c\x01\n\x12SearchEngineConfig\x12@\n\x0bsearch_tier\x18\x01 \x01(\x0e\x32+.google.cloud.discoveryengine.v1.SearchTier\x12\x44\n\x0esearch_add_ons\x18\x02 \x03(\x0e\x32,.google.cloud.discoveryengine.v1.SearchAddOn\x1a\xb4\x02\n\x10\x43hatEngineConfig\x12k\n\x15\x61gent_creation_config\x18\x01 \x01(\x0b\x32L.google.cloud.discoveryengine.v1.Engine.ChatEngineConfig.AgentCreationConfig\x12 \n\x18\x64ialogflow_agent_to_link\x18\x02 \x01(\t\x12\x1f\n\x12\x61llow_cross_region\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x1ap\n\x13\x41gentCreationConfig\x12\x10\n\x08\x62usiness\x18\x01 \x01(\t\x12\x1d\n\x15\x64\x65\x66\x61ult_language_code\x18\x02 \x01(\t\x12\x16\n\ttime_zone\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08location\x18\x04 \x01(\t\x1a$\n\x0c\x43ommonConfig\x12\x14\n\x0c\x63ompany_name\x18\x01 \x01(\t\x1a.\n\x12\x43hatEngineMetadata\x12\x18\n\x10\x64ialogflow_agent\x18\x01 \x01(\t:}\xea\x41z\n%discoveryengine.googleapis.com/Engine\x12Qprojects/{project}/locations/{location}/collections/{collection}/engines/{engine}B\x0f\n\rengine_configB\x11\n\x0f\x65ngine_metadataB\xfe\x01\n#com.google.cloud.discoveryengine.v1B\x0b\x45ngineProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    module DiscoveryEngine
      module V1
        Engine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine").msgclass
        Engine::SearchEngineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine.SearchEngineConfig").msgclass
        Engine::ChatEngineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine.ChatEngineConfig").msgclass
        Engine::ChatEngineConfig::AgentCreationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine.ChatEngineConfig.AgentCreationConfig").msgclass
        Engine::CommonConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine.CommonConfig").msgclass
        Engine::ChatEngineMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Engine.ChatEngineMetadata").msgclass
      end
    end
  end
end
