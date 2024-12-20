# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/tpu/v1/cloud_tpu_pb"
require "google/cloud/tpu/v1/cloud_tpu_services_pb"
require "google/cloud/tpu/v1/tpu"

class ::Google::Cloud::Tpu::V1::Tpu::ClientTest < Minitest::Test
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

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_list_nodes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::ListNodesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_nodes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_nodes, name
      assert_kind_of ::Google::Cloud::Tpu::V1::ListNodesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_nodes_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_nodes({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_nodes parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_nodes ::Google::Cloud::Tpu::V1::ListNodesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_nodes({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_nodes(::Google::Cloud::Tpu::V1::ListNodesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_nodes_client_stub.call_rpc_count
    end
  end

  def test_get_node
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::Node.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::GetNodeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_node({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_node name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_node ::Google::Cloud::Tpu::V1::GetNodeRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_node({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_node(::Google::Cloud::Tpu::V1::GetNodeRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_node_client_stub.call_rpc_count
    end
  end

  def test_create_node
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    node_id = "hello world"
    node = {}

    create_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::CreateNodeRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["node_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Tpu::V1::Node), request["node"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_node({ parent: parent, node_id: node_id, node: node }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_node parent: parent, node_id: node_id, node: node do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_node ::Google::Cloud::Tpu::V1::CreateNodeRequest.new(parent: parent, node_id: node_id, node: node) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_node({ parent: parent, node_id: node_id, node: node }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_node(::Google::Cloud::Tpu::V1::CreateNodeRequest.new(parent: parent, node_id: node_id, node: node), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_node_client_stub.call_rpc_count
    end
  end

  def test_delete_node
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::DeleteNodeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_node({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_node name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_node ::Google::Cloud::Tpu::V1::DeleteNodeRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_node({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_node(::Google::Cloud::Tpu::V1::DeleteNodeRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_node_client_stub.call_rpc_count
    end
  end

  def test_reimage_node
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    tensorflow_version = "hello world"

    reimage_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reimage_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::ReimageNodeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["tensorflow_version"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reimage_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reimage_node({ name: name, tensorflow_version: tensorflow_version }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reimage_node name: name, tensorflow_version: tensorflow_version do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reimage_node ::Google::Cloud::Tpu::V1::ReimageNodeRequest.new(name: name, tensorflow_version: tensorflow_version) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reimage_node({ name: name, tensorflow_version: tensorflow_version }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reimage_node(::Google::Cloud::Tpu::V1::ReimageNodeRequest.new(name: name, tensorflow_version: tensorflow_version), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reimage_node_client_stub.call_rpc_count
    end
  end

  def test_stop_node
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::StopNodeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_node({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_node name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_node ::Google::Cloud::Tpu::V1::StopNodeRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_node({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_node(::Google::Cloud::Tpu::V1::StopNodeRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_node_client_stub.call_rpc_count
    end
  end

  def test_start_node
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_node_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_node, name
      assert_kind_of ::Google::Cloud::Tpu::V1::StartNodeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_node_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_node({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_node name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_node ::Google::Cloud::Tpu::V1::StartNodeRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_node({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_node(::Google::Cloud::Tpu::V1::StartNodeRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_node_client_stub.call_rpc_count
    end
  end

  def test_list_tensor_flow_versions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::ListTensorFlowVersionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_tensor_flow_versions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tensor_flow_versions, name
      assert_kind_of ::Google::Cloud::Tpu::V1::ListTensorFlowVersionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tensor_flow_versions_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tensor_flow_versions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tensor_flow_versions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tensor_flow_versions ::Google::Cloud::Tpu::V1::ListTensorFlowVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tensor_flow_versions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tensor_flow_versions(::Google::Cloud::Tpu::V1::ListTensorFlowVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tensor_flow_versions_client_stub.call_rpc_count
    end
  end

  def test_get_tensor_flow_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::TensorFlowVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_tensor_flow_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_tensor_flow_version, name
      assert_kind_of ::Google::Cloud::Tpu::V1::GetTensorFlowVersionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_tensor_flow_version_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_tensor_flow_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_tensor_flow_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_tensor_flow_version ::Google::Cloud::Tpu::V1::GetTensorFlowVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_tensor_flow_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_tensor_flow_version(::Google::Cloud::Tpu::V1::GetTensorFlowVersionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_tensor_flow_version_client_stub.call_rpc_count
    end
  end

  def test_list_accelerator_types
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::ListAcceleratorTypesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_accelerator_types_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_accelerator_types, name
      assert_kind_of ::Google::Cloud::Tpu::V1::ListAcceleratorTypesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_accelerator_types_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_accelerator_types({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_accelerator_types parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_accelerator_types ::Google::Cloud::Tpu::V1::ListAcceleratorTypesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_accelerator_types({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_accelerator_types(::Google::Cloud::Tpu::V1::ListAcceleratorTypesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_accelerator_types_client_stub.call_rpc_count
    end
  end

  def test_get_accelerator_type
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Tpu::V1::AcceleratorType.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_accelerator_type_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_accelerator_type, name
      assert_kind_of ::Google::Cloud::Tpu::V1::GetAcceleratorTypeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_accelerator_type_client_stub do
      # Create client
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_accelerator_type({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_accelerator_type name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_accelerator_type ::Google::Cloud::Tpu::V1::GetAcceleratorTypeRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_accelerator_type({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_accelerator_type(::Google::Cloud::Tpu::V1::GetAcceleratorTypeRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_accelerator_type_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Tpu::V1::Tpu::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Tpu::V1::Tpu::Operations, client.operations_client
  end
end
