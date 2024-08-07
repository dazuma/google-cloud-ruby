# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/speech/v2/locations_metadata.proto

require 'google/protobuf'


descriptor_data = "\n/google/cloud/speech/v2/locations_metadata.proto\x12\x16google.cloud.speech.v2\"6\n\x0cModelFeature\x12\x0f\n\x07\x66\x65\x61ture\x18\x01 \x01(\t\x12\x15\n\rrelease_state\x18\x02 \x01(\t\"L\n\rModelFeatures\x12;\n\rmodel_feature\x18\x01 \x03(\x0b\x32$.google.cloud.speech.v2.ModelFeature\"\xbe\x01\n\rModelMetadata\x12P\n\x0emodel_features\x18\x01 \x03(\x0b\x32\x38.google.cloud.speech.v2.ModelMetadata.ModelFeaturesEntry\x1a[\n\x12ModelFeaturesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x34\n\x05value\x18\x02 \x01(\x0b\x32%.google.cloud.speech.v2.ModelFeatures:\x02\x38\x01\"\xae\x01\n\x10LanguageMetadata\x12\x44\n\x06models\x18\x01 \x03(\x0b\x32\x34.google.cloud.speech.v2.LanguageMetadata.ModelsEntry\x1aT\n\x0bModelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x34\n\x05value\x18\x02 \x01(\x0b\x32%.google.cloud.speech.v2.ModelMetadata:\x02\x38\x01\"\xc8\x01\n\x0e\x41\x63\x63\x65ssMetadata\x12N\n\x0f\x63onstraint_type\x18\x01 \x01(\x0e\x32\x35.google.cloud.speech.v2.AccessMetadata.ConstraintType\"f\n\x0e\x43onstraintType\x12\x1f\n\x1b\x43ONSTRAINT_TYPE_UNSPECIFIED\x10\x00\x12\x33\n/RESOURCE_LOCATIONS_ORG_POLICY_CREATE_CONSTRAINT\x10\x01\"\x91\x01\n\x11LocationsMetadata\x12;\n\tlanguages\x18\x01 \x01(\x0b\x32(.google.cloud.speech.v2.LanguageMetadata\x12?\n\x0f\x61\x63\x63\x65ss_metadata\x18\x02 \x01(\x0b\x32&.google.cloud.speech.v2.AccessMetadataBj\n\x1a\x63om.google.cloud.speech.v2B\x16LocationsMetadataProtoP\x01Z2cloud.google.com/go/speech/apiv2/speechpb;speechpbb\x06proto3"

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
    module Speech
      module V2
        ModelFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.ModelFeature").msgclass
        ModelFeatures = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.ModelFeatures").msgclass
        ModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.ModelMetadata").msgclass
        LanguageMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.LanguageMetadata").msgclass
        AccessMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.AccessMetadata").msgclass
        AccessMetadata::ConstraintType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.AccessMetadata.ConstraintType").enummodule
        LocationsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v2.LocationsMetadata").msgclass
      end
    end
  end
end
