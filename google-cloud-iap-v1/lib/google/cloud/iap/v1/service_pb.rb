# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/iap/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/iap/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.iap.v1.ListTunnelDestGroupsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.iap.v1.ListTunnelDestGroupsResponse" do
      repeated :tunnel_dest_groups, :message, 1, "google.cloud.iap.v1.TunnelDestGroup"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.iap.v1.CreateTunnelDestGroupRequest" do
      optional :parent, :string, 1
      optional :tunnel_dest_group, :message, 2, "google.cloud.iap.v1.TunnelDestGroup"
      optional :tunnel_dest_group_id, :string, 3
    end
    add_message "google.cloud.iap.v1.GetTunnelDestGroupRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.DeleteTunnelDestGroupRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.UpdateTunnelDestGroupRequest" do
      optional :tunnel_dest_group, :message, 1, "google.cloud.iap.v1.TunnelDestGroup"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.iap.v1.TunnelDestGroup" do
      optional :name, :string, 1
      repeated :cidrs, :string, 2
      repeated :fqdns, :string, 3
    end
    add_message "google.cloud.iap.v1.GetIapSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.UpdateIapSettingsRequest" do
      optional :iap_settings, :message, 1, "google.cloud.iap.v1.IapSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.iap.v1.IapSettings" do
      optional :name, :string, 1
      optional :access_settings, :message, 5, "google.cloud.iap.v1.AccessSettings"
      optional :application_settings, :message, 6, "google.cloud.iap.v1.ApplicationSettings"
    end
    add_message "google.cloud.iap.v1.AccessSettings" do
      optional :gcip_settings, :message, 1, "google.cloud.iap.v1.GcipSettings"
      optional :cors_settings, :message, 2, "google.cloud.iap.v1.CorsSettings"
      optional :oauth_settings, :message, 3, "google.cloud.iap.v1.OAuthSettings"
      optional :reauth_settings, :message, 6, "google.cloud.iap.v1.ReauthSettings"
      optional :allowed_domains_settings, :message, 7, "google.cloud.iap.v1.AllowedDomainsSettings"
    end
    add_message "google.cloud.iap.v1.GcipSettings" do
      repeated :tenant_ids, :string, 1
      optional :login_page_uri, :message, 2, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.CorsSettings" do
      optional :allow_http_options, :message, 1, "google.protobuf.BoolValue"
    end
    add_message "google.cloud.iap.v1.OAuthSettings" do
      optional :login_hint, :message, 2, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.ReauthSettings" do
      optional :method, :enum, 1, "google.cloud.iap.v1.ReauthSettings.Method"
      optional :max_age, :message, 2, "google.protobuf.Duration"
      optional :policy_type, :enum, 3, "google.cloud.iap.v1.ReauthSettings.PolicyType"
    end
    add_enum "google.cloud.iap.v1.ReauthSettings.Method" do
      value :METHOD_UNSPECIFIED, 0
      value :LOGIN, 1
      value :PASSWORD, 2
      value :SECURE_KEY, 3
      value :ENROLLED_SECOND_FACTORS, 4
    end
    add_enum "google.cloud.iap.v1.ReauthSettings.PolicyType" do
      value :POLICY_TYPE_UNSPECIFIED, 0
      value :MINIMUM, 1
      value :DEFAULT, 2
    end
    add_message "google.cloud.iap.v1.AllowedDomainsSettings" do
      proto3_optional :enable, :bool, 1
      repeated :domains, :string, 2
    end
    add_message "google.cloud.iap.v1.ApplicationSettings" do
      optional :csm_settings, :message, 1, "google.cloud.iap.v1.CsmSettings"
      optional :access_denied_page_settings, :message, 2, "google.cloud.iap.v1.AccessDeniedPageSettings"
      optional :cookie_domain, :message, 3, "google.protobuf.StringValue"
      optional :attribute_propagation_settings, :message, 4, "google.cloud.iap.v1.AttributePropagationSettings"
    end
    add_message "google.cloud.iap.v1.CsmSettings" do
      optional :rctoken_aud, :message, 1, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.AccessDeniedPageSettings" do
      optional :access_denied_page_uri, :message, 1, "google.protobuf.StringValue"
      optional :generate_troubleshooting_uri, :message, 2, "google.protobuf.BoolValue"
      proto3_optional :remediation_token_generation_enabled, :message, 3, "google.protobuf.BoolValue"
    end
    add_message "google.cloud.iap.v1.AttributePropagationSettings" do
      proto3_optional :expression, :string, 1
      repeated :output_credentials, :enum, 2, "google.cloud.iap.v1.AttributePropagationSettings.OutputCredentials"
      proto3_optional :enable, :bool, 3
    end
    add_enum "google.cloud.iap.v1.AttributePropagationSettings.OutputCredentials" do
      value :OUTPUT_CREDENTIALS_UNSPECIFIED, 0
      value :HEADER, 1
      value :JWT, 2
      value :RCTOKEN, 3
    end
    add_message "google.cloud.iap.v1.ListBrandsRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.iap.v1.ListBrandsResponse" do
      repeated :brands, :message, 1, "google.cloud.iap.v1.Brand"
    end
    add_message "google.cloud.iap.v1.CreateBrandRequest" do
      optional :parent, :string, 1
      optional :brand, :message, 2, "google.cloud.iap.v1.Brand"
    end
    add_message "google.cloud.iap.v1.GetBrandRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse" do
      repeated :identity_aware_proxy_clients, :message, 1, "google.cloud.iap.v1.IdentityAwareProxyClient"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest" do
      optional :parent, :string, 1
      optional :identity_aware_proxy_client, :message, 2, "google.cloud.iap.v1.IdentityAwareProxyClient"
    end
    add_message "google.cloud.iap.v1.GetIdentityAwareProxyClientRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.Brand" do
      optional :name, :string, 1
      optional :support_email, :string, 2
      optional :application_title, :string, 3
      optional :org_internal_only, :bool, 4
    end
    add_message "google.cloud.iap.v1.IdentityAwareProxyClient" do
      optional :name, :string, 1
      optional :secret, :string, 2
      optional :display_name, :string, 3
    end
  end
