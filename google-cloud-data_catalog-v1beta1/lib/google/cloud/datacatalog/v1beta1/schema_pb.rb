# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1beta1/schema.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n-google/cloud/datacatalog/v1beta1/schema.proto\x12 google.cloud.datacatalog.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\"N\n\x06Schema\x12\x44\n\x07\x63olumns\x18\x02 \x03(\x0b\x32..google.cloud.datacatalog.v1beta1.ColumnSchemaB\x03\xe0\x41\x02\"\xac\x01\n\x0c\x43olumnSchema\x12\x13\n\x06\x63olumn\x18\x06 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04mode\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12G\n\nsubcolumns\x18\x07 \x03(\x0b\x32..google.cloud.datacatalog.v1beta1.ColumnSchemaB\x03\xe0\x41\x01\x42\xdf\x01\n$com.google.cloud.datacatalog.v1beta1P\x01ZFcloud.google.com/go/datacatalog/apiv1beta1/datacatalogpb;datacatalogpb\xf8\x01\x01\xaa\x02 Google.Cloud.DataCatalog.V1Beta1\xca\x02 Google\\Cloud\\DataCatalog\\V1beta1\xea\x02#Google::Cloud::DataCatalog::V1beta1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
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
    module DataCatalog
      module V1beta1
        Schema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.Schema").msgclass
        ColumnSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ColumnSchema").msgclass
      end
    end
  end
end