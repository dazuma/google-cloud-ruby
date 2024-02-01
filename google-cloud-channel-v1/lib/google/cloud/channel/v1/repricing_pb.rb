# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/repricing.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'
require 'google/type/decimal_pb'


descriptor_data = "\n\'google/cloud/channel/v1/repricing.proto\x12\x17google.cloud.channel.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x16google/type/date.proto\x1a\x19google/type/decimal.proto\"\xc8\x02\n\x17\x43ustomerRepricingConfig\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12H\n\x10repricing_config\x18\x02 \x01(\x0b\x32(.google.cloud.channel.v1.RepricingConfigB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03:\x97\x01\xea\x41\x93\x01\n3cloudchannel.googleapis.com/CustomerRepricingConfig\x12\\accounts/{account}/customers/{customer}/customerRepricingConfigs/{customer_repricing_config}\"\xf2\x02\n\x1d\x43hannelPartnerRepricingConfig\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12H\n\x10repricing_config\x18\x02 \x01(\x0b\x32(.google.cloud.channel.v1.RepricingConfigB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03:\xbb\x01\xea\x41\xb7\x01\n9cloudchannel.googleapis.com/ChannelPartnerRepricingConfig\x12zaccounts/{account}/channelPartnerLinks/{channel_partner}/channelPartnerRepricingConfigs/{channel_partner_repricing_config}\"\x88\x05\n\x0fRepricingConfig\x12\x62\n\x17\x65ntitlement_granularity\x18\x04 \x01(\x0b\x32?.google.cloud.channel.v1.RepricingConfig.EntitlementGranularityH\x00\x12m\n\x1b\x63hannel_partner_granularity\x18\x05 \x01(\x0b\x32\x42.google.cloud.channel.v1.RepricingConfig.ChannelPartnerGranularityB\x02\x18\x01H\x00\x12\x38\n\x17\x65\x66\x66\x65\x63tive_invoice_month\x18\x01 \x01(\x0b\x32\x11.google.type.DateB\x04\xe2\x41\x01\x02\x12\x46\n\nadjustment\x18\x02 \x01(\x0b\x32,.google.cloud.channel.v1.RepricingAdjustmentB\x04\xe2\x41\x01\x02\x12\x46\n\x0frebilling_basis\x18\x03 \x01(\x0e\x32\'.google.cloud.channel.v1.RebillingBasisB\x04\xe2\x41\x01\x02\x12K\n\x15\x63onditional_overrides\x18\x06 \x03(\x0b\x32,.google.cloud.channel.v1.ConditionalOverride\x1a[\n\x16\x45ntitlementGranularity\x12\x41\n\x0b\x65ntitlement\x18\x01 \x01(\tB,\xfa\x41)\n\'cloudchannel.googleapis.com/Entitlement\x1a\x1f\n\x19\x43hannelPartnerGranularity:\x02\x18\x01\x42\r\n\x0bgranularity\"s\n\x13RepricingAdjustment\x12N\n\x15percentage_adjustment\x18\x02 \x01(\x0b\x32-.google.cloud.channel.v1.PercentageAdjustmentH\x00\x42\x0c\n\nadjustment\"@\n\x14PercentageAdjustment\x12(\n\npercentage\x18\x02 \x01(\x0b\x32\x14.google.type.Decimal\"\xf5\x01\n\x13\x43onditionalOverride\x12\x46\n\nadjustment\x18\x01 \x01(\x0b\x32,.google.cloud.channel.v1.RepricingAdjustmentB\x04\xe2\x41\x01\x02\x12\x46\n\x0frebilling_basis\x18\x02 \x01(\x0e\x32\'.google.cloud.channel.v1.RebillingBasisB\x04\xe2\x41\x01\x02\x12N\n\x13repricing_condition\x18\x03 \x01(\x0b\x32+.google.cloud.channel.v1.RepricingConditionB\x04\xe2\x41\x01\x02\"l\n\x12RepricingCondition\x12I\n\x13sku_group_condition\x18\x01 \x01(\x0b\x32*.google.cloud.channel.v1.SkuGroupConditionH\x00\x42\x0b\n\tcondition\"&\n\x11SkuGroupCondition\x12\x11\n\tsku_group\x18\x01 \x01(\t*]\n\x0eRebillingBasis\x12\x1f\n\x1bREBILLING_BASIS_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x43OST_AT_LIST\x10\x01\x12\x18\n\x14\x44IRECT_CUSTOMER_COST\x10\x02\x42\x66\n\x1b\x63om.google.cloud.channel.v1B\x0eRepricingProtoP\x01Z5cloud.google.com/go/channel/apiv1/channelpb;channelpbb\x06proto3"

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
    ["google.type.Date", "google/type/date.proto"],
    ["google.type.Decimal", "google/type/decimal.proto"],
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
        CustomerRepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CustomerRepricingConfig").msgclass
        ChannelPartnerRepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.ChannelPartnerRepricingConfig").msgclass
        RepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig").msgclass
        RepricingConfig::EntitlementGranularity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig.EntitlementGranularity").msgclass
        RepricingConfig::ChannelPartnerGranularity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig.ChannelPartnerGranularity").msgclass
        RepricingAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingAdjustment").msgclass
        PercentageAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.PercentageAdjustment").msgclass
        ConditionalOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.ConditionalOverride").msgclass
        RepricingCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingCondition").msgclass
        SkuGroupCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.SkuGroupCondition").msgclass
        RebillingBasis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RebillingBasis").enummodule
      end
    end
  end
end
