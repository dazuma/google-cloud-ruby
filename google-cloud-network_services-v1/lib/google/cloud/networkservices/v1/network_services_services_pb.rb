# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/networkservices/v1/network_services.proto for package 'Google.Cloud.NetworkServices.V1'
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
require 'google/cloud/networkservices/v1/network_services_pb'

module Google
  module Cloud
    module NetworkServices
      module V1
        module NetworkServices
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.networkservices.v1.NetworkServices'

            # Lists EndpointPolicies in a given project and location.
            rpc :ListEndpointPolicies, ::Google::Cloud::NetworkServices::V1::ListEndpointPoliciesRequest, ::Google::Cloud::NetworkServices::V1::ListEndpointPoliciesResponse
            # Gets details of a single EndpointPolicy.
            rpc :GetEndpointPolicy, ::Google::Cloud::NetworkServices::V1::GetEndpointPolicyRequest, ::Google::Cloud::NetworkServices::V1::EndpointPolicy
            # Creates a new EndpointPolicy in a given project and location.
            rpc :CreateEndpointPolicy, ::Google::Cloud::NetworkServices::V1::CreateEndpointPolicyRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single EndpointPolicy.
            rpc :UpdateEndpointPolicy, ::Google::Cloud::NetworkServices::V1::UpdateEndpointPolicyRequest, ::Google::Longrunning::Operation
            # Deletes a single EndpointPolicy.
            rpc :DeleteEndpointPolicy, ::Google::Cloud::NetworkServices::V1::DeleteEndpointPolicyRequest, ::Google::Longrunning::Operation
            # Lists Gateways in a given project and location.
            rpc :ListGateways, ::Google::Cloud::NetworkServices::V1::ListGatewaysRequest, ::Google::Cloud::NetworkServices::V1::ListGatewaysResponse
            # Gets details of a single Gateway.
            rpc :GetGateway, ::Google::Cloud::NetworkServices::V1::GetGatewayRequest, ::Google::Cloud::NetworkServices::V1::Gateway
            # Creates a new Gateway in a given project and location.
            rpc :CreateGateway, ::Google::Cloud::NetworkServices::V1::CreateGatewayRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Gateway.
            rpc :UpdateGateway, ::Google::Cloud::NetworkServices::V1::UpdateGatewayRequest, ::Google::Longrunning::Operation
            # Deletes a single Gateway.
            rpc :DeleteGateway, ::Google::Cloud::NetworkServices::V1::DeleteGatewayRequest, ::Google::Longrunning::Operation
            # Lists GrpcRoutes in a given project and location.
            rpc :ListGrpcRoutes, ::Google::Cloud::NetworkServices::V1::ListGrpcRoutesRequest, ::Google::Cloud::NetworkServices::V1::ListGrpcRoutesResponse
            # Gets details of a single GrpcRoute.
            rpc :GetGrpcRoute, ::Google::Cloud::NetworkServices::V1::GetGrpcRouteRequest, ::Google::Cloud::NetworkServices::V1::GrpcRoute
            # Creates a new GrpcRoute in a given project and location.
            rpc :CreateGrpcRoute, ::Google::Cloud::NetworkServices::V1::CreateGrpcRouteRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single GrpcRoute.
            rpc :UpdateGrpcRoute, ::Google::Cloud::NetworkServices::V1::UpdateGrpcRouteRequest, ::Google::Longrunning::Operation
            # Deletes a single GrpcRoute.
            rpc :DeleteGrpcRoute, ::Google::Cloud::NetworkServices::V1::DeleteGrpcRouteRequest, ::Google::Longrunning::Operation
            # Lists HttpRoute in a given project and location.
            rpc :ListHttpRoutes, ::Google::Cloud::NetworkServices::V1::ListHttpRoutesRequest, ::Google::Cloud::NetworkServices::V1::ListHttpRoutesResponse
            # Gets details of a single HttpRoute.
            rpc :GetHttpRoute, ::Google::Cloud::NetworkServices::V1::GetHttpRouteRequest, ::Google::Cloud::NetworkServices::V1::HttpRoute
            # Creates a new HttpRoute in a given project and location.
            rpc :CreateHttpRoute, ::Google::Cloud::NetworkServices::V1::CreateHttpRouteRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single HttpRoute.
            rpc :UpdateHttpRoute, ::Google::Cloud::NetworkServices::V1::UpdateHttpRouteRequest, ::Google::Longrunning::Operation
            # Deletes a single HttpRoute.
            rpc :DeleteHttpRoute, ::Google::Cloud::NetworkServices::V1::DeleteHttpRouteRequest, ::Google::Longrunning::Operation
            # Lists TcpRoute in a given project and location.
            rpc :ListTcpRoutes, ::Google::Cloud::NetworkServices::V1::ListTcpRoutesRequest, ::Google::Cloud::NetworkServices::V1::ListTcpRoutesResponse
            # Gets details of a single TcpRoute.
            rpc :GetTcpRoute, ::Google::Cloud::NetworkServices::V1::GetTcpRouteRequest, ::Google::Cloud::NetworkServices::V1::TcpRoute
            # Creates a new TcpRoute in a given project and location.
            rpc :CreateTcpRoute, ::Google::Cloud::NetworkServices::V1::CreateTcpRouteRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single TcpRoute.
            rpc :UpdateTcpRoute, ::Google::Cloud::NetworkServices::V1::UpdateTcpRouteRequest, ::Google::Longrunning::Operation
            # Deletes a single TcpRoute.
            rpc :DeleteTcpRoute, ::Google::Cloud::NetworkServices::V1::DeleteTcpRouteRequest, ::Google::Longrunning::Operation
            # Lists TlsRoute in a given project and location.
            rpc :ListTlsRoutes, ::Google::Cloud::NetworkServices::V1::ListTlsRoutesRequest, ::Google::Cloud::NetworkServices::V1::ListTlsRoutesResponse
            # Gets details of a single TlsRoute.
            rpc :GetTlsRoute, ::Google::Cloud::NetworkServices::V1::GetTlsRouteRequest, ::Google::Cloud::NetworkServices::V1::TlsRoute
            # Creates a new TlsRoute in a given project and location.
            rpc :CreateTlsRoute, ::Google::Cloud::NetworkServices::V1::CreateTlsRouteRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single TlsRoute.
            rpc :UpdateTlsRoute, ::Google::Cloud::NetworkServices::V1::UpdateTlsRouteRequest, ::Google::Longrunning::Operation
            # Deletes a single TlsRoute.
            rpc :DeleteTlsRoute, ::Google::Cloud::NetworkServices::V1::DeleteTlsRouteRequest, ::Google::Longrunning::Operation
            # Lists ServiceBinding in a given project and location.
            rpc :ListServiceBindings, ::Google::Cloud::NetworkServices::V1::ListServiceBindingsRequest, ::Google::Cloud::NetworkServices::V1::ListServiceBindingsResponse
            # Gets details of a single ServiceBinding.
            rpc :GetServiceBinding, ::Google::Cloud::NetworkServices::V1::GetServiceBindingRequest, ::Google::Cloud::NetworkServices::V1::ServiceBinding
            # Creates a new ServiceBinding in a given project and location.
            rpc :CreateServiceBinding, ::Google::Cloud::NetworkServices::V1::CreateServiceBindingRequest, ::Google::Longrunning::Operation
            # Deletes a single ServiceBinding.
            rpc :DeleteServiceBinding, ::Google::Cloud::NetworkServices::V1::DeleteServiceBindingRequest, ::Google::Longrunning::Operation
            # Lists Meshes in a given project and location.
            rpc :ListMeshes, ::Google::Cloud::NetworkServices::V1::ListMeshesRequest, ::Google::Cloud::NetworkServices::V1::ListMeshesResponse
            # Gets details of a single Mesh.
            rpc :GetMesh, ::Google::Cloud::NetworkServices::V1::GetMeshRequest, ::Google::Cloud::NetworkServices::V1::Mesh
            # Creates a new Mesh in a given project and location.
            rpc :CreateMesh, ::Google::Cloud::NetworkServices::V1::CreateMeshRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Mesh.
            rpc :UpdateMesh, ::Google::Cloud::NetworkServices::V1::UpdateMeshRequest, ::Google::Longrunning::Operation
            # Deletes a single Mesh.
            rpc :DeleteMesh, ::Google::Cloud::NetworkServices::V1::DeleteMeshRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
