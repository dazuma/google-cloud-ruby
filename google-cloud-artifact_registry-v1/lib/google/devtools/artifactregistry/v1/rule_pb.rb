# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1/rule.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/type/expr_pb'


descriptor_data = "\n.google/devtools/artifactregistry/v1/rule.proto\x12#google.devtools.artifactregistry.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a\x16google/type/expr.proto\"\xc5\x03\n\x04Rule\x12\x0c\n\x04name\x18\x01 \x01(\t\x12@\n\x06\x61\x63tion\x18\x02 \x01(\x0e\x32\x30.google.devtools.artifactregistry.v1.Rule.Action\x12\x46\n\toperation\x18\x03 \x01(\x0e\x32\x33.google.devtools.artifactregistry.v1.Rule.Operation\x12)\n\tcondition\x18\x04 \x01(\x0b\x32\x11.google.type.ExprB\x03\xe0\x41\x01\x12\x12\n\npackage_id\x18\x05 \x01(\t\"5\n\x06\x41\x63tion\x12\x16\n\x12\x41\x43TION_UNSPECIFIED\x10\x00\x12\t\n\x05\x41LLOW\x10\x01\x12\x08\n\x04\x44\x45NY\x10\x02\"4\n\tOperation\x12\x19\n\x15OPERATION_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44OWNLOAD\x10\x01:y\xea\x41v\n$artifactregistry.googleapis.com/Rule\x12Nprojects/{project}/locations/{location}/repositories/{repository}/rules/{rule}\"w\n\x10ListRulesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$artifactregistry.googleapis.com/Rule\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"f\n\x11ListRulesResponse\x12\x38\n\x05rules\x18\x01 \x03(\x0b\x32).google.devtools.artifactregistry.v1.Rule\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"L\n\x0eGetRuleRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$artifactregistry.googleapis.com/Rule\"\x9b\x01\n\x11\x43reateRuleRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$artifactregistry.googleapis.com/Rule\x12\x0f\n\x07rule_id\x18\x02 \x01(\t\x12\x37\n\x04rule\x18\x03 \x01(\x0b\x32).google.devtools.artifactregistry.v1.Rule\"}\n\x11UpdateRuleRequest\x12\x37\n\x04rule\x18\x01 \x01(\x0b\x32).google.devtools.artifactregistry.v1.Rule\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"O\n\x11\x44\x65leteRuleRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$artifactregistry.googleapis.com/RuleB\xf4\x01\n\'com.google.devtools.artifactregistry.v1B\tRuleProtoP\x01ZPcloud.google.com/go/artifactregistry/apiv1/artifactregistrypb;artifactregistrypb\xaa\x02 Google.Cloud.ArtifactRegistry.V1\xca\x02 Google\\Cloud\\ArtifactRegistry\\V1\xea\x02#Google::Cloud::ArtifactRegistry::V1b\x06proto3"

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
    ["google.type.Expr", "google/type/expr.proto"],
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
    module ArtifactRegistry
      module V1
        Rule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.Rule").msgclass
        Rule::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.Rule.Action").enummodule
        Rule::Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.Rule.Operation").enummodule
        ListRulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListRulesRequest").msgclass
        ListRulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListRulesResponse").msgclass
        GetRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetRuleRequest").msgclass
        CreateRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.CreateRuleRequest").msgclass
        UpdateRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.UpdateRuleRequest").msgclass
        DeleteRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.DeleteRuleRequest").msgclass
      end
    end
  end
end
