# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/clouddms/v1/clouddms_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n1google/cloud/clouddms/v1/clouddms_resources.proto\x12\x18google.cloud.clouddms.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x17google/rpc/status.proto\"\xf0\x01\n\tSslConfig\x12?\n\x04type\x18\x01 \x01(\x0e\x32+.google.cloud.clouddms.v1.SslConfig.SslTypeB\x04\xe2\x41\x01\x03\x12\x18\n\nclient_key\x18\x02 \x01(\tB\x04\xe2\x41\x01\x04\x12 \n\x12\x63lient_certificate\x18\x03 \x01(\tB\x04\xe2\x41\x01\x04\x12\x1d\n\x0e\x63\x61_certificate\x18\x04 \x01(\tB\x05\xe2\x41\x02\x04\x02\"G\n\x07SslType\x12\x18\n\x14SSL_TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bSERVER_ONLY\x10\x01\x12\x11\n\rSERVER_CLIENT\x10\x02\"\xd5\x01\n\x16MySqlConnectionProfile\x12\x12\n\x04host\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x12\n\x04port\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x02\x12\x16\n\x08username\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x17\n\x08password\x18\x04 \x01(\tB\x05\xe2\x41\x02\x04\x02\x12\x1a\n\x0cpassword_set\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x30\n\x03ssl\x18\x06 \x01(\x0b\x32#.google.cloud.clouddms.v1.SslConfig\x12\x14\n\x0c\x63loud_sql_id\x18\x07 \x01(\t\"\xfc\x03\n\x1bPostgreSqlConnectionProfile\x12\x12\n\x04host\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x12\n\x04port\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x02\x12\x16\n\x08username\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x17\n\x08password\x18\x04 \x01(\tB\x05\xe2\x41\x02\x04\x02\x12\x1a\n\x0cpassword_set\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x30\n\x03ssl\x18\x06 \x01(\x0b\x32#.google.cloud.clouddms.v1.SslConfig\x12\x14\n\x0c\x63loud_sql_id\x18\x07 \x01(\t\x12Q\n\x14network_architecture\x18\x08 \x01(\x0e\x32-.google.cloud.clouddms.v1.NetworkArchitectureB\x04\xe2\x41\x01\x03\x12P\n\x16static_ip_connectivity\x18\x64 \x01(\x0b\x32..google.cloud.clouddms.v1.StaticIpConnectivityH\x00\x12k\n$private_service_connect_connectivity\x18\x65 \x01(\x0b\x32;.google.cloud.clouddms.v1.PrivateServiceConnectConnectivityH\x00\x42\x0e\n\x0c\x63onnectivity\"\xfc\x03\n\x17OracleConnectionProfile\x12\x12\n\x04host\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x12\n\x04port\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x02\x12\x16\n\x08username\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x17\n\x08password\x18\x04 \x01(\tB\x05\xe2\x41\x02\x04\x02\x12\x1a\n\x0cpassword_set\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x1e\n\x10\x64\x61tabase_service\x18\x06 \x01(\tB\x04\xe2\x41\x01\x02\x12\x30\n\x03ssl\x18\x07 \x01(\x0b\x32#.google.cloud.clouddms.v1.SslConfig\x12_\n\x1estatic_service_ip_connectivity\x18\x64 \x01(\x0b\x32\x35.google.cloud.clouddms.v1.StaticServiceIpConnectivityH\x00\x12Z\n\x18\x66orward_ssh_connectivity\x18\x65 \x01(\x0b\x32\x36.google.cloud.clouddms.v1.ForwardSshTunnelConnectivityH\x00\x12M\n\x14private_connectivity\x18\x66 \x01(\x0b\x32-.google.cloud.clouddms.v1.PrivateConnectivityH\x00\x42\x0e\n\x0c\x63onnectivity\"\xd2\x01\n\x19\x43loudSqlConnectionProfile\x12\x1a\n\x0c\x63loud_sql_id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x42\n\x08settings\x18\x02 \x01(\x0b\x32*.google.cloud.clouddms.v1.CloudSqlSettingsB\x04\xe2\x41\x01\x05\x12\x18\n\nprivate_ip\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x17\n\tpublic_ip\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\"\n\x14\x61\x64\x64itional_public_ip\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03\"w\n\x18\x41lloyDbConnectionProfile\x12\x18\n\ncluster_id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x41\n\x08settings\x18\x02 \x01(\x0b\x32).google.cloud.clouddms.v1.AlloyDbSettingsB\x04\xe2\x41\x01\x05\"\x9c\x01\n\x0bSqlAclEntry\x12\r\n\x05value\x18\x01 \x01(\t\x12\x31\n\x0b\x65xpire_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\x12.\n\x03ttl\x18\x0b \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x04H\x00\x12\r\n\x05label\x18\x03 \x01(\tB\x0c\n\nexpiration\"\xee\x01\n\x0bSqlIpConfig\x12/\n\x0b\x65nable_ipv4\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12\x17\n\x0fprivate_network\x18\x02 \x01(\t\x12 \n\x12\x61llocated_ip_range\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12/\n\x0brequire_ssl\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12\x42\n\x13\x61uthorized_networks\x18\x04 \x03(\x0b\x32%.google.cloud.clouddms.v1.SqlAclEntry\"\x9f\r\n\x10\x43loudSqlSettings\x12W\n\x10\x64\x61tabase_version\x18\x01 \x01(\x0e\x32=.google.cloud.clouddms.v1.CloudSqlSettings.SqlDatabaseVersion\x12O\n\x0buser_labels\x18\x02 \x03(\x0b\x32:.google.cloud.clouddms.v1.CloudSqlSettings.UserLabelsEntry\x12\x0c\n\x04tier\x18\x03 \x01(\t\x12>\n\x19storage_auto_resize_limit\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12Y\n\x11\x61\x63tivation_policy\x18\x05 \x01(\x0e\x32>.google.cloud.clouddms.v1.CloudSqlSettings.SqlActivationPolicy\x12\x38\n\tip_config\x18\x06 \x01(\x0b\x32%.google.cloud.clouddms.v1.SqlIpConfig\x12\x39\n\x15\x61uto_storage_increase\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12U\n\x0e\x64\x61tabase_flags\x18\x08 \x03(\x0b\x32=.google.cloud.clouddms.v1.CloudSqlSettings.DatabaseFlagsEntry\x12R\n\x0e\x64\x61ta_disk_type\x18\t \x01(\x0e\x32:.google.cloud.clouddms.v1.CloudSqlSettings.SqlDataDiskType\x12\x36\n\x11\x64\x61ta_disk_size_gb\x18\n \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\x0c\n\x04zone\x18\x0b \x01(\t\x12\x1c\n\x0esecondary_zone\x18\x12 \x01(\tB\x04\xe2\x41\x01\x01\x12\x11\n\tsource_id\x18\x0c \x01(\t\x12\x1b\n\rroot_password\x18\r \x01(\tB\x04\xe2\x41\x01\x04\x12\x1f\n\x11root_password_set\x18\x0e \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x11\n\tcollation\x18\x0f \x01(\t\x12\x15\n\rcmek_key_name\x18\x10 \x01(\t\x12_\n\x11\x61vailability_type\x18\x11 \x01(\x0e\x32>.google.cloud.clouddms.v1.CloudSqlSettings.SqlAvailabilityTypeB\x04\xe2\x41\x01\x01\x12I\n\x07\x65\x64ition\x18\x13 \x01(\x0e\x32\x32.google.cloud.clouddms.v1.CloudSqlSettings.EditionB\x04\xe2\x41\x01\x01\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x34\n\x12\x44\x61tabaseFlagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"S\n\x13SqlActivationPolicy\x12%\n!SQL_ACTIVATION_POLICY_UNSPECIFIED\x10\x00\x12\n\n\x06\x41LWAYS\x10\x01\x12\t\n\x05NEVER\x10\x02\"M\n\x0fSqlDataDiskType\x12\"\n\x1eSQL_DATA_DISK_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06PD_SSD\x10\x01\x12\n\n\x06PD_HDD\x10\x02\"\xdf\x01\n\x12SqlDatabaseVersion\x12$\n SQL_DATABASE_VERSION_UNSPECIFIED\x10\x00\x12\r\n\tMYSQL_5_6\x10\x01\x12\r\n\tMYSQL_5_7\x10\x02\x12\x10\n\x0cPOSTGRES_9_6\x10\x03\x12\x0f\n\x0bPOSTGRES_11\x10\x04\x12\x0f\n\x0bPOSTGRES_10\x10\x05\x12\r\n\tMYSQL_8_0\x10\x06\x12\x0f\n\x0bPOSTGRES_12\x10\x07\x12\x0f\n\x0bPOSTGRES_13\x10\x08\x12\x0f\n\x0bPOSTGRES_14\x10\x11\x12\x0f\n\x0bPOSTGRES_15\x10\x12\"U\n\x13SqlAvailabilityType\x12%\n!SQL_AVAILABILITY_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05ZONAL\x10\x01\x12\x0c\n\x08REGIONAL\x10\x02\"G\n\x07\x45\x64ition\x12\x17\n\x13\x45\x44ITION_UNSPECIFIED\x10\x00\x12\x0e\n\nENTERPRISE\x10\x02\x12\x13\n\x0f\x45NTERPRISE_PLUS\x10\x03\"\xb7\x08\n\x0f\x41lloyDbSettings\x12S\n\x0cinitial_user\x18\x01 \x01(\x0b\x32\x36.google.cloud.clouddms.v1.AlloyDbSettings.UserPasswordB\x05\xe2\x41\x02\x02\x04\x12\x19\n\x0bvpc_network\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x45\n\x06labels\x18\x03 \x03(\x0b\x32\x35.google.cloud.clouddms.v1.AlloyDbSettings.LabelsEntry\x12\x64\n\x19primary_instance_settings\x18\x04 \x01(\x0b\x32\x41.google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings\x12[\n\x11\x65ncryption_config\x18\x05 \x01(\x0b\x32:.google.cloud.clouddms.v1.AlloyDbSettings.EncryptionConfigB\x04\xe2\x41\x01\x01\x1aJ\n\x0cUserPassword\x12\x0c\n\x04user\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t\x12\x1a\n\x0cpassword_set\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x03\x1a\x84\x04\n\x17PrimaryInstanceSettings\x12\x10\n\x02id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12g\n\x0emachine_config\x18\x02 \x01(\x0b\x32O.google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings.MachineConfig\x12l\n\x0e\x64\x61tabase_flags\x18\x06 \x03(\x0b\x32T.google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings.DatabaseFlagsEntry\x12]\n\x06labels\x18\x07 \x03(\x0b\x32M.google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings.LabelsEntry\x12\x18\n\nprivate_ip\x18\x08 \x01(\tB\x04\xe2\x41\x01\x03\x1a\"\n\rMachineConfig\x12\x11\n\tcpu_count\x18\x01 \x01(\x05\x1a\x34\n\x12\x44\x61tabaseFlagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a(\n\x10\x45ncryptionConfig\x12\x14\n\x0ckms_key_name\x18\x01 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x16\n\x14StaticIpConnectivity\"E\n!PrivateServiceConnectConnectivity\x12 \n\x12service_attachment\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"]\n\x16ReverseSshConnectivity\x12\x13\n\x05vm_ip\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x15\n\x07vm_port\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x02\x12\n\n\x02vm\x18\x03 \x01(\t\x12\x0b\n\x03vpc\x18\x04 \x01(\t\"%\n\x16VpcPeeringConnectivity\x12\x0b\n\x03vpc\x18\x01 \x01(\t\"\xac\x01\n\x1c\x46orwardSshTunnelConnectivity\x12\x16\n\x08hostname\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x16\n\x08username\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x0c\n\x04port\x18\x03 \x01(\x05\x12\x18\n\x08password\x18\x64 \x01(\tB\x04\xe2\x41\x01\x04H\x00\x12\x1b\n\x0bprivate_key\x18\x65 \x01(\tB\x04\xe2\x41\x01\x04H\x00\x42\x17\n\x15\x61uthentication_method\"\x1d\n\x1bStaticServiceIpConnectivity\"7\n\x13PrivateConnectivity\x12 \n\x12private_connection\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x86\x01\n\x0c\x44\x61tabaseType\x12<\n\x08provider\x18\x01 \x01(\x0e\x32*.google.cloud.clouddms.v1.DatabaseProvider\x12\x38\n\x06\x65ngine\x18\x02 \x01(\x0e\x32(.google.cloud.clouddms.v1.DatabaseEngine\"\xe2\x11\n\x0cMigrationJob\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x35\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x42\n\x06labels\x18\x04 \x03(\x0b\x32\x32.google.cloud.clouddms.v1.MigrationJob.LabelsEntry\x12\x14\n\x0c\x64isplay_name\x18\x05 \x01(\t\x12;\n\x05state\x18\x06 \x01(\x0e\x32,.google.cloud.clouddms.v1.MigrationJob.State\x12\x41\n\x05phase\x18\x07 \x01(\x0e\x32,.google.cloud.clouddms.v1.MigrationJob.PhaseB\x04\xe2\x41\x01\x03\x12?\n\x04type\x18\x08 \x01(\x0e\x32+.google.cloud.clouddms.v1.MigrationJob.TypeB\x04\xe2\x41\x01\x02\x12\x11\n\tdump_path\x18\t \x01(\t\x12\x44\n\ndump_flags\x18\x11 \x01(\x0b\x32\x30.google.cloud.clouddms.v1.MigrationJob.DumpFlags\x12\x14\n\x06source\x18\n \x01(\tB\x04\xe2\x41\x01\x02\x12\x19\n\x0b\x64\x65stination\x18\x0b \x01(\tB\x04\xe2\x41\x01\x02\x12T\n\x18reverse_ssh_connectivity\x18\x65 \x01(\x0b\x32\x30.google.cloud.clouddms.v1.ReverseSshConnectivityH\x00\x12T\n\x18vpc_peering_connectivity\x18\x66 \x01(\x0b\x32\x30.google.cloud.clouddms.v1.VpcPeeringConnectivityH\x00\x12P\n\x16static_ip_connectivity\x18g \x01(\x0b\x32..google.cloud.clouddms.v1.StaticIpConnectivityH\x00\x12\x31\n\x08\x64uration\x18\x0c \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x03\x12\'\n\x05\x65rror\x18\r \x01(\x0b\x32\x12.google.rpc.StatusB\x04\xe2\x41\x01\x03\x12?\n\x0fsource_database\x18\x0e \x01(\x0b\x32&.google.cloud.clouddms.v1.DatabaseType\x12\x44\n\x14\x64\x65stination_database\x18\x0f \x01(\x0b\x32&.google.cloud.clouddms.v1.DatabaseType\x12\x32\n\x08\x65nd_time\x18\x10 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12O\n\x14\x63onversion_workspace\x18\x12 \x01(\x0b\x32\x31.google.cloud.clouddms.v1.ConversionWorkspaceInfo\x12\x0e\n\x06\x66ilter\x18\x14 \x01(\t\x12\x15\n\rcmek_key_name\x18\x15 \x01(\t\x12Z\n\x12performance_config\x18\x16 \x01(\x0b\x32\x38.google.cloud.clouddms.v1.MigrationJob.PerformanceConfigB\x04\xe2\x41\x01\x01\x1a\'\n\x08\x44umpFlag\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\x1aP\n\tDumpFlags\x12\x43\n\ndump_flags\x18\x01 \x03(\x0b\x32/.google.cloud.clouddms.v1.MigrationJob.DumpFlag\x1a\xd5\x01\n\x11PerformanceConfig\x12g\n\x13\x64ump_parallel_level\x18\x01 \x01(\x0e\x32J.google.cloud.clouddms.v1.MigrationJob.PerformanceConfig.DumpParallelLevel\"W\n\x11\x44umpParallelLevel\x12#\n\x1f\x44UMP_PARALLEL_LEVEL_UNSPECIFIED\x10\x00\x12\x07\n\x03MIN\x10\x01\x12\x0b\n\x07OPTIMAL\x10\x02\x12\x07\n\x03MAX\x10\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xf1\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bMAINTENANCE\x10\x01\x12\t\n\x05\x44RAFT\x10\x02\x12\x0c\n\x08\x43REATING\x10\x03\x12\x0f\n\x0bNOT_STARTED\x10\x04\x12\x0b\n\x07RUNNING\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06\x12\r\n\tCOMPLETED\x10\x07\x12\x0c\n\x08\x44\x45LETING\x10\x08\x12\x0c\n\x08STOPPING\x10\t\x12\x0b\n\x07STOPPED\x10\n\x12\x0b\n\x07\x44\x45LETED\x10\x0b\x12\x0c\n\x08UPDATING\x10\x0c\x12\x0c\n\x08STARTING\x10\r\x12\x0e\n\nRESTARTING\x10\x0e\x12\x0c\n\x08RESUMING\x10\x0f\"\x8e\x01\n\x05Phase\x12\x15\n\x11PHASE_UNSPECIFIED\x10\x00\x12\r\n\tFULL_DUMP\x10\x01\x12\x07\n\x03\x43\x44\x43\x10\x02\x12\x17\n\x13PROMOTE_IN_PROGRESS\x10\x03\x12%\n!WAITING_FOR_SOURCE_WRITES_TO_STOP\x10\x04\x12\x16\n\x12PREPARING_THE_DUMP\x10\x05\":\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08ONE_TIME\x10\x01\x12\x0e\n\nCONTINUOUS\x10\x02:u\xea\x41r\n)datamigration.googleapis.com/MigrationJob\x12\x45projects/{project}/locations/{location}/migrationJobs/{migration_job}B\x0e\n\x0c\x63onnectivity\":\n\x17\x43onversionWorkspaceInfo\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x11\n\tcommit_id\x18\x02 \x01(\t\"\xc2\x08\n\x11\x43onnectionProfile\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x35\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12G\n\x06labels\x18\x04 \x03(\x0b\x32\x37.google.cloud.clouddms.v1.ConnectionProfile.LabelsEntry\x12@\n\x05state\x18\x05 \x01(\x0e\x32\x31.google.cloud.clouddms.v1.ConnectionProfile.State\x12\x14\n\x0c\x64isplay_name\x18\x06 \x01(\t\x12\x41\n\x05mysql\x18\x64 \x01(\x0b\x32\x30.google.cloud.clouddms.v1.MySqlConnectionProfileH\x00\x12K\n\npostgresql\x18\x65 \x01(\x0b\x32\x35.google.cloud.clouddms.v1.PostgreSqlConnectionProfileH\x00\x12\x43\n\x06oracle\x18h \x01(\x0b\x32\x31.google.cloud.clouddms.v1.OracleConnectionProfileH\x00\x12G\n\x08\x63loudsql\x18\x66 \x01(\x0b\x32\x33.google.cloud.clouddms.v1.CloudSqlConnectionProfileH\x00\x12\x45\n\x07\x61lloydb\x18i \x01(\x0b\x32\x32.google.cloud.clouddms.v1.AlloyDbConnectionProfileH\x00\x12\'\n\x05\x65rror\x18\x07 \x01(\x0b\x32\x12.google.rpc.StatusB\x04\xe2\x41\x01\x03\x12<\n\x08provider\x18\x08 \x01(\x0e\x32*.google.cloud.clouddms.v1.DatabaseProvider\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"w\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05\x44RAFT\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\t\n\x05READY\x10\x03\x12\x0c\n\x08UPDATING\x10\x04\x12\x0c\n\x08\x44\x45LETING\x10\x05\x12\x0b\n\x07\x44\x45LETED\x10\x06\x12\n\n\x06\x46\x41ILED\x10\x07:\x85\x01\xea\x41\x81\x01\n.datamigration.googleapis.com/ConnectionProfile\x12Oprojects/{project}/locations/{location}/connectionProfiles/{connection_profile}B\x14\n\x12\x63onnection_profile\"\xd8\x08\n\x1dMigrationJobVerificationError\x12[\n\nerror_code\x18\x01 \x01(\x0e\x32\x41.google.cloud.clouddms.v1.MigrationJobVerificationError.ErrorCodeB\x04\xe2\x41\x01\x03\x12\x1b\n\rerror_message\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\x12\"\n\x14\x65rror_detail_message\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\"\x98\x07\n\tErrorCode\x12\x1a\n\x16\x45RROR_CODE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x43ONNECTION_FAILURE\x10\x01\x12\x1a\n\x16\x41UTHENTICATION_FAILURE\x10\x02\x12%\n!INVALID_CONNECTION_PROFILE_CONFIG\x10\x03\x12\x1b\n\x17VERSION_INCOMPATIBILITY\x10\x04\x12,\n(CONNECTION_PROFILE_TYPES_INCOMPATIBILITY\x10\x05\x12\x1a\n\x16NO_PGLOGICAL_INSTALLED\x10\x07\x12!\n\x1dPGLOGICAL_NODE_ALREADY_EXISTS\x10\x08\x12\x15\n\x11INVALID_WAL_LEVEL\x10\t\x12\"\n\x1eINVALID_SHARED_PRELOAD_LIBRARY\x10\n\x12&\n\"INSUFFICIENT_MAX_REPLICATION_SLOTS\x10\x0b\x12 \n\x1cINSUFFICIENT_MAX_WAL_SENDERS\x10\x0c\x12%\n!INSUFFICIENT_MAX_WORKER_PROCESSES\x10\r\x12\x1a\n\x16UNSUPPORTED_EXTENSIONS\x10\x0e\x12\x1e\n\x1aUNSUPPORTED_MIGRATION_TYPE\x10\x0f\x12#\n\x1fINVALID_RDS_LOGICAL_REPLICATION\x10\x10\x12\x19\n\x15UNSUPPORTED_GTID_MODE\x10\x11\x12 \n\x1cUNSUPPORTED_TABLE_DEFINITION\x10\x12\x12\x17\n\x13UNSUPPORTED_DEFINER\x10\x13\x12\"\n\x1e\x43\x41NT_RESTART_RUNNING_MIGRATION\x10\x15\x12\x18\n\x14SOURCE_ALREADY_SETUP\x10\x17\x12\x1f\n\x1bTABLES_WITH_LIMITED_SUPPORT\x10\x18\x12\x1f\n\x1bUNSUPPORTED_DATABASE_LOCALE\x10\x19\x12#\n\x1fUNSUPPORTED_DATABASE_FDW_CONFIG\x10\x1a\x12\x0f\n\x0b\x45RROR_RDBMS\x10\x1b\x12!\n\x1dSOURCE_SIZE_EXCEEDS_THRESHOLD\x10\x1c\x12\"\n\x1e\x45XISTING_CONFLICTING_DATABASES\x10\x1d\x12*\n&PARALLEL_IMPORT_INSUFFICIENT_PRIVILEGE\x10\x1e\"\xe8\x05\n\x11PrivateConnection\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x35\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12G\n\x06labels\x18\x04 \x03(\x0b\x32\x37.google.cloud.clouddms.v1.PrivateConnection.LabelsEntry\x12\x14\n\x0c\x64isplay_name\x18\x05 \x01(\t\x12\x46\n\x05state\x18\x06 \x01(\x0e\x32\x31.google.cloud.clouddms.v1.PrivateConnection.StateB\x04\xe2\x41\x01\x03\x12\'\n\x05\x65rror\x18\x07 \x01(\x0b\x32\x12.google.rpc.StatusB\x04\xe2\x41\x01\x03\x12H\n\x12vpc_peering_config\x18\x64 \x01(\x0b\x32*.google.cloud.clouddms.v1.VpcPeeringConfigH\x00\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"v\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0b\n\x07\x43REATED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x14\n\x10\x46\x41ILED_TO_DELETE\x10\x05\x12\x0b\n\x07\x44\x45LETED\x10\x06:\x85\x01\xea\x41\x81\x01\n.datamigration.googleapis.com/PrivateConnection\x12Oprojects/{project}/locations/{location}/privateConnections/{private_connection}B\x0e\n\x0c\x63onnectivity\"d\n\x10VpcPeeringConfig\x12:\n\x08vpc_name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x63ompute.googleapis.com/Networks\x12\x14\n\x06subnet\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02*\x93\x01\n\x13NetworkArchitecture\x12$\n NETWORK_ARCHITECTURE_UNSPECIFIED\x10\x00\x12*\n&NETWORK_ARCHITECTURE_OLD_CSQL_PRODUCER\x10\x01\x12*\n&NETWORK_ARCHITECTURE_NEW_CSQL_PRODUCER\x10\x02*X\n\x0e\x44\x61tabaseEngine\x12\x1f\n\x1b\x44\x41TABASE_ENGINE_UNSPECIFIED\x10\x00\x12\t\n\x05MYSQL\x10\x01\x12\x0e\n\nPOSTGRESQL\x10\x02\x12\n\n\x06ORACLE\x10\x04*e\n\x10\x44\x61tabaseProvider\x12!\n\x1d\x44\x41TABASE_PROVIDER_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43LOUDSQL\x10\x01\x12\x07\n\x03RDS\x10\x02\x12\n\n\x06\x41URORA\x10\x03\x12\x0b\n\x07\x41LLOYDB\x10\x04\x42\x98\x02\n\x1c\x63om.google.cloud.clouddms.v1B\x16\x43louddmsResourcesProtoP\x01Z8cloud.google.com/go/clouddms/apiv1/clouddmspb;clouddmspb\xaa\x02\x18Google.Cloud.CloudDms.V1\xca\x02\x18Google\\Cloud\\CloudDms\\V1\xea\x02\x1bGoogle::Cloud::CloudDMS::V1\xea\x41O\n\x1f\x63ompute.googleapis.com/Networks\x12,projects/{project}/global/networks/{network}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.BoolValue", "google/protobuf/wrappers.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module CloudDMS
      module V1
        SslConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SslConfig").msgclass
        SslConfig::SslType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SslConfig.SslType").enummodule
        MySqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MySqlConnectionProfile").msgclass
        PostgreSqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PostgreSqlConnectionProfile").msgclass
        OracleConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.OracleConnectionProfile").msgclass
        CloudSqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlConnectionProfile").msgclass
        AlloyDbConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbConnectionProfile").msgclass
        SqlAclEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SqlAclEntry").msgclass
        SqlIpConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SqlIpConfig").msgclass
        CloudSqlSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings").msgclass
        CloudSqlSettings::SqlActivationPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlActivationPolicy").enummodule
        CloudSqlSettings::SqlDataDiskType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlDataDiskType").enummodule
        CloudSqlSettings::SqlDatabaseVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlDatabaseVersion").enummodule
        CloudSqlSettings::SqlAvailabilityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlAvailabilityType").enummodule
        CloudSqlSettings::Edition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.Edition").enummodule
        AlloyDbSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbSettings").msgclass
        AlloyDbSettings::UserPassword = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbSettings.UserPassword").msgclass
        AlloyDbSettings::PrimaryInstanceSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings").msgclass
        AlloyDbSettings::PrimaryInstanceSettings::MachineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbSettings.PrimaryInstanceSettings.MachineConfig").msgclass
        AlloyDbSettings::EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.AlloyDbSettings.EncryptionConfig").msgclass
        StaticIpConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.StaticIpConnectivity").msgclass
        PrivateServiceConnectConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PrivateServiceConnectConnectivity").msgclass
        ReverseSshConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ReverseSshConnectivity").msgclass
        VpcPeeringConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VpcPeeringConnectivity").msgclass
        ForwardSshTunnelConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ForwardSshTunnelConnectivity").msgclass
        StaticServiceIpConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.StaticServiceIpConnectivity").msgclass
        PrivateConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PrivateConnectivity").msgclass
        DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseType").msgclass
        MigrationJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob").msgclass
        MigrationJob::DumpFlag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.DumpFlag").msgclass
        MigrationJob::DumpFlags = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.DumpFlags").msgclass
        MigrationJob::PerformanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.PerformanceConfig").msgclass
        MigrationJob::PerformanceConfig::DumpParallelLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.PerformanceConfig.DumpParallelLevel").enummodule
        MigrationJob::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.State").enummodule
        MigrationJob::Phase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.Phase").enummodule
        MigrationJob::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.Type").enummodule
        ConversionWorkspaceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConversionWorkspaceInfo").msgclass
        ConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConnectionProfile").msgclass
        ConnectionProfile::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConnectionProfile.State").enummodule
        MigrationJobVerificationError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJobVerificationError").msgclass
        MigrationJobVerificationError::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJobVerificationError.ErrorCode").enummodule
        PrivateConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PrivateConnection").msgclass
        PrivateConnection::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PrivateConnection.State").enummodule
        VpcPeeringConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VpcPeeringConfig").msgclass
        NetworkArchitecture = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.NetworkArchitecture").enummodule
        DatabaseEngine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseEngine").enummodule
        DatabaseProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseProvider").enummodule
      end
    end
  end
end
