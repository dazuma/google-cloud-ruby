# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/memorystore/v1beta/memorystore.proto for package 'Google.Cloud.Memorystore.V1beta'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/memorystore/v1beta/memorystore_pb'

module Google
  module Cloud
    module Memorystore
      module V1beta
        module Memorystore
          # Service describing handlers for resources
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.memorystore.v1beta.Memorystore'

            # Lists Instances in a given project and location.
            rpc :ListInstances, ::Google::Cloud::Memorystore::V1beta::ListInstancesRequest, ::Google::Cloud::Memorystore::V1beta::ListInstancesResponse
            # Gets details of a single Instance.
            rpc :GetInstance, ::Google::Cloud::Memorystore::V1beta::GetInstanceRequest, ::Google::Cloud::Memorystore::V1beta::Instance
            # Creates a new Instance in a given project and location.
            rpc :CreateInstance, ::Google::Cloud::Memorystore::V1beta::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Instance.
            rpc :UpdateInstance, ::Google::Cloud::Memorystore::V1beta::UpdateInstanceRequest, ::Google::Longrunning::Operation
            # Deletes a single Instance.
            rpc :DeleteInstance, ::Google::Cloud::Memorystore::V1beta::DeleteInstanceRequest, ::Google::Longrunning::Operation
            # Gets details about the certificate authority for an Instance.
            rpc :GetCertificateAuthority, ::Google::Cloud::Memorystore::V1beta::GetCertificateAuthorityRequest, ::Google::Cloud::Memorystore::V1beta::CertificateAuthority
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
