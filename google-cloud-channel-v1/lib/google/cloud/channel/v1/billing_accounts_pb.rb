# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/billing_accounts.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n.google/cloud/channel/v1/billing_accounts.proto\x12\x17google.cloud.channel.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x90\x02\n\x0e\x42illingAccount\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x1b\n\rcurrency_code\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x19\n\x0bregion_code\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03:e\xea\x41\x62\n*cloudchannel.googleapis.com/BillingAccount\x12\x34\x61\x63\x63ounts/{account}/billingAccounts/{billing_account}Bl\n\x1b\x63om.google.cloud.channel.v1B\x14\x42illingAccountsProtoP\x01Z5cloud.google.com/go/channel/apiv1/channelpb;channelpbb\x06proto3"

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
    module Channel
      module V1
        BillingAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.BillingAccount").msgclass
      end
    end
  end
end
