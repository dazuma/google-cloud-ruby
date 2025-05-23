# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Kms
      module V1
        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#list_ekm_connections EkmService.ListEkmConnections}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the location associated with the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} to list, in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Optional limit on the number of
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} to include in the
        #     response. Further {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} can
        #     subsequently be obtained by including the
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsResponse#next_page_token ListEkmConnectionsResponse.next_page_token}
        #     in a subsequent request. If unspecified, the server will pick an
        #     appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Optional pagination token, returned earlier via
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsResponse#next_page_token ListEkmConnectionsResponse.next_page_token}.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Only include resources that match the filter in the response. For
        #     more information, see
        #     [Sorting and filtering list
        #     results](https://cloud.google.com/kms/docs/sorting-and-filtering).
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specify how the results should be sorted. If not specified, the
        #     results will be sorted in the default order.  For more information, see
        #     [Sorting and filtering list
        #     results](https://cloud.google.com/kms/docs/sorting-and-filtering).
        class ListEkmConnectionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#list_ekm_connections EkmService.ListEkmConnections}.
        # @!attribute [rw] ekm_connections
        #   @return [::Array<::Google::Cloud::Kms::V1::EkmConnection>]
        #     The list of {::Google::Cloud::Kms::V1::EkmConnection EkmConnections}.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results. Pass this value in
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsRequest#page_token ListEkmConnectionsRequest.page_token}
        #     to retrieve the next page of results.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The total number of {::Google::Cloud::Kms::V1::EkmConnection EkmConnections}
        #     that matched the query.
        #
        #     This field is not populated if
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsRequest#filter ListEkmConnectionsRequest.filter}
        #     is applied.
        class ListEkmConnectionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#get_ekm_connection EkmService.GetEkmConnection}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The {::Google::Cloud::Kms::V1::EkmConnection#name name} of the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} to get.
        class GetEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#create_ekm_connection EkmService.CreateEkmConnection}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the location associated with the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}, in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] ekm_connection_id
        #   @return [::String]
        #     Required. It must be unique within a location and match the regular
        #     expression `[a-zA-Z0-9_-]{1,63}`.
        # @!attribute [rw] ekm_connection
        #   @return [::Google::Cloud::Kms::V1::EkmConnection]
        #     Required. An {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} with
        #     initial field values.
        class CreateEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#update_ekm_connection EkmService.UpdateEkmConnection}.
        # @!attribute [rw] ekm_connection
        #   @return [::Google::Cloud::Kms::V1::EkmConnection]
        #     Required. {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} with updated
        #     values.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#get_ekm_config EkmService.GetEkmConfig}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The {::Google::Cloud::Kms::V1::EkmConfig#name name} of the
        #     {::Google::Cloud::Kms::V1::EkmConfig EkmConfig} to get.
        class GetEkmConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#update_ekm_config EkmService.UpdateEkmConfig}.
        # @!attribute [rw] ekm_config
        #   @return [::Google::Cloud::Kms::V1::EkmConfig]
        #     Required. {::Google::Cloud::Kms::V1::EkmConfig EkmConfig} with updated values.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateEkmConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A {::Google::Cloud::Kms::V1::Certificate Certificate} represents an X.509
        # certificate used to authenticate HTTPS connections to EKM replicas.
        # @!attribute [rw] raw_der
        #   @return [::String]
        #     Required. The raw certificate bytes in DER format.
        # @!attribute [r] parsed
        #   @return [::Boolean]
        #     Output only. True if the certificate was parsed successfully.
        # @!attribute [r] issuer
        #   @return [::String]
        #     Output only. The issuer distinguished name in RFC 2253 format. Only present
        #     if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] subject
        #   @return [::String]
        #     Output only. The subject distinguished name in RFC 2253 format. Only
        #     present if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] subject_alternative_dns_names
        #   @return [::Array<::String>]
        #     Output only. The subject Alternative DNS names. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] not_before_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The certificate is not valid before this time. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] not_after_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The certificate is not valid after this time. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] serial_number
        #   @return [::String]
        #     Output only. The certificate serial number as a hex string. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] sha256_fingerprint
        #   @return [::String]
        #     Output only. The SHA-256 certificate fingerprint as a hex string. Only
        #     present if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        class Certificate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} represents an
        # individual EKM connection. It can be used for creating
        # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys} and
        # {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} with a
        # {::Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} of
        # {::Google::Cloud::Kms::V1::ProtectionLevel::EXTERNAL_VPC EXTERNAL_VPC}, as well as
        # performing cryptographic operations using keys created within the
        # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} in the format
        #     `projects/*/locations/*/ekmConnections/*`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} was created.
        # @!attribute [rw] service_resolvers
        #   @return [::Array<::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver>]
        #     Optional. A list of
        #     {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolvers} where
        #     the EKM can be reached. There should be one ServiceResolver per EKM
        #     replica. Currently, only a single
        #     {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolver} is
        #     supported.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Etag of the currently stored
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
        # @!attribute [rw] key_management_mode
        #   @return [::Google::Cloud::Kms::V1::EkmConnection::KeyManagementMode]
        #     Optional. Describes who can perform control plane operations on the EKM. If
        #     unset, this defaults to
        #     {::Google::Cloud::Kms::V1::EkmConnection::KeyManagementMode::MANUAL MANUAL}.
        # @!attribute [rw] crypto_space_path
        #   @return [::String]
        #     Optional. Identifies the EKM Crypto Space that this
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} maps to. Note: This
        #     field is required if
        #     {::Google::Cloud::Kms::V1::EkmConnection::KeyManagementMode KeyManagementMode} is
        #     {::Google::Cloud::Kms::V1::EkmConnection::KeyManagementMode::CLOUD_KMS CLOUD_KMS}.
        class EkmConnection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolver}
          # represents an EKM replica that can be reached within an
          # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
          # @!attribute [rw] service_directory_service
          #   @return [::String]
          #     Required. The resource name of the Service Directory service pointing to
          #     an EKM replica, in the format
          #     `projects/*/locations/*/namespaces/*/services/*`.
          # @!attribute [rw] endpoint_filter
          #   @return [::String]
          #     Optional. The filter applied to the endpoints of the resolved service. If
          #     no filter is specified, all endpoints will be considered. An endpoint
          #     will be chosen arbitrarily from the filtered list for each request.
          #
          #     For endpoint filter syntax and examples, see
          #     https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
          # @!attribute [rw] hostname
          #   @return [::String]
          #     Required. The hostname of the EKM replica used at TLS and HTTP layers.
          # @!attribute [rw] server_certificates
          #   @return [::Array<::Google::Cloud::Kms::V1::Certificate>]
          #     Required. A list of leaf server certificates used to authenticate HTTPS
          #     connections to the EKM replica. Currently, a maximum of 10
          #     {::Google::Cloud::Kms::V1::Certificate Certificate} is supported.
          class ServiceResolver
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # {::Google::Cloud::Kms::V1::EkmConnection::KeyManagementMode KeyManagementMode}
          # describes who can perform control plane cryptographic operations using this
          # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
          module KeyManagementMode
            # Not specified.
            KEY_MANAGEMENT_MODE_UNSPECIFIED = 0

            # EKM-side key management operations on
            # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys} created with this
            # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} must be initiated from
            # the EKM directly and cannot be performed from Cloud KMS. This means that:
            # * When creating a
            # {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} associated with
            # this
            #   {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}, the caller must
            #   supply the key path of pre-existing external key material that will be
            #   linked to the {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}.
            # * Destruction of external key material cannot be requested via the
            #   Cloud KMS API and must be performed directly in the EKM.
            # * Automatic rotation of key material is not supported.
            MANUAL = 1

            # All {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys} created with this
            # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} use EKM-side key
            # management operations initiated from Cloud KMS. This means that:
            #
            # * When a {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}
            # associated with this {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}
            # is
            #   created, the EKM automatically generates new key material and a new
            #   key path. The caller cannot supply the key path of pre-existing
            #   external key material.
            # * Destruction of external key material associated with this
            #   {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} can be requested by
            #   calling
            #   {::Google::Cloud::Kms::V1::KeyManagementService::Client#destroy_crypto_key_version DestroyCryptoKeyVersion}.
            # * Automatic rotation of key material is supported.
            CLOUD_KMS = 2
          end
        end

        # An {::Google::Cloud::Kms::V1::EkmConfig EkmConfig} is a singleton resource that
        # represents configuration parameters that apply to all
        # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys} and
        # {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} with a
        # {::Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} of
        # {::Google::Cloud::Kms::V1::ProtectionLevel::EXTERNAL_VPC EXTERNAL_VPC} in a given
        # project and location.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for the
        #     {::Google::Cloud::Kms::V1::EkmConfig EkmConfig} in the format
        #     `projects/*/locations/*/ekmConfig`.
        # @!attribute [rw] default_ekm_connection
        #   @return [::String]
        #     Optional. Resource name of the default
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}. Setting this field to
        #     the empty string removes the default.
        class EkmConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#verify_connectivity EkmService.VerifyConnectivity}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The {::Google::Cloud::Kms::V1::EkmConnection#name name} of the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} to verify.
        class VerifyConnectivityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Kms::V1::EkmService::Client#verify_connectivity EkmService.VerifyConnectivity}.
        class VerifyConnectivityResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
