# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/networkservices/v1/dep_pb"
require "google/cloud/networkservices/v1/dep_services_pb"
require "google/cloud/network_services/v1/dep_service"

class ::Google::Cloud::NetworkServices::V1::DepService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_list_lb_traffic_extensions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_lb_traffic_extensions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_lb_traffic_extensions, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_lb_traffic_extensions_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_lb_traffic_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_lb_traffic_extensions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_lb_traffic_extensions ::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_lb_traffic_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_lb_traffic_extensions(::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_lb_traffic_extensions_client_stub.call_rpc_count
    end
  end

  def test_get_lb_traffic_extension
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkServices::V1::LbTrafficExtension.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_lb_traffic_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_lb_traffic_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::GetLbTrafficExtensionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_lb_traffic_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_lb_traffic_extension({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_lb_traffic_extension name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::GetLbTrafficExtensionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_lb_traffic_extension({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::GetLbTrafficExtensionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_lb_traffic_extension_client_stub.call_rpc_count
    end
  end

  def test_create_lb_traffic_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    lb_traffic_extension_id = "hello world"
    lb_traffic_extension = {}
    request_id = "hello world"

    create_lb_traffic_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_lb_traffic_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::CreateLbTrafficExtensionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["lb_traffic_extension_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkServices::V1::LbTrafficExtension), request["lb_traffic_extension"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_lb_traffic_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_lb_traffic_extension({ parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_lb_traffic_extension parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::CreateLbTrafficExtensionRequest.new(parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_lb_traffic_extension({ parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::CreateLbTrafficExtensionRequest.new(parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_lb_traffic_extension_client_stub.call_rpc_count
    end
  end

  def test_update_lb_traffic_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    lb_traffic_extension = {}
    request_id = "hello world"

    update_lb_traffic_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_lb_traffic_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::UpdateLbTrafficExtensionRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkServices::V1::LbTrafficExtension), request["lb_traffic_extension"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_lb_traffic_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_lb_traffic_extension({ update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_lb_traffic_extension update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::UpdateLbTrafficExtensionRequest.new(update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_lb_traffic_extension({ update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::UpdateLbTrafficExtensionRequest.new(update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_lb_traffic_extension_client_stub.call_rpc_count
    end
  end

  def test_delete_lb_traffic_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_lb_traffic_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_lb_traffic_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::DeleteLbTrafficExtensionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_lb_traffic_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_lb_traffic_extension({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_lb_traffic_extension name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::DeleteLbTrafficExtensionRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_lb_traffic_extension({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::DeleteLbTrafficExtensionRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_lb_traffic_extension_client_stub.call_rpc_count
    end
  end

  def test_list_lb_route_extensions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_lb_route_extensions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_lb_route_extensions, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_lb_route_extensions_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_lb_route_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_lb_route_extensions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_lb_route_extensions ::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_lb_route_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_lb_route_extensions(::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_lb_route_extensions_client_stub.call_rpc_count
    end
  end

  def test_get_lb_route_extension
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkServices::V1::LbRouteExtension.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_lb_route_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_lb_route_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::GetLbRouteExtensionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_lb_route_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_lb_route_extension({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_lb_route_extension name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_lb_route_extension ::Google::Cloud::NetworkServices::V1::GetLbRouteExtensionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_lb_route_extension({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_lb_route_extension(::Google::Cloud::NetworkServices::V1::GetLbRouteExtensionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_lb_route_extension_client_stub.call_rpc_count
    end
  end

  def test_create_lb_route_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    lb_route_extension_id = "hello world"
    lb_route_extension = {}
    request_id = "hello world"

    create_lb_route_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_lb_route_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::CreateLbRouteExtensionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["lb_route_extension_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkServices::V1::LbRouteExtension), request["lb_route_extension"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_lb_route_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_lb_route_extension({ parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_lb_route_extension parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_lb_route_extension ::Google::Cloud::NetworkServices::V1::CreateLbRouteExtensionRequest.new(parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_lb_route_extension({ parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_lb_route_extension(::Google::Cloud::NetworkServices::V1::CreateLbRouteExtensionRequest.new(parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_lb_route_extension_client_stub.call_rpc_count
    end
  end

  def test_update_lb_route_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    lb_route_extension = {}
    request_id = "hello world"

    update_lb_route_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_lb_route_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::UpdateLbRouteExtensionRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkServices::V1::LbRouteExtension), request["lb_route_extension"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_lb_route_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_lb_route_extension({ update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_lb_route_extension update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_lb_route_extension ::Google::Cloud::NetworkServices::V1::UpdateLbRouteExtensionRequest.new(update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_lb_route_extension({ update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_lb_route_extension(::Google::Cloud::NetworkServices::V1::UpdateLbRouteExtensionRequest.new(update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_lb_route_extension_client_stub.call_rpc_count
    end
  end

  def test_delete_lb_route_extension
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_lb_route_extension_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_lb_route_extension, name
      assert_kind_of ::Google::Cloud::NetworkServices::V1::DeleteLbRouteExtensionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_lb_route_extension_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_lb_route_extension({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_lb_route_extension name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_lb_route_extension ::Google::Cloud::NetworkServices::V1::DeleteLbRouteExtensionRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_lb_route_extension({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_lb_route_extension(::Google::Cloud::NetworkServices::V1::DeleteLbRouteExtensionRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_lb_route_extension_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::NetworkServices::V1::DepService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::NetworkServices::V1::DepService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::NetworkServices::V1::DepService::Operations, client.operations_client
  end
end
