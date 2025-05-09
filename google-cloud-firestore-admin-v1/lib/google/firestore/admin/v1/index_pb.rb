# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/index.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n%google/firestore/admin/v1/index.proto\x12\x19google.firestore.admin.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xed\n\n\x05Index\x12\x0c\n\x04name\x18\x01 \x01(\t\x12@\n\x0bquery_scope\x18\x02 \x01(\x0e\x32+.google.firestore.admin.v1.Index.QueryScope\x12<\n\tapi_scope\x18\x05 \x01(\x0e\x32).google.firestore.admin.v1.Index.ApiScope\x12;\n\x06\x66ields\x18\x03 \x03(\x0b\x32+.google.firestore.admin.v1.Index.IndexField\x12\x35\n\x05state\x18\x04 \x01(\x0e\x32&.google.firestore.admin.v1.Index.State\x12>\n\x07\x64\x65nsity\x18\x06 \x01(\x0e\x32(.google.firestore.admin.v1.Index.DensityB\x03\xe0\x41\x05\x12\x15\n\x08multikey\x18\x07 \x01(\x08\x42\x03\xe0\x41\x01\x12\x18\n\x0bshard_count\x18\x08 \x01(\x05\x42\x03\xe0\x41\x01\x1a\xa2\x04\n\nIndexField\x12\x12\n\nfield_path\x18\x01 \x01(\t\x12\x42\n\x05order\x18\x02 \x01(\x0e\x32\x31.google.firestore.admin.v1.Index.IndexField.OrderH\x00\x12O\n\x0c\x61rray_config\x18\x03 \x01(\x0e\x32\x37.google.firestore.admin.v1.Index.IndexField.ArrayConfigH\x00\x12Q\n\rvector_config\x18\x04 \x01(\x0b\x32\x38.google.firestore.admin.v1.Index.IndexField.VectorConfigH\x00\x1a\x8f\x01\n\x0cVectorConfig\x12\x16\n\tdimension\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x12R\n\x04\x66lat\x18\x02 \x01(\x0b\x32\x42.google.firestore.admin.v1.Index.IndexField.VectorConfig.FlatIndexH\x00\x1a\x0b\n\tFlatIndexB\x06\n\x04type\"=\n\x05Order\x12\x15\n\x11ORDER_UNSPECIFIED\x10\x00\x12\r\n\tASCENDING\x10\x01\x12\x0e\n\nDESCENDING\x10\x02\"9\n\x0b\x41rrayConfig\x12\x1c\n\x18\x41RRAY_CONFIG_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43ONTAINS\x10\x01\x42\x0c\n\nvalue_mode\"i\n\nQueryScope\x12\x1b\n\x17QUERY_SCOPE_UNSPECIFIED\x10\x00\x12\x0e\n\nCOLLECTION\x10\x01\x12\x14\n\x10\x43OLLECTION_GROUP\x10\x02\x12\x18\n\x14\x43OLLECTION_RECURSIVE\x10\x03\"K\n\x08\x41piScope\x12\x0b\n\x07\x41NY_API\x10\x00\x12\x16\n\x12\x44\x41TASTORE_MODE_API\x10\x01\x12\x1a\n\x16MONGODB_COMPATIBLE_API\x10\x02\"I\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x10\n\x0cNEEDS_REPAIR\x10\x03\"M\n\x07\x44\x65nsity\x12\x17\n\x13\x44\x45NSITY_UNSPECIFIED\x10\x00\x12\x0e\n\nSPARSE_ALL\x10\x01\x12\x0e\n\nSPARSE_ANY\x10\x02\x12\t\n\x05\x44\x45NSE\x10\x03:z\xea\x41w\n\x1e\x66irestore.googleapis.com/Index\x12Uprojects/{project}/databases/{database}/collectionGroups/{collection}/indexes/{index}B\xd9\x01\n\x1d\x63om.google.firestore.admin.v1B\nIndexProtoP\x01Z9cloud.google.com/go/firestore/apiv1/admin/adminpb;adminpb\xa2\x02\x04GCFS\xaa\x02\x1fGoogle.Cloud.Firestore.Admin.V1\xca\x02\x1fGoogle\\Cloud\\Firestore\\Admin\\V1\xea\x02#Google::Cloud::Firestore::Admin::V1b\x06proto3"

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
    module Firestore
      module Admin
        module V1
          Index = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index").msgclass
          Index::IndexField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField").msgclass
          Index::IndexField::VectorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.VectorConfig").msgclass
          Index::IndexField::VectorConfig::FlatIndex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.VectorConfig.FlatIndex").msgclass
          Index::IndexField::Order = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.Order").enummodule
          Index::IndexField::ArrayConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.ArrayConfig").enummodule
          Index::QueryScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.QueryScope").enummodule
          Index::ApiScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.ApiScope").enummodule
          Index::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.State").enummodule
          Index::Density = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.Density").enummodule
        end
      end
    end
  end
end