end

module Google
  module Cloud
    module Iap
      module V1
        ListTunnelDestGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListTunnelDestGroupsRequest").msgclass
        ListTunnelDestGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListTunnelDestGroupsResponse").msgclass
        CreateTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateTunnelDestGroupRequest").msgclass
        GetTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetTunnelDestGroupRequest").msgclass
        DeleteTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.DeleteTunnelDestGroupRequest").msgclass
        UpdateTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.UpdateTunnelDestGroupRequest").msgclass
        TunnelDestGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.TunnelDestGroup").msgclass
        GetIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIapSettingsRequest").msgclass
        UpdateIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.UpdateIapSettingsRequest").msgclass
        IapSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IapSettings").msgclass
        AccessSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessSettings").msgclass
        GcipSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GcipSettings").msgclass
        CorsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CorsSettings").msgclass
        OAuthSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.OAuthSettings").msgclass
        ReauthSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings").msgclass
        ReauthSettings::Method = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings.Method").enummodule
        ReauthSettings::PolicyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings.PolicyType").enummodule
        AllowedDomainsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AllowedDomainsSettings").msgclass
        ApplicationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ApplicationSettings").msgclass
        CsmSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CsmSettings").msgclass
        AccessDeniedPageSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessDeniedPageSettings").msgclass
        AttributePropagationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AttributePropagationSettings").msgclass
        AttributePropagationSettings::OutputCredentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AttributePropagationSettings.OutputCredentials").enummodule
        ListBrandsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsRequest").msgclass
        ListBrandsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsResponse").msgclass
        CreateBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateBrandRequest").msgclass
        GetBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetBrandRequest").msgclass
        ListIdentityAwareProxyClientsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest").msgclass
        ListIdentityAwareProxyClientsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse").msgclass
        CreateIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest").msgclass
        GetIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIdentityAwareProxyClientRequest").msgclass
        ResetIdentityAwareProxyClientSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest").msgclass
        DeleteIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest").msgclass
        Brand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.Brand").msgclass
        IdentityAwareProxyClient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IdentityAwareProxyClient").msgclass
      end
    end
  end
end
