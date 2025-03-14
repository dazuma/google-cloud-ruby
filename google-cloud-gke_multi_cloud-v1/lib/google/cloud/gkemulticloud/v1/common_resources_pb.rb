# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkemulticloud/v1/common_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/gkemulticloud/v1/common_resources.proto\x12\x1dgoogle.cloud.gkemulticloud.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"r\n\x03Jwk\x12\x0b\n\x03kty\x18\x01 \x01(\t\x12\x0b\n\x03\x61lg\x18\x02 \x01(\t\x12\x0b\n\x03use\x18\x03 \x01(\t\x12\x0b\n\x03kid\x18\x04 \x01(\t\x12\t\n\x01n\x18\x05 \x01(\t\x12\t\n\x01\x65\x18\x06 \x01(\t\x12\t\n\x01x\x18\x07 \x01(\t\x12\t\n\x01y\x18\x08 \x01(\t\x12\x0b\n\x03\x63rv\x18\t \x01(\t\"^\n\x16WorkloadIdentityConfig\x12\x12\n\nissuer_uri\x18\x01 \x01(\t\x12\x15\n\rworkload_pool\x18\x02 \x01(\t\x12\x19\n\x11identity_provider\x18\x03 \x01(\t\"3\n\x11MaxPodsConstraint\x12\x1e\n\x11max_pods_per_node\x18\x01 \x01(\x03\x42\x03\xe0\x41\x02\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rstatus_detail\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x65rror_detail\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\"\xd2\x01\n\tNodeTaint\x12\x10\n\x03key\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x06\x65\x66\x66\x65\x63t\x18\x03 \x01(\x0e\x32/.google.cloud.gkemulticloud.v1.NodeTaint.EffectB\x03\xe0\x41\x02\"Y\n\x06\x45\x66\x66\x65\x63t\x12\x16\n\x12\x45\x46\x46\x45\x43T_UNSPECIFIED\x10\x00\x12\x0f\n\x0bNO_SCHEDULE\x10\x01\x12\x16\n\x12PREFER_NO_SCHEDULE\x10\x02\x12\x0e\n\nNO_EXECUTE\x10\x03\"\xae\x02\n\x11NodeKubeletConfig\x12\x33\n&insecure_kubelet_readonly_port_enabled\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01\x12$\n\x12\x63pu_manager_policy\x18\x02 \x01(\tB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x1f\n\rcpu_cfs_quota\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01H\x01\x88\x01\x01\x12&\n\x14\x63pu_cfs_quota_period\x18\x04 \x01(\tB\x03\xe0\x41\x01H\x02\x88\x01\x01\x12 \n\x0epod_pids_limit\x18\x05 \x01(\x03\x42\x03\xe0\x41\x01H\x03\x88\x01\x01\x42\x15\n\x13_cpu_manager_policyB\x10\n\x0e_cpu_cfs_quotaB\x17\n\x15_cpu_cfs_quota_periodB\x11\n\x0f_pod_pids_limit\"6\n\x05\x46leet\x12\x14\n\x07project\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nmembership\x18\x02 \x01(\tB\x03\xe0\x41\x03\"`\n\rLoggingConfig\x12O\n\x10\x63omponent_config\x18\x01 \x01(\x0b\x32\x35.google.cloud.gkemulticloud.v1.LoggingComponentConfig\"\xc2\x01\n\x16LoggingComponentConfig\x12Z\n\x11\x65nable_components\x18\x01 \x03(\x0e\x32?.google.cloud.gkemulticloud.v1.LoggingComponentConfig.Component\"L\n\tComponent\x12\x19\n\x15\x43OMPONENT_UNSPECIFIED\x10\x00\x12\x15\n\x11SYSTEM_COMPONENTS\x10\x01\x12\r\n\tWORKLOADS\x10\x02\"\xc4\x01\n\x10MonitoringConfig\x12Y\n\x19managed_prometheus_config\x18\x02 \x01(\x0b\x32\x36.google.cloud.gkemulticloud.v1.ManagedPrometheusConfig\x12U\n\x17\x63loud_monitoring_config\x18\x04 \x01(\x0b\x32\x34.google.cloud.gkemulticloud.v1.CloudMonitoringConfig\"*\n\x17ManagedPrometheusConfig\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\"9\n\x15\x43loudMonitoringConfig\x12\x14\n\x07\x65nabled\x18\x01 \x01(\x08H\x00\x88\x01\x01\x42\n\n\x08_enabled\"\xd8\x01\n\x13\x42inaryAuthorization\x12Z\n\x0f\x65valuation_mode\x18\x01 \x01(\x0e\x32\x41.google.cloud.gkemulticloud.v1.BinaryAuthorization.EvaluationMode\"e\n\x0e\x45valuationMode\x12\x1f\n\x1b\x45VALUATION_MODE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12$\n PROJECT_SINGLETON_POLICY_ENFORCE\x10\x02\"\xee\x01\n\x15SecurityPostureConfig\x12\x62\n\x12vulnerability_mode\x18\x01 \x01(\x0e\x32\x46.google.cloud.gkemulticloud.v1.SecurityPostureConfig.VulnerabilityMode\"q\n\x11VulnerabilityMode\x12\"\n\x1eVULNERABILITY_MODE_UNSPECIFIED\x10\x00\x12\x1a\n\x16VULNERABILITY_DISABLED\x10\x01\x12\x1c\n\x18VULNERABILITY_ENTERPRISE\x10\x02\x42\xe7\x01\n!com.google.cloud.gkemulticloud.v1B\x14\x43ommonResourcesProtoP\x01ZGcloud.google.com/go/gkemulticloud/apiv1/gkemulticloudpb;gkemulticloudpb\xaa\x02\x1dGoogle.Cloud.GkeMultiCloud.V1\xca\x02\x1dGoogle\\Cloud\\GkeMultiCloud\\V1\xea\x02 Google::Cloud::GkeMultiCloud::V1b\x06proto3"

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
    module GkeMultiCloud
      module V1
        Jwk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.Jwk").msgclass
        WorkloadIdentityConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.WorkloadIdentityConfig").msgclass
        MaxPodsConstraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.MaxPodsConstraint").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.OperationMetadata").msgclass
        NodeTaint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.NodeTaint").msgclass
        NodeTaint::Effect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.NodeTaint.Effect").enummodule
        NodeKubeletConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.NodeKubeletConfig").msgclass
        Fleet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.Fleet").msgclass
        LoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingConfig").msgclass
        LoggingComponentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingComponentConfig").msgclass
        LoggingComponentConfig::Component = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingComponentConfig.Component").enummodule
        MonitoringConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.MonitoringConfig").msgclass
        ManagedPrometheusConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ManagedPrometheusConfig").msgclass
        CloudMonitoringConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CloudMonitoringConfig").msgclass
        BinaryAuthorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.BinaryAuthorization").msgclass
        BinaryAuthorization::EvaluationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.BinaryAuthorization.EvaluationMode").enummodule
        SecurityPostureConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.SecurityPostureConfig").msgclass
        SecurityPostureConfig::VulnerabilityMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.SecurityPostureConfig.VulnerabilityMode").enummodule
      end
    end
  end
end
