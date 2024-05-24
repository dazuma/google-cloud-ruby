# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkservices/v1/service_binding.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/networkservices/v1/service_binding.proto\x12\x1fgoogle.cloud.networkservices.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbf\x03\n\x0eServiceBinding\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x07service\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12P\n\x06labels\x18\x07 \x03(\x0b\x32;.google.cloud.networkservices.v1.ServiceBinding.LabelsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:}\xea\x41z\n-networkservices.googleapis.com/ServiceBinding\x12Iprojects/{project}/locations/{location}/serviceBindings/{service_binding}\"\x8a\x01\n\x1aListServiceBindingsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-networkservices.googleapis.com/ServiceBinding\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x81\x01\n\x1bListServiceBindingsResponse\x12I\n\x10service_bindings\x18\x01 \x03(\x0b\x32/.google.cloud.networkservices.v1.ServiceBinding\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"_\n\x18GetServiceBindingRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-networkservices.googleapis.com/ServiceBinding\"\xd4\x01\n\x1b\x43reateServiceBindingRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-networkservices.googleapis.com/ServiceBinding\x12\x1f\n\x12service_binding_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12M\n\x0fservice_binding\x18\x03 \x01(\x0b\x32/.google.cloud.networkservices.v1.ServiceBindingB\x03\xe0\x41\x02\"b\n\x1b\x44\x65leteServiceBindingRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-networkservices.googleapis.com/ServiceBindingB\xf4\x01\n#com.google.cloud.networkservices.v1B\x13ServiceBindingProtoP\x01ZMcloud.google.com/go/networkservices/apiv1/networkservicespb;networkservicespb\xaa\x02\x1fGoogle.Cloud.NetworkServices.V1\xca\x02\x1fGoogle\\Cloud\\NetworkServices\\V1\xea\x02\"Google::Cloud::NetworkServices::V1b\x06proto3"

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
    module NetworkServices
      module V1
        ServiceBinding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ServiceBinding").msgclass
        ListServiceBindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListServiceBindingsRequest").msgclass
        ListServiceBindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListServiceBindingsResponse").msgclass
        GetServiceBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GetServiceBindingRequest").msgclass
        CreateServiceBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.CreateServiceBindingRequest").msgclass
        DeleteServiceBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.DeleteServiceBindingRequest").msgclass
      end
    end
  end
end
