# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/import_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/completion_pb'
require 'google/cloud/discoveryengine/v1/document_pb'
require 'google/cloud/discoveryengine/v1/user_event_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/type/date_pb'


descriptor_data = "\n3google/cloud/discoveryengine/v1/import_config.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/discoveryengine/v1/completion.proto\x1a.google/cloud/discoveryengine/v1/document.proto\x1a\x30google/cloud/discoveryengine/v1/user_event.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\x1a\x16google/type/date.proto\"9\n\tGcsSource\x12\x17\n\ninput_uris\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61ta_schema\x18\x02 \x01(\t\"\xbc\x01\n\x0e\x42igQuerySource\x12+\n\x0epartition_date\x18\x05 \x01(\x0b\x32\x11.google.type.DateH\x00\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x17\n\ndataset_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08table_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\x0fgcs_staging_dir\x18\x04 \x01(\t\x12\x13\n\x0b\x64\x61ta_schema\x18\x06 \x01(\tB\x0b\n\tpartition\"\x89\x01\n\rSpannerSource\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61tabase_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08table_id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x11\x65nable_data_boost\x18\x05 \x01(\x08\"\x8d\x07\n\x0f\x42igtableOptions\x12\x16\n\x0ekey_field_name\x18\x01 \x01(\t\x12P\n\x08\x66\x61milies\x18\x02 \x03(\x0b\x32>.google.cloud.discoveryengine.v1.BigtableOptions.FamiliesEntry\x1a\x8e\x02\n\x14\x42igtableColumnFamily\x12\x12\n\nfield_name\x18\x01 \x01(\t\x12K\n\x08\x65ncoding\x18\x02 \x01(\x0e\x32\x39.google.cloud.discoveryengine.v1.BigtableOptions.Encoding\x12\x43\n\x04type\x18\x03 \x01(\x0e\x32\x35.google.cloud.discoveryengine.v1.BigtableOptions.Type\x12P\n\x07\x63olumns\x18\x04 \x03(\x0b\x32?.google.cloud.discoveryengine.v1.BigtableOptions.BigtableColumn\x1a\xce\x01\n\x0e\x42igtableColumn\x12\x16\n\tqualifier\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x02\x12\x12\n\nfield_name\x18\x02 \x01(\t\x12K\n\x08\x65ncoding\x18\x03 \x01(\x0e\x32\x39.google.cloud.discoveryengine.v1.BigtableOptions.Encoding\x12\x43\n\x04type\x18\x04 \x01(\x0e\x32\x35.google.cloud.discoveryengine.v1.BigtableOptions.Type\x1av\n\rFamiliesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12T\n\x05value\x18\x02 \x01(\x0b\x32\x45.google.cloud.discoveryengine.v1.BigtableOptions.BigtableColumnFamily:\x02\x38\x01\"z\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STRING\x10\x01\x12\n\n\x06NUMBER\x10\x02\x12\x0b\n\x07INTEGER\x10\x03\x12\x0f\n\x0bVAR_INTEGER\x10\x04\x12\x0f\n\x0b\x42IG_NUMERIC\x10\x05\x12\x0b\n\x07\x42OOLEAN\x10\x06\x12\x08\n\x04JSON\x10\x07\":\n\x08\x45ncoding\x12\x18\n\x14\x45NCODING_UNSPECIFIED\x10\x00\x12\x08\n\x04TEXT\x10\x01\x12\n\n\x06\x42INARY\x10\x02\"\xa6\x01\n\x0e\x42igtableSource\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08table_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12O\n\x10\x62igtable_options\x18\x04 \x01(\x0b\x32\x30.google.cloud.discoveryengine.v1.BigtableOptionsB\x03\xe0\x41\x02\"\xb6\x01\n\x0f\x46hirStoreSource\x12?\n\nfhir_store\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#healthcare.googleapis.com/FhirStore\x12\x17\n\x0fgcs_staging_dir\x18\x02 \x01(\t\x12\x16\n\x0eresource_types\x18\x03 \x03(\t\x12\x31\n$update_from_latest_predefined_schema\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\x99\x01\n\x0e\x43loudSqlSource\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61tabase_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08table_id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\x0fgcs_staging_dir\x18\x05 \x01(\t\x12\x0f\n\x07offload\x18\x06 \x01(\x08\"\xa0\x01\n\rAlloyDbSource\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x18\n\x0blocation_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\ncluster_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61tabase_id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08table_id\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\x0fgcs_staging_dir\x18\x06 \x01(\t\"t\n\x0f\x46irestoreSource\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x18\n\x0b\x64\x61tabase_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rcollection_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\x0fgcs_staging_dir\x18\x04 \x01(\t\"8\n\x11ImportErrorConfig\x12\x14\n\ngcs_prefix\x18\x01 \x01(\tH\x00\x42\r\n\x0b\x64\x65stination\"\xf3\x03\n\x17ImportUserEventsRequest\x12^\n\rinline_source\x18\x02 \x01(\x0b\x32\x45.google.cloud.discoveryengine.v1.ImportUserEventsRequest.InlineSourceH\x00\x12@\n\ngcs_source\x18\x03 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.GcsSourceH\x00\x12J\n\x0f\x62igquery_source\x18\x04 \x01(\x0b\x32/.google.cloud.discoveryengine.v1.BigQuerySourceH\x00\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12H\n\x0c\x65rror_config\x18\x05 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\x1aT\n\x0cInlineSource\x12\x44\n\x0buser_events\x18\x01 \x03(\x0b\x32*.google.cloud.discoveryengine.v1.UserEventB\x03\xe0\x41\x02\x42\x08\n\x06source\"\xcb\x01\n\x18ImportUserEventsResponse\x12)\n\rerror_samples\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12H\n\x0c\x65rror_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\x12\x1b\n\x13joined_events_count\x18\x03 \x01(\x03\x12\x1d\n\x15unjoined_events_count\x18\x04 \x01(\x03\"\xaa\x01\n\x18ImportUserEventsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsuccess_count\x18\x03 \x01(\x03\x12\x15\n\rfailure_count\x18\x04 \x01(\x03\"\xbe\x01\n\x17ImportDocumentsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsuccess_count\x18\x03 \x01(\x03\x12\x15\n\rfailure_count\x18\x04 \x01(\x03\x12\x13\n\x0btotal_count\x18\x05 \x01(\x03\"\xf7\t\n\x16ImportDocumentsRequest\x12]\n\rinline_source\x18\x02 \x01(\x0b\x32\x44.google.cloud.discoveryengine.v1.ImportDocumentsRequest.InlineSourceH\x00\x12@\n\ngcs_source\x18\x03 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.GcsSourceH\x00\x12J\n\x0f\x62igquery_source\x18\x04 \x01(\x0b\x32/.google.cloud.discoveryengine.v1.BigQuerySourceH\x00\x12M\n\x11\x66hir_store_source\x18\n \x01(\x0b\x32\x30.google.cloud.discoveryengine.v1.FhirStoreSourceH\x00\x12H\n\x0espanner_source\x18\x0b \x01(\x0b\x32..google.cloud.discoveryengine.v1.SpannerSourceH\x00\x12K\n\x10\x63loud_sql_source\x18\x0c \x01(\x0b\x32/.google.cloud.discoveryengine.v1.CloudSqlSourceH\x00\x12L\n\x10\x66irestore_source\x18\r \x01(\x0b\x32\x30.google.cloud.discoveryengine.v1.FirestoreSourceH\x00\x12I\n\x0f\x61lloy_db_source\x18\x0e \x01(\x0b\x32..google.cloud.discoveryengine.v1.AlloyDbSourceH\x00\x12J\n\x0f\x62igtable_source\x18\x0f \x01(\x0b\x32/.google.cloud.discoveryengine.v1.BigtableSourceH\x00\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Branch\x12H\n\x0c\x65rror_config\x18\x05 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\x12g\n\x13reconciliation_mode\x18\x06 \x01(\x0e\x32J.google.cloud.discoveryengine.v1.ImportDocumentsRequest.ReconciliationMode\x12/\n\x0bupdate_mask\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x19\n\x11\x61uto_generate_ids\x18\x08 \x01(\x08\x12\x10\n\x08id_field\x18\t \x01(\t\x12\"\n\x15\x66orce_refresh_content\x18\x10 \x01(\x08\x42\x03\xe0\x41\x01\x1aQ\n\x0cInlineSource\x12\x41\n\tdocuments\x18\x01 \x03(\x0b\x32).google.cloud.discoveryengine.v1.DocumentB\x03\xe0\x41\x02\"T\n\x12ReconciliationMode\x12#\n\x1fRECONCILIATION_MODE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bINCREMENTAL\x10\x01\x12\x08\n\x04\x46ULL\x10\x02\x42\x08\n\x06source\"\x8e\x01\n\x17ImportDocumentsResponse\x12)\n\rerror_samples\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12H\n\x0c\x65rror_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\"\x85\x03\n&ImportSuggestionDenyListEntriesRequest\x12m\n\rinline_source\x18\x02 \x01(\x0b\x32T.google.cloud.discoveryengine.v1.ImportSuggestionDenyListEntriesRequest.InlineSourceH\x00\x12@\n\ngcs_source\x18\x03 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.GcsSourceH\x00\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x1a^\n\x0cInlineSource\x12N\n\x07\x65ntries\x18\x01 \x03(\x0b\x32\x38.google.cloud.discoveryengine.v1.SuggestionDenyListEntryB\x03\xe0\x41\x02\x42\x08\n\x06source\"\x92\x01\n\'ImportSuggestionDenyListEntriesResponse\x12)\n\rerror_samples\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12\x1e\n\x16imported_entries_count\x18\x02 \x01(\x03\x12\x1c\n\x14\x66\x61iled_entries_count\x18\x03 \x01(\x03\"\x8b\x01\n\'ImportSuggestionDenyListEntriesMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x94\x04\n\"ImportCompletionSuggestionsRequest\x12i\n\rinline_source\x18\x02 \x01(\x0b\x32P.google.cloud.discoveryengine.v1.ImportCompletionSuggestionsRequest.InlineSourceH\x00\x12@\n\ngcs_source\x18\x03 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.GcsSourceH\x00\x12J\n\x0f\x62igquery_source\x18\x04 \x01(\x0b\x32/.google.cloud.discoveryengine.v1.BigQuerySourceH\x00\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12H\n\x0c\x65rror_config\x18\x05 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\x1a_\n\x0cInlineSource\x12O\n\x0bsuggestions\x18\x01 \x03(\x0b\x32\x35.google.cloud.discoveryengine.v1.CompletionSuggestionB\x03\xe0\x41\x02\x42\x08\n\x06source\"\x9a\x01\n#ImportCompletionSuggestionsResponse\x12)\n\rerror_samples\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12H\n\x0c\x65rror_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1.ImportErrorConfig\"\xb5\x01\n#ImportCompletionSuggestionsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsuccess_count\x18\x03 \x01(\x03\x12\x15\n\rfailure_count\x18\x04 \x01(\x03\x42\x84\x02\n#com.google.cloud.discoveryengine.v1B\x11ImportConfigProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    ["google.type.Date", "google/type/date.proto"],
    ["google.cloud.discoveryengine.v1.UserEvent", "google/cloud/discoveryengine/v1/user_event.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.discoveryengine.v1.Document", "google/cloud/discoveryengine/v1/document.proto"],
    ["google.cloud.discoveryengine.v1.SuggestionDenyListEntry", "google/cloud/discoveryengine/v1/completion.proto"],
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
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.GcsSource").msgclass
        BigQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigQuerySource").msgclass
        SpannerSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SpannerSource").msgclass
        BigtableOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableOptions").msgclass
        BigtableOptions::BigtableColumnFamily = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableOptions.BigtableColumnFamily").msgclass
        BigtableOptions::BigtableColumn = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableOptions.BigtableColumn").msgclass
        BigtableOptions::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableOptions.Type").enummodule
        BigtableOptions::Encoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableOptions.Encoding").enummodule
        BigtableSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.BigtableSource").msgclass
        FhirStoreSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.FhirStoreSource").msgclass
        CloudSqlSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CloudSqlSource").msgclass
        AlloyDbSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AlloyDbSource").msgclass
        FirestoreSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.FirestoreSource").msgclass
        ImportErrorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportErrorConfig").msgclass
        ImportUserEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportUserEventsRequest").msgclass
        ImportUserEventsRequest::InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportUserEventsRequest.InlineSource").msgclass
        ImportUserEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportUserEventsResponse").msgclass
        ImportUserEventsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportUserEventsMetadata").msgclass
        ImportDocumentsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportDocumentsMetadata").msgclass
        ImportDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportDocumentsRequest").msgclass
        ImportDocumentsRequest::InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportDocumentsRequest.InlineSource").msgclass
        ImportDocumentsRequest::ReconciliationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportDocumentsRequest.ReconciliationMode").enummodule
        ImportDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportDocumentsResponse").msgclass
        ImportSuggestionDenyListEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportSuggestionDenyListEntriesRequest").msgclass
        ImportSuggestionDenyListEntriesRequest::InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportSuggestionDenyListEntriesRequest.InlineSource").msgclass
        ImportSuggestionDenyListEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportSuggestionDenyListEntriesResponse").msgclass
        ImportSuggestionDenyListEntriesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportSuggestionDenyListEntriesMetadata").msgclass
        ImportCompletionSuggestionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportCompletionSuggestionsRequest").msgclass
        ImportCompletionSuggestionsRequest::InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportCompletionSuggestionsRequest.InlineSource").msgclass
        ImportCompletionSuggestionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportCompletionSuggestionsResponse").msgclass
        ImportCompletionSuggestionsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ImportCompletionSuggestionsMetadata").msgclass
      end
    end
  end
end
