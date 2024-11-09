# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1alpha/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/cloud/alloydb/v1alpha/csql_resources_pb'
require 'google/cloud/alloydb/v1alpha/gemini_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/dayofweek_pb'
require 'google/type/timeofday_pb'


descriptor_data = "\n,google/cloud/alloydb/v1alpha/resources.proto\x12\x1cgoogle.cloud.alloydb.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a\x31google/cloud/alloydb/v1alpha/csql_resources.proto\x1a)google/cloud/alloydb/v1alpha/gemini.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x1bgoogle/type/dayofweek.proto\x1a\x1bgoogle/type/timeofday.proto\".\n\x0cUserPassword\x12\x0c\n\x04user\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t\"\xe8\x01\n\x0fMigrationSource\x12\x16\n\thost_port\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0creference_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12[\n\x0bsource_type\x18\x03 \x01(\x0e\x32\x41.google.cloud.alloydb.v1alpha.MigrationSource.MigrationSourceTypeB\x03\xe0\x41\x03\"E\n\x13MigrationSourceType\x12%\n!MIGRATION_SOURCE_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03\x44MS\x10\x01\"(\n\x10\x45ncryptionConfig\x12\x14\n\x0ckms_key_name\x18\x01 \x01(\t\"\x8b\x02\n\x0e\x45ncryptionInfo\x12O\n\x0f\x65ncryption_type\x18\x01 \x01(\x0e\x32\x31.google.cloud.alloydb.v1alpha.EncryptionInfo.TypeB\x03\xe0\x41\x03\x12J\n\x10kms_key_versions\x18\x02 \x03(\tB0\xe0\x41\x03\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"\\\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x1d\n\x19GOOGLE_DEFAULT_ENCRYPTION\x10\x01\x12\x1f\n\x1b\x43USTOMER_MANAGED_ENCRYPTION\x10\x02\"\x88\x03\n\tSslConfig\x12\x46\n\x08ssl_mode\x18\x01 \x01(\x0e\x32/.google.cloud.alloydb.v1alpha.SslConfig.SslModeB\x03\xe0\x41\x01\x12H\n\tca_source\x18\x02 \x01(\x0e\x32\x30.google.cloud.alloydb.v1alpha.SslConfig.CaSourceB\x03\xe0\x41\x01\"\xaa\x01\n\x07SslMode\x12\x18\n\x14SSL_MODE_UNSPECIFIED\x10\x00\x12\x16\n\x0eSSL_MODE_ALLOW\x10\x01\x1a\x02\x08\x01\x12\x18\n\x10SSL_MODE_REQUIRE\x10\x02\x1a\x02\x08\x01\x12\x1a\n\x12SSL_MODE_VERIFY_CA\x10\x03\x1a\x02\x08\x01\x12#\n\x1f\x41LLOW_UNENCRYPTED_AND_ENCRYPTED\x10\x04\x12\x12\n\x0e\x45NCRYPTED_ONLY\x10\x05\"<\n\x08\x43\x61Source\x12\x19\n\x15\x43\x41_SOURCE_UNSPECIFIED\x10\x00\x12\x15\n\x11\x43\x41_SOURCE_MANAGED\x10\x01\"\xfe\x06\n\x15\x41utomatedBackupPolicy\x12]\n\x0fweekly_schedule\x18\x02 \x01(\x0b\x32\x42.google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.WeeklyScheduleH\x00\x12\x66\n\x14time_based_retention\x18\x04 \x01(\x0b\x32\x46.google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.TimeBasedRetentionH\x01\x12n\n\x18quantity_based_retention\x18\x05 \x01(\x0b\x32J.google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.QuantityBasedRetentionH\x01\x12\x14\n\x07\x65nabled\x18\x01 \x01(\x08H\x02\x88\x01\x01\x12\x30\n\rbackup_window\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x12N\n\x11\x65ncryption_config\x18\x08 \x01(\x0b\x32..google.cloud.alloydb.v1alpha.EncryptionConfigB\x03\xe0\x41\x01\x12\x10\n\x08location\x18\x06 \x01(\t\x12O\n\x06labels\x18\x07 \x03(\x0b\x32?.google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.LabelsEntry\x1ak\n\x0eWeeklySchedule\x12+\n\x0bstart_times\x18\x01 \x03(\x0b\x32\x16.google.type.TimeOfDay\x12,\n\x0c\x64\x61ys_of_week\x18\x02 \x03(\x0e\x32\x16.google.type.DayOfWeek\x1aI\n\x12TimeBasedRetention\x12\x33\n\x10retention_period\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\'\n\x16QuantityBasedRetention\x12\r\n\x05\x63ount\x18\x01 \x01(\x05\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\n\n\x08scheduleB\x0b\n\tretentionB\n\n\x08_enabled\"\xa3\x01\n\x16\x43ontinuousBackupConfig\x12\x14\n\x07\x65nabled\x18\x01 \x01(\x08H\x00\x88\x01\x01\x12\x1c\n\x14recovery_window_days\x18\x04 \x01(\x05\x12I\n\x11\x65ncryption_config\x18\x03 \x01(\x0b\x32..google.cloud.alloydb.v1alpha.EncryptionConfigB\n\n\x08_enabled\"\x8b\x02\n\x14\x43ontinuousBackupInfo\x12J\n\x0f\x65ncryption_info\x18\x01 \x01(\x0b\x32,.google.cloud.alloydb.v1alpha.EncryptionInfoB\x03\xe0\x41\x03\x12\x35\n\x0c\x65nabled_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12-\n\x08schedule\x18\x03 \x03(\x0e\x32\x16.google.type.DayOfWeekB\x03\xe0\x41\x03\x12\x41\n\x18\x65\x61rliest_restorable_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"c\n\x0c\x42\x61\x63kupSource\x12\x17\n\nbackup_uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12:\n\x0b\x62\x61\x63kup_name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\"f\n\x16\x43ontinuousBackupSource\x12\x14\n\x07\x63luster\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x36\n\rpoint_in_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\"\xe5\x01\n\x17MaintenanceUpdatePolicy\x12\x64\n\x13maintenance_windows\x18\x01 \x03(\x0b\x32G.google.cloud.alloydb.v1alpha.MaintenanceUpdatePolicy.MaintenanceWindow\x1a\x64\n\x11MaintenanceWindow\x12#\n\x03\x64\x61y\x18\x01 \x01(\x0e\x32\x16.google.type.DayOfWeek\x12*\n\nstart_time\x18\x02 \x01(\x0b\x32\x16.google.type.TimeOfDay\"J\n\x13MaintenanceSchedule\x12\x33\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"\xbd\x1a\n\x07\x43luster\x12H\n\rbackup_source\x18\x0f \x01(\x0b\x32*.google.cloud.alloydb.v1alpha.BackupSourceB\x03\xe0\x41\x03H\x00\x12N\n\x10migration_source\x18\x10 \x01(\x0b\x32-.google.cloud.alloydb.v1alpha.MigrationSourceB\x03\xe0\x41\x03H\x00\x12`\n\x1a\x63loudsql_backup_run_source\x18* \x01(\x0b\x32\x35.google.cloud.alloydb.v1alpha.CloudSQLBackupRunSourceB\x03\xe0\x41\x03H\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x10\n\x03uid\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x41\n\x06labels\x18\x07 \x03(\x0b\x32\x31.google.cloud.alloydb.v1alpha.Cluster.LabelsEntry\x12?\n\x05state\x18\x08 \x01(\x0e\x32+.google.cloud.alloydb.v1alpha.Cluster.StateB\x03\xe0\x41\x03\x12L\n\x0c\x63luster_type\x18\x18 \x01(\x0e\x32\x31.google.cloud.alloydb.v1alpha.Cluster.ClusterTypeB\x03\xe0\x41\x03\x12L\n\x10\x64\x61tabase_version\x18\t \x01(\x0e\x32-.google.cloud.alloydb.v1alpha.DatabaseVersionB\x03\xe0\x41\x01\x12P\n\x0enetwork_config\x18\x1d \x01(\x0b\x32\x33.google.cloud.alloydb.v1alpha.Cluster.NetworkConfigB\x03\xe0\x41\x01\x12\x39\n\x07network\x18\n \x01(\tB(\x18\x01\xe0\x41\x02\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x0c\n\x04\x65tag\x18\x0b \x01(\t\x12K\n\x0b\x61nnotations\x18\x0c \x03(\x0b\x32\x36.google.cloud.alloydb.v1alpha.Cluster.AnnotationsEntry\x12\x18\n\x0breconciling\x18\r \x01(\x08\x42\x03\xe0\x41\x03\x12\x45\n\x0cinitial_user\x18\x0e \x01(\x0b\x32*.google.cloud.alloydb.v1alpha.UserPasswordB\x03\xe0\x41\x04\x12T\n\x17\x61utomated_backup_policy\x18\x11 \x01(\x0b\x32\x33.google.cloud.alloydb.v1alpha.AutomatedBackupPolicy\x12?\n\nssl_config\x18\x12 \x01(\x0b\x32\'.google.cloud.alloydb.v1alpha.SslConfigB\x02\x18\x01\x12N\n\x11\x65ncryption_config\x18\x13 \x01(\x0b\x32..google.cloud.alloydb.v1alpha.EncryptionConfigB\x03\xe0\x41\x01\x12J\n\x0f\x65ncryption_info\x18\x14 \x01(\x0b\x32,.google.cloud.alloydb.v1alpha.EncryptionInfoB\x03\xe0\x41\x03\x12[\n\x18\x63ontinuous_backup_config\x18\x1b \x01(\x0b\x32\x34.google.cloud.alloydb.v1alpha.ContinuousBackupConfigB\x03\xe0\x41\x01\x12W\n\x16\x63ontinuous_backup_info\x18\x1c \x01(\x0b\x32\x32.google.cloud.alloydb.v1alpha.ContinuousBackupInfoB\x03\xe0\x41\x03\x12O\n\x10secondary_config\x18\x16 \x01(\x0b\x32\x35.google.cloud.alloydb.v1alpha.Cluster.SecondaryConfig\x12P\n\x0eprimary_config\x18\x17 \x01(\x0b\x32\x33.google.cloud.alloydb.v1alpha.Cluster.PrimaryConfigB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18! \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18\x1e \x01(\x08\x42\x03\xe0\x41\x03\x12H\n\npsc_config\x18\x1f \x01(\x0b\x32/.google.cloud.alloydb.v1alpha.Cluster.PscConfigB\x03\xe0\x41\x01\x12]\n\x19maintenance_update_policy\x18  \x01(\x0b\x32\x35.google.cloud.alloydb.v1alpha.MaintenanceUpdatePolicyB\x03\xe0\x41\x01\x12T\n\x14maintenance_schedule\x18% \x01(\x0b\x32\x31.google.cloud.alloydb.v1alpha.MaintenanceScheduleB\x03\xe0\x41\x03\x12M\n\rgemini_config\x18$ \x01(\x0b\x32\x31.google.cloud.alloydb.v1alpha.GeminiClusterConfigB\x03\xe0\x41\x01\x12N\n\x11subscription_type\x18& \x01(\x0e\x32..google.cloud.alloydb.v1alpha.SubscriptionTypeB\x03\xe0\x41\x01\x12P\n\x0etrial_metadata\x18\' \x01(\x0b\x32\x33.google.cloud.alloydb.v1alpha.Cluster.TrialMetadataB\x03\xe0\x41\x03\x12H\n\x04tags\x18) \x03(\x0b\x32/.google.cloud.alloydb.v1alpha.Cluster.TagsEntryB\t\xe0\x41\x04\xe0\x41\x05\xe0\x41\x01\x1ai\n\rNetworkConfig\x12\x37\n\x07network\x18\x01 \x01(\tB&\xe0\x41\x01\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x1f\n\x12\x61llocated_ip_range\x18\x02 \x01(\tB\x03\xe0\x41\x01\x1a/\n\x0fSecondaryConfig\x12\x1c\n\x14primary_cluster_name\x18\x01 \x01(\t\x1a\x35\n\rPrimaryConfig\x12$\n\x17secondary_cluster_names\x18\x01 \x03(\tB\x03\xe0\x41\x03\x1aP\n\tPscConfig\x12\x18\n\x0bpsc_enabled\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01\x12)\n\x1cservice_owned_project_number\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x1a\xd3\x01\n\rTrialMetadata\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x30\n\x0cupgrade_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x32\n\x0egrace_end_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a+\n\tTagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9c\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0b\n\x07STOPPED\x10\x02\x12\t\n\x05\x45MPTY\x10\x03\x12\x0c\n\x08\x43REATING\x10\x04\x12\x0c\n\x08\x44\x45LETING\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06\x12\x11\n\rBOOTSTRAPPING\x10\x07\x12\x0f\n\x0bMAINTENANCE\x10\x08\x12\r\n\tPROMOTING\x10\t\"G\n\x0b\x43lusterType\x12\x1c\n\x18\x43LUSTER_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PRIMARY\x10\x01\x12\r\n\tSECONDARY\x10\x02:u\xea\x41r\n\x1e\x61lloydb.googleapis.com/Cluster\x12:projects/{project}/locations/{location}/clusters/{cluster}*\x08\x63lusters2\x07\x63lusterR\x01\x01\x42\x08\n\x06source\"\x98!\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x10\n\x03uid\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x06labels\x18\x07 \x03(\x0b\x32\x32.google.cloud.alloydb.v1alpha.Instance.LabelsEntry\x12@\n\x05state\x18\x08 \x01(\x0e\x32,.google.cloud.alloydb.v1alpha.Instance.StateB\x03\xe0\x41\x03\x12O\n\rinstance_type\x18\t \x01(\x0e\x32\x33.google.cloud.alloydb.v1alpha.Instance.InstanceTypeB\x03\xe0\x41\x02\x12L\n\x0emachine_config\x18\n \x01(\x0b\x32\x34.google.cloud.alloydb.v1alpha.Instance.MachineConfig\x12R\n\x11\x61vailability_type\x18\x0b \x01(\x0e\x32\x37.google.cloud.alloydb.v1alpha.Instance.AvailabilityType\x12\x10\n\x08gce_zone\x18\x0c \x01(\t\x12Q\n\x0e\x64\x61tabase_flags\x18\r \x03(\x0b\x32\x39.google.cloud.alloydb.v1alpha.Instance.DatabaseFlagsEntry\x12G\n\rwritable_node\x18\x13 \x01(\x0b\x32+.google.cloud.alloydb.v1alpha.Instance.NodeB\x03\xe0\x41\x03\x12?\n\x05nodes\x18\x14 \x03(\x0b\x32+.google.cloud.alloydb.v1alpha.Instance.NodeB\x03\xe0\x41\x03\x12\x61\n\x15query_insights_config\x18\x15 \x01(\x0b\x32\x42.google.cloud.alloydb.v1alpha.Instance.QueryInsightsInstanceConfig\x12`\n\x14observability_config\x18\x1a \x01(\x0b\x32\x42.google.cloud.alloydb.v1alpha.Instance.ObservabilityInstanceConfig\x12O\n\x10read_pool_config\x18\x0e \x01(\x0b\x32\x35.google.cloud.alloydb.v1alpha.Instance.ReadPoolConfig\x12\x17\n\nip_address\x18\x0f \x01(\tB\x03\xe0\x41\x03\x12&\n\x11public_ip_address\x18\x1b \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12\x18\n\x0breconciling\x18\x10 \x01(\x08\x42\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\x11 \x01(\t\x12L\n\x0b\x61nnotations\x18\x12 \x03(\x0b\x32\x37.google.cloud.alloydb.v1alpha.Instance.AnnotationsEntry\x12J\n\rupdate_policy\x18\x16 \x01(\x0b\x32\x33.google.cloud.alloydb.v1alpha.Instance.UpdatePolicy\x12\x64\n\x18\x63lient_connection_config\x18\x17 \x01(\x0b\x32=.google.cloud.alloydb.v1alpha.Instance.ClientConnectionConfigB\x03\xe0\x41\x01\x12\x1a\n\rsatisfies_pzi\x18\x1e \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18\x18 \x01(\x08\x42\x03\xe0\x41\x03\x12Z\n\x13psc_instance_config\x18\x1c \x01(\x0b\x32\x38.google.cloud.alloydb.v1alpha.Instance.PscInstanceConfigB\x03\xe0\x41\x01\x12Y\n\x0enetwork_config\x18\x1d \x01(\x0b\x32<.google.cloud.alloydb.v1alpha.Instance.InstanceNetworkConfigB\x03\xe0\x41\x01\x12N\n\rgemini_config\x18! \x01(\x0b\x32\x32.google.cloud.alloydb.v1alpha.GeminiInstanceConfigB\x03\xe0\x41\x01\x12\x31\n\x1coutbound_public_ip_addresses\x18\" \x03(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x1a\"\n\rMachineConfig\x12\x11\n\tcpu_count\x18\x01 \x01(\x05\x1a>\n\x04Node\x12\x0f\n\x07zone_id\x18\x01 \x01(\t\x12\n\n\x02id\x18\x02 \x01(\t\x12\n\n\x02ip\x18\x03 \x01(\t\x12\r\n\x05state\x18\x04 \x01(\t\x1a\xfa\x01\n\x1bQueryInsightsInstanceConfig\x12$\n\x17record_application_tags\x18\x02 \x01(\x08H\x00\x88\x01\x01\x12\"\n\x15record_client_address\x18\x03 \x01(\x08H\x01\x88\x01\x01\x12\x1b\n\x13query_string_length\x18\x04 \x01(\r\x12#\n\x16query_plans_per_minute\x18\x05 \x01(\rH\x02\x88\x01\x01\x42\x1a\n\x18_record_application_tagsB\x18\n\x16_record_client_addressB\x19\n\x17_query_plans_per_minute\x1a\xac\x04\n\x1bObservabilityInstanceConfig\x12\x14\n\x07\x65nabled\x18\x01 \x01(\x08H\x00\x88\x01\x01\x12\x1e\n\x11preserve_comments\x18\x02 \x01(\x08H\x01\x88\x01\x01\x12\x1e\n\x11track_wait_events\x18\x03 \x01(\x08H\x02\x88\x01\x01\x12(\n\x16track_wait_event_types\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03H\x03\x88\x01\x01\x12$\n\x17max_query_string_length\x18\x05 \x01(\x05H\x04\x88\x01\x01\x12$\n\x17record_application_tags\x18\x06 \x01(\x08H\x05\x88\x01\x01\x12#\n\x16query_plans_per_minute\x18\x07 \x01(\x05H\x06\x88\x01\x01\x12!\n\x14track_active_queries\x18\x08 \x01(\x08H\x07\x88\x01\x01\x12!\n\x14track_client_address\x18\t \x01(\x08H\x08\x88\x01\x01\x42\n\n\x08_enabledB\x14\n\x12_preserve_commentsB\x14\n\x12_track_wait_eventsB\x19\n\x17_track_wait_event_typesB\x1a\n\x18_max_query_string_lengthB\x1a\n\x18_record_application_tagsB\x19\n\x17_query_plans_per_minuteB\x17\n\x15_track_active_queriesB\x17\n\x15_track_client_address\x1a$\n\x0eReadPoolConfig\x12\x12\n\nnode_count\x18\x01 \x01(\x05\x1a\x92\x01\n\x0cUpdatePolicy\x12\x46\n\x04mode\x18\x01 \x01(\x0e\x32\x38.google.cloud.alloydb.v1alpha.Instance.UpdatePolicy.Mode\":\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x01\x12\x0f\n\x0b\x46ORCE_APPLY\x10\x02\x1a{\n\x16\x43lientConnectionConfig\x12\x1f\n\x12require_connectors\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01\x12@\n\nssl_config\x18\x02 \x01(\x0b\x32\'.google.cloud.alloydb.v1alpha.SslConfigB\x03\xe0\x41\x01\x1a\x39\n\x12PscInterfaceConfig\x12#\n\x1bnetwork_attachment_resource\x18\x01 \x01(\t\x1a\xdb\x01\n\x11PscInstanceConfig\x12$\n\x17service_attachment_link\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12&\n\x19\x61llowed_consumer_projects\x18\x02 \x03(\tB\x03\xe0\x41\x01\x12\x19\n\x0cpsc_dns_name\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12]\n\x15psc_interface_configs\x18\x08 \x03(\x0b\x32\x39.google.cloud.alloydb.v1alpha.Instance.PscInterfaceConfigB\x03\xe0\x41\x01\x1a\x8c\x02\n\x15InstanceNetworkConfig\x12y\n\x1c\x61uthorized_external_networks\x18\x01 \x03(\x0b\x32N.google.cloud.alloydb.v1alpha.Instance.InstanceNetworkConfig.AuthorizedNetworkB\x03\xe0\x41\x01\x12\x1d\n\x10\x65nable_public_ip\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12&\n\x19\x65nable_outbound_public_ip\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x31\n\x11\x41uthorizedNetwork\x12\x1c\n\ncidr_range\x18\x01 \x01(\tB\x08\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x34\n\x12\x44\x61tabaseFlagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x91\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0b\n\x07STOPPED\x10\x02\x12\x0c\n\x08\x43REATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0f\n\x0bMAINTENANCE\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06\x12\x11\n\rBOOTSTRAPPING\x10\x08\x12\r\n\tPROMOTING\x10\t\"X\n\x0cInstanceType\x12\x1d\n\x19INSTANCE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PRIMARY\x10\x01\x12\r\n\tREAD_POOL\x10\x02\x12\r\n\tSECONDARY\x10\x03\"N\n\x10\x41vailabilityType\x12!\n\x1d\x41VAILABILITY_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05ZONAL\x10\x01\x12\x0c\n\x08REGIONAL\x10\x02:\x8e\x01\xea\x41\x8a\x01\n\x1f\x61lloydb.googleapis.com/Instance\x12Oprojects/{project}/locations/{location}/clusters/{cluster}/instances/{instance}*\tinstances2\x08instanceR\x01\x01\"\xea\x02\n\x0e\x43onnectionInfo\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\nip_address\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12&\n\x11public_ip_address\x18\x05 \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12$\n\x15pem_certificate_chain\x18\x03 \x03(\tB\x05\x18\x01\xe0\x41\x03\x12\x19\n\x0cinstance_uid\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0cpsc_dns_name\x18\x06 \x01(\tB\x03\xe0\x41\x03:\xac\x01\xea\x41\xa8\x01\n%alloydb.googleapis.com/ConnectionInfo\x12^projects/{project}/locations/{location}/clusters/{cluster}/instances/{instance}/connectionInfo*\x0f\x63onnectionInfos2\x0e\x63onnectionInfo\"\x8d\r\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x10\n\x03uid\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x0f \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12@\n\x06labels\x18\x06 \x03(\x0b\x32\x30.google.cloud.alloydb.v1alpha.Backup.LabelsEntry\x12>\n\x05state\x18\x07 \x01(\x0e\x32*.google.cloud.alloydb.v1alpha.Backup.StateB\x03\xe0\x41\x03\x12\x37\n\x04type\x18\x08 \x01(\x0e\x32).google.cloud.alloydb.v1alpha.Backup.Type\x12\x13\n\x0b\x64\x65scription\x18\t \x01(\t\x12\x18\n\x0b\x63luster_uid\x18\x12 \x01(\tB\x03\xe0\x41\x03\x12<\n\x0c\x63luster_name\x18\n \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\x0breconciling\x18\x0b \x01(\x08\x42\x03\xe0\x41\x03\x12N\n\x11\x65ncryption_config\x18\x0c \x01(\x0b\x32..google.cloud.alloydb.v1alpha.EncryptionConfigB\x03\xe0\x41\x01\x12J\n\x0f\x65ncryption_info\x18\r \x01(\x0b\x32,.google.cloud.alloydb.v1alpha.EncryptionInfoB\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\x0e \x01(\t\x12J\n\x0b\x61nnotations\x18\x10 \x03(\x0b\x32\x35.google.cloud.alloydb.v1alpha.Backup.AnnotationsEntry\x12\x17\n\nsize_bytes\x18\x11 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpiry_time\x18\x13 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12V\n\x0f\x65xpiry_quantity\x18\x14 \x01(\x0b\x32\x38.google.cloud.alloydb.v1alpha.Backup.QuantityBasedExpiryB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x17 \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18\x15 \x01(\x08\x42\x03\xe0\x41\x03\x12L\n\x10\x64\x61tabase_version\x18\x16 \x01(\x0e\x32-.google.cloud.alloydb.v1alpha.DatabaseVersionB\x03\xe0\x41\x03\x12G\n\x04tags\x18\x19 \x03(\x0b\x32..google.cloud.alloydb.v1alpha.Backup.TagsEntryB\t\xe0\x41\x04\xe0\x41\x05\xe0\x41\x01\x1aW\n\x13QuantityBasedExpiry\x12\x1c\n\x0fretention_count\x18\x01 \x01(\x05\x42\x03\xe0\x41\x03\x12\"\n\x15total_retention_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a+\n\tTagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"Q\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\"J\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\r\n\tON_DEMAND\x10\x01\x12\r\n\tAUTOMATED\x10\x02\x12\x0e\n\nCONTINUOUS\x10\x03:p\xea\x41m\n\x1d\x61lloydb.googleapis.com/Backup\x12\x38projects/{project}/locations/{location}/backups/{backup}*\x07\x62\x61\x63kups2\x06\x62\x61\x63kupR\x01\x01\"\x8d\x07\n\x15SupportedDatabaseFlag\x12\x65\n\x13string_restrictions\x18\x07 \x01(\x0b\x32\x46.google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.StringRestrictionsH\x00\x12g\n\x14integer_restrictions\x18\x08 \x01(\x0b\x32G.google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.IntegerRestrictionsH\x00\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x11\n\tflag_name\x18\x02 \x01(\t\x12Q\n\nvalue_type\x18\x03 \x01(\x0e\x32=.google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.ValueType\x12\x1f\n\x17\x61\x63\x63\x65pts_multiple_values\x18\x04 \x01(\x08\x12L\n\x15supported_db_versions\x18\x05 \x03(\x0e\x32-.google.cloud.alloydb.v1alpha.DatabaseVersion\x12\x1b\n\x13requires_db_restart\x18\x06 \x01(\x08\x1a,\n\x12StringRestrictions\x12\x16\n\x0e\x61llowed_values\x18\x01 \x03(\t\x1au\n\x13IntegerRestrictions\x12.\n\tmin_value\x18\x01 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12.\n\tmax_value\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\"U\n\tValueType\x12\x1a\n\x16VALUE_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STRING\x10\x01\x12\x0b\n\x07INTEGER\x10\x02\x12\t\n\x05\x46LOAT\x10\x03\x12\x08\n\x04NONE\x10\x04:\x97\x01\xea\x41\x93\x01\n,alloydb.googleapis.com/SupportedDatabaseFlag\x12\x34projects/{project}/locations/{location}/flags/{flag}*\x16supportedDatabaseFlags2\x15supportedDatabaseFlagB\x0e\n\x0crestrictions\"\xff\x02\n\x04User\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\x08password\x18\x02 \x01(\tB\x03\xe0\x41\x04\x12\x1b\n\x0e\x64\x61tabase_roles\x18\x04 \x03(\tB\x03\xe0\x41\x01\x12\x43\n\tuser_type\x18\x05 \x01(\x0e\x32+.google.cloud.alloydb.v1alpha.User.UserTypeB\x03\xe0\x41\x01\x12\x1d\n\x10keep_extra_roles\x18\x06 \x01(\x08\x42\x03\xe0\x41\x04\"Q\n\x08UserType\x12\x19\n\x15USER_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10\x41LLOYDB_BUILT_IN\x10\x01\x12\x14\n\x10\x41LLOYDB_IAM_USER\x10\x02:y\xea\x41v\n\x1b\x61lloydb.googleapis.com/User\x12Gprojects/{project}/locations/{location}/clusters/{cluster}/users/{user}*\x05users2\x04userR\x01\x01\"\xdc\x01\n\x08\x44\x61tabase\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x14\n\x07\x63harset\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tcollation\x18\x03 \x01(\tB\x03\xe0\x41\x01:\x8e\x01\xea\x41\x8a\x01\n\x1f\x61lloydb.googleapis.com/Database\x12Oprojects/{project}/locations/{location}/clusters/{cluster}/databases/{database}*\tdatabases2\x08\x64\x61tabaseR\x01\x01*^\n\x0cInstanceView\x12\x1d\n\x19INSTANCE_VIEW_UNSPECIFIED\x10\x00\x12\x17\n\x13INSTANCE_VIEW_BASIC\x10\x01\x12\x16\n\x12INSTANCE_VIEW_FULL\x10\x02*g\n\x0b\x43lusterView\x12\x1c\n\x18\x43LUSTER_VIEW_UNSPECIFIED\x10\x00\x12\x16\n\x12\x43LUSTER_VIEW_BASIC\x10\x01\x12\"\n\x1e\x43LUSTER_VIEW_CONTINUOUS_BACKUP\x10\x02*{\n\x0f\x44\x61tabaseVersion\x12 \n\x1c\x44\x41TABASE_VERSION_UNSPECIFIED\x10\x00\x12\x13\n\x0bPOSTGRES_13\x10\x01\x1a\x02\x08\x01\x12\x0f\n\x0bPOSTGRES_14\x10\x02\x12\x0f\n\x0bPOSTGRES_15\x10\x03\x12\x0f\n\x0bPOSTGRES_16\x10\x04*N\n\x10SubscriptionType\x12!\n\x1dSUBSCRIPTION_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08STANDARD\x10\x01\x12\t\n\x05TRIAL\x10\x02\x42\xcb\x03\n com.google.cloud.alloydb.v1alphaB\x0eResourcesProtoP\x01Z:cloud.google.com/go/alloydb/apiv1alpha/alloydbpb;alloydbpb\xaa\x02\x1cGoogle.Cloud.AlloyDb.V1Alpha\xca\x02\x1cGoogle\\Cloud\\AlloyDb\\V1alpha\xea\x02\x1fGoogle::Cloud::AlloyDB::V1alpha\xea\x41\xa6\x01\n(cloudkms.googleapis.com/CryptoKeyVersion\x12zprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.type.TimeOfDay", "google/type/timeofday.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.alloydb.v1alpha.CloudSQLBackupRunSource", "google/cloud/alloydb/v1alpha/csql_resources.proto"],
    ["google.cloud.alloydb.v1alpha.GeminiClusterConfig", "google/cloud/alloydb/v1alpha/gemini.proto"],
    ["google.protobuf.Int64Value", "google/protobuf/wrappers.proto"],
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
    module AlloyDB
      module V1alpha
        UserPassword = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.UserPassword").msgclass
        MigrationSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.MigrationSource").msgclass
        MigrationSource::MigrationSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.MigrationSource.MigrationSourceType").enummodule
        EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.EncryptionConfig").msgclass
        EncryptionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.EncryptionInfo").msgclass
        EncryptionInfo::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.EncryptionInfo.Type").enummodule
        SslConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SslConfig").msgclass
        SslConfig::SslMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SslConfig.SslMode").enummodule
        SslConfig::CaSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SslConfig.CaSource").enummodule
        AutomatedBackupPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.AutomatedBackupPolicy").msgclass
        AutomatedBackupPolicy::WeeklySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.WeeklySchedule").msgclass
        AutomatedBackupPolicy::TimeBasedRetention = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.TimeBasedRetention").msgclass
        AutomatedBackupPolicy::QuantityBasedRetention = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.AutomatedBackupPolicy.QuantityBasedRetention").msgclass
        ContinuousBackupConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ContinuousBackupConfig").msgclass
        ContinuousBackupInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ContinuousBackupInfo").msgclass
        BackupSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BackupSource").msgclass
        ContinuousBackupSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ContinuousBackupSource").msgclass
        MaintenanceUpdatePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.MaintenanceUpdatePolicy").msgclass
        MaintenanceUpdatePolicy::MaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.MaintenanceUpdatePolicy.MaintenanceWindow").msgclass
        MaintenanceSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.MaintenanceSchedule").msgclass
        Cluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster").msgclass
        Cluster::NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.NetworkConfig").msgclass
        Cluster::SecondaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.SecondaryConfig").msgclass
        Cluster::PrimaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.PrimaryConfig").msgclass
        Cluster::PscConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.PscConfig").msgclass
        Cluster::TrialMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.TrialMetadata").msgclass
        Cluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.State").enummodule
        Cluster::ClusterType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Cluster.ClusterType").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance").msgclass
        Instance::MachineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.MachineConfig").msgclass
        Instance::Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.Node").msgclass
        Instance::QueryInsightsInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.QueryInsightsInstanceConfig").msgclass
        Instance::ObservabilityInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.ObservabilityInstanceConfig").msgclass
        Instance::ReadPoolConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.ReadPoolConfig").msgclass
        Instance::UpdatePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.UpdatePolicy").msgclass
        Instance::UpdatePolicy::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.UpdatePolicy.Mode").enummodule
        Instance::ClientConnectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.ClientConnectionConfig").msgclass
        Instance::PscInterfaceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.PscInterfaceConfig").msgclass
        Instance::PscInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.PscInstanceConfig").msgclass
        Instance::InstanceNetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.InstanceNetworkConfig").msgclass
        Instance::InstanceNetworkConfig::AuthorizedNetwork = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.InstanceNetworkConfig.AuthorizedNetwork").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.State").enummodule
        Instance::InstanceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.InstanceType").enummodule
        Instance::AvailabilityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Instance.AvailabilityType").enummodule
        ConnectionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ConnectionInfo").msgclass
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Backup").msgclass
        Backup::QuantityBasedExpiry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Backup.QuantityBasedExpiry").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Backup.State").enummodule
        Backup::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Backup.Type").enummodule
        SupportedDatabaseFlag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SupportedDatabaseFlag").msgclass
        SupportedDatabaseFlag::StringRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.StringRestrictions").msgclass
        SupportedDatabaseFlag::IntegerRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.IntegerRestrictions").msgclass
        SupportedDatabaseFlag::ValueType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SupportedDatabaseFlag.ValueType").enummodule
        User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.User").msgclass
        User::UserType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.User.UserType").enummodule
        Database = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.Database").msgclass
        InstanceView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.InstanceView").enummodule
        ClusterView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ClusterView").enummodule
        DatabaseVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.DatabaseVersion").enummodule
        SubscriptionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SubscriptionType").enummodule
      end
    end
  end
end
