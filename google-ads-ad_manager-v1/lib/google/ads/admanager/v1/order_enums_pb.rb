# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/order_enums.proto

require 'google/protobuf'


descriptor_data = "\n)google/ads/admanager/v1/order_enums.proto\x12\x17google.ads.admanager.v1\"\xa6\x01\n\x0fOrderStatusEnum\"\x92\x01\n\x0bOrderStatus\x12\x1c\n\x18ORDER_STATUS_UNSPECIFIED\x10\x00\x12\t\n\x05\x44RAFT\x10\x02\x12\x14\n\x10PENDING_APPROVAL\x10\x03\x12\x0c\n\x08\x41PPROVED\x10\x04\x12\x0f\n\x0b\x44ISAPPROVED\x10\x05\x12\n\n\x06PAUSED\x10\x06\x12\x0c\n\x08\x43\x41NCELED\x10\x07\x12\x0b\n\x07\x44\x45LETED\x10\x08\x42\xc3\x01\n\x1b\x63om.google.ads.admanager.v1B\x0fOrderEnumsProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
  module Ads
    module AdManager
      module V1
        OrderStatusEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.OrderStatusEnum").msgclass
        OrderStatusEnum::OrderStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.OrderStatusEnum.OrderStatus").enummodule
      end
    end
  end
end
