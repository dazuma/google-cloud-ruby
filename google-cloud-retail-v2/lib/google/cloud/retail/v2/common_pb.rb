# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/cloud/retail/v2/common.proto\x12\x16google.cloud.retail.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc9\x02\n\tCondition\x12@\n\x0bquery_terms\x18\x01 \x03(\x0b\x32+.google.cloud.retail.v2.Condition.QueryTerm\x12\x46\n\x11\x61\x63tive_time_range\x18\x03 \x03(\x0b\x32+.google.cloud.retail.v2.Condition.TimeRange\x12\x17\n\x0fpage_categories\x18\x04 \x03(\t\x1a.\n\tQueryTerm\x12\r\n\x05value\x18\x01 \x01(\t\x12\x12\n\nfull_match\x18\x02 \x01(\x08\x1ai\n\tTimeRange\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xea\r\n\x04Rule\x12@\n\x0c\x62oost_action\x18\x02 \x01(\x0b\x32(.google.cloud.retail.v2.Rule.BoostActionH\x00\x12\x46\n\x0fredirect_action\x18\x03 \x01(\x0b\x32+.google.cloud.retail.v2.Rule.RedirectActionH\x00\x12S\n\x16oneway_synonyms_action\x18\x06 \x01(\x0b\x32\x31.google.cloud.retail.v2.Rule.OnewaySynonymsActionH\x00\x12T\n\x17\x64o_not_associate_action\x18\x07 \x01(\x0b\x32\x31.google.cloud.retail.v2.Rule.DoNotAssociateActionH\x00\x12L\n\x12replacement_action\x18\x08 \x01(\x0b\x32..google.cloud.retail.v2.Rule.ReplacementActionH\x00\x12\x42\n\rignore_action\x18\t \x01(\x0b\x32).google.cloud.retail.v2.Rule.IgnoreActionH\x00\x12\x42\n\rfilter_action\x18\n \x01(\x0b\x32).google.cloud.retail.v2.Rule.FilterActionH\x00\x12S\n\x16twoway_synonyms_action\x18\x0b \x01(\x0b\x32\x31.google.cloud.retail.v2.Rule.TwowaySynonymsActionH\x00\x12X\n\x19\x66orce_return_facet_action\x18\x0c \x01(\x0b\x32\x33.google.cloud.retail.v2.Rule.ForceReturnFacetActionH\x00\x12M\n\x13remove_facet_action\x18\r \x01(\x0b\x32..google.cloud.retail.v2.Rule.RemoveFacetActionH\x00\x12<\n\npin_action\x18\x0e \x01(\x0b\x32&.google.cloud.retail.v2.Rule.PinActionH\x00\x12\x39\n\tcondition\x18\x01 \x01(\x0b\x32!.google.cloud.retail.v2.ConditionB\x03\xe0\x41\x02\x1a\x35\n\x0b\x42oostAction\x12\r\n\x05\x62oost\x18\x01 \x01(\x02\x12\x17\n\x0fproducts_filter\x18\x02 \x01(\t\x1a\x1e\n\x0c\x46ilterAction\x12\x0e\n\x06\x66ilter\x18\x01 \x01(\t\x1a&\n\x0eRedirectAction\x12\x14\n\x0credirect_uri\x18\x01 \x01(\t\x1a(\n\x14TwowaySynonymsAction\x12\x10\n\x08synonyms\x18\x01 \x03(\t\x1aS\n\x14OnewaySynonymsAction\x12\x13\n\x0bquery_terms\x18\x03 \x03(\t\x12\x10\n\x08synonyms\x18\x04 \x03(\t\x12\x14\n\x0coneway_terms\x18\x02 \x03(\t\x1aZ\n\x14\x44oNotAssociateAction\x12\x13\n\x0bquery_terms\x18\x02 \x03(\t\x12\x1e\n\x16\x64o_not_associate_terms\x18\x03 \x03(\t\x12\r\n\x05terms\x18\x01 \x03(\t\x1aP\n\x11ReplacementAction\x12\x13\n\x0bquery_terms\x18\x02 \x03(\t\x12\x18\n\x10replacement_term\x18\x03 \x01(\t\x12\x0c\n\x04term\x18\x01 \x01(\t\x1a$\n\x0cIgnoreAction\x12\x14\n\x0cignore_terms\x18\x01 \x03(\t\x1a\xce\x01\n\x16\x46orceReturnFacetAction\x12o\n\x1a\x66\x61\x63\x65t_position_adjustments\x18\x01 \x03(\x0b\x32K.google.cloud.retail.v2.Rule.ForceReturnFacetAction.FacetPositionAdjustment\x1a\x43\n\x17\x46\x61\x63\x65tPositionAdjustment\x12\x16\n\x0e\x61ttribute_name\x18\x01 \x01(\t\x12\x10\n\x08position\x18\x02 \x01(\x05\x1a,\n\x11RemoveFacetAction\x12\x17\n\x0f\x61ttribute_names\x18\x01 \x03(\t\x1a\x84\x01\n\tPinAction\x12H\n\x07pin_map\x18\x01 \x03(\x0b\x32\x32.google.cloud.retail.v2.Rule.PinAction.PinMapEntryB\x03\xe0\x41\x02\x1a-\n\x0bPinMapEntry\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x08\n\x06\x61\x63tion\"/\n\x08\x41udience\x12\x0f\n\x07genders\x18\x01 \x03(\t\x12\x12\n\nage_groups\x18\x02 \x03(\t\"3\n\tColorInfo\x12\x16\n\x0e\x63olor_families\x18\x01 \x03(\t\x12\x0e\n\x06\x63olors\x18\x02 \x03(\t\"\x86\x01\n\x0f\x43ustomAttribute\x12\x0c\n\x04text\x18\x01 \x03(\t\x12\x0f\n\x07numbers\x18\x02 \x03(\x01\x12\x1b\n\nsearchable\x18\x03 \x01(\x08\x42\x02\x18\x01H\x00\x88\x01\x01\x12\x1a\n\tindexable\x18\x04 \x01(\x08\x42\x02\x18\x01H\x01\x88\x01\x01\x42\r\n\x0b_searchableB\x0c\n\n_indexable\"2\n\x0f\x46ulfillmentInfo\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x11\n\tplace_ids\x18\x02 \x03(\t\"8\n\x05Image\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0e\n\x06height\x18\x02 \x01(\x05\x12\r\n\x05width\x18\x03 \x01(\x05\"x\n\x08Interval\x12\x11\n\x07minimum\x18\x01 \x01(\x01H\x00\x12\x1b\n\x11\x65xclusive_minimum\x18\x02 \x01(\x01H\x00\x12\x11\n\x07maximum\x18\x03 \x01(\x01H\x01\x12\x1b\n\x11\x65xclusive_maximum\x18\x04 \x01(\x01H\x01\x42\x05\n\x03minB\x05\n\x03max\"\x89\x03\n\tPriceInfo\x12\x15\n\rcurrency_code\x18\x01 \x01(\t\x12\r\n\x05price\x18\x02 \x01(\x02\x12\x16\n\x0eoriginal_price\x18\x03 \x01(\x02\x12\x0c\n\x04\x63ost\x18\x04 \x01(\x02\x12\x38\n\x14price_effective_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x35\n\x11price_expire_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x46\n\x0bprice_range\x18\x07 \x01(\x0b\x32,.google.cloud.retail.v2.PriceInfo.PriceRangeB\x03\xe0\x41\x03\x1aw\n\nPriceRange\x12/\n\x05price\x18\x01 \x01(\x0b\x32 .google.cloud.retail.v2.Interval\x12\x38\n\x0eoriginal_price\x18\x02 \x01(\x0b\x32 .google.cloud.retail.v2.Interval\"P\n\x06Rating\x12\x14\n\x0crating_count\x18\x01 \x01(\x05\x12\x16\n\x0e\x61verage_rating\x18\x02 \x01(\x02\x12\x18\n\x10rating_histogram\x18\x03 \x03(\x05\"`\n\x08UserInfo\x12\x0f\n\x07user_id\x18\x01 \x01(\t\x12\x12\n\nip_address\x18\x02 \x01(\t\x12\x12\n\nuser_agent\x18\x03 \x01(\t\x12\x1b\n\x13\x64irect_user_request\x18\x04 \x01(\x08\"\xb0\x02\n\x0eLocalInventory\x12\x15\n\x08place_id\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12:\n\nprice_info\x18\x02 \x01(\x0b\x32!.google.cloud.retail.v2.PriceInfoB\x03\xe0\x41\x01\x12O\n\nattributes\x18\x03 \x03(\x0b\x32\x36.google.cloud.retail.v2.LocalInventory.AttributesEntryB\x03\xe0\x41\x01\x12\x1e\n\x11\x66ulfillment_types\x18\x04 \x03(\tB\x03\xe0\x41\x01\x1aZ\n\x0f\x41ttributesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x36\n\x05value\x18\x02 \x01(\x0b\x32\'.google.cloud.retail.v2.CustomAttribute:\x02\x38\x01\"\xbf\x03\n\x12PinControlMetadata\x12X\n\x10\x61ll_matched_pins\x18\x01 \x03(\x0b\x32>.google.cloud.retail.v2.PinControlMetadata.AllMatchedPinsEntry\x12Q\n\x0c\x64ropped_pins\x18\x02 \x03(\x0b\x32;.google.cloud.retail.v2.PinControlMetadata.DroppedPinsEntry\x1a!\n\x0bProductPins\x12\x12\n\nproduct_id\x18\x01 \x03(\t\x1am\n\x13\x41llMatchedPinsEntry\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\x45\n\x05value\x18\x02 \x01(\x0b\x32\x36.google.cloud.retail.v2.PinControlMetadata.ProductPins:\x02\x38\x01\x1aj\n\x10\x44roppedPinsEntry\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\x45\n\x05value\x18\x02 \x01(\x0b\x32\x36.google.cloud.retail.v2.PinControlMetadata.ProductPins:\x02\x38\x01\"\x1c\n\nStringList\x12\x0e\n\x06values\x18\x01 \x03(\t\"\x1c\n\nDoubleList\x12\x0e\n\x06values\x18\x01 \x03(\x01*\x86\x01\n\x14\x41ttributeConfigLevel\x12&\n\"ATTRIBUTE_CONFIG_LEVEL_UNSPECIFIED\x10\x00\x12\"\n\x1ePRODUCT_LEVEL_ATTRIBUTE_CONFIG\x10\x01\x12\"\n\x1e\x43\x41TALOG_LEVEL_ATTRIBUTE_CONFIG\x10\x02*i\n\x0cSolutionType\x12\x1d\n\x19SOLUTION_TYPE_UNSPECIFIED\x10\x00\x12 \n\x1cSOLUTION_TYPE_RECOMMENDATION\x10\x01\x12\x18\n\x14SOLUTION_TYPE_SEARCH\x10\x02*\xa1\x01\n\x1eRecommendationsFilteringOption\x12\x30\n,RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED\x10\x00\x12&\n\"RECOMMENDATIONS_FILTERING_DISABLED\x10\x01\x12%\n!RECOMMENDATIONS_FILTERING_ENABLED\x10\x03*\x8b\x01\n\x15SearchSolutionUseCase\x12(\n$SEARCH_SOLUTION_USE_CASE_UNSPECIFIED\x10\x00\x12#\n\x1fSEARCH_SOLUTION_USE_CASE_SEARCH\x10\x01\x12#\n\x1fSEARCH_SOLUTION_USE_CASE_BROWSE\x10\x02\x42\xb6\x01\n\x1a\x63om.google.cloud.retail.v2B\x0b\x43ommonProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    module Retail
      module V2
        Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Condition").msgclass
        Condition::QueryTerm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Condition.QueryTerm").msgclass
        Condition::TimeRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Condition.TimeRange").msgclass
        Rule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule").msgclass
        Rule::BoostAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.BoostAction").msgclass
        Rule::FilterAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.FilterAction").msgclass
        Rule::RedirectAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.RedirectAction").msgclass
        Rule::TwowaySynonymsAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.TwowaySynonymsAction").msgclass
        Rule::OnewaySynonymsAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.OnewaySynonymsAction").msgclass
        Rule::DoNotAssociateAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.DoNotAssociateAction").msgclass
        Rule::ReplacementAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.ReplacementAction").msgclass
        Rule::IgnoreAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.IgnoreAction").msgclass
        Rule::ForceReturnFacetAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.ForceReturnFacetAction").msgclass
        Rule::ForceReturnFacetAction::FacetPositionAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.ForceReturnFacetAction.FacetPositionAdjustment").msgclass
        Rule::RemoveFacetAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.RemoveFacetAction").msgclass
        Rule::PinAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rule.PinAction").msgclass
        Audience = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Audience").msgclass
        ColorInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ColorInfo").msgclass
        CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CustomAttribute").msgclass
        FulfillmentInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.FulfillmentInfo").msgclass
        Image = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Image").msgclass
        Interval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Interval").msgclass
        PriceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PriceInfo").msgclass
        PriceInfo::PriceRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PriceInfo.PriceRange").msgclass
        Rating = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Rating").msgclass
        UserInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.UserInfo").msgclass
        LocalInventory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.LocalInventory").msgclass
        PinControlMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PinControlMetadata").msgclass
        PinControlMetadata::ProductPins = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PinControlMetadata.ProductPins").msgclass
        StringList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.StringList").msgclass
        DoubleList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.DoubleList").msgclass
        AttributeConfigLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AttributeConfigLevel").enummodule
        SolutionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SolutionType").enummodule
        RecommendationsFilteringOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RecommendationsFilteringOption").enummodule
        SearchSolutionUseCase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchSolutionUseCase").enummodule
      end
    end
  end
end
