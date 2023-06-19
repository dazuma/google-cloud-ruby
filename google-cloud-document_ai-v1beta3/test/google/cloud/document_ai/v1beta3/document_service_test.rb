# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/documentai/v1beta3/document_service_pb"
require "google/cloud/documentai/v1beta3/document_service_services_pb"
require "google/cloud/document_ai/v1beta3/document_service"

class ::Google::Cloud::DocumentAI::V1beta3::DocumentService::ClientTest < Minitest::Test
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
  end

  def test_update_dataset
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    dataset = {}
    update_mask = {}

    update_dataset_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_dataset, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Dataset), request["dataset"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_dataset_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_dataset({ dataset: dataset, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_dataset dataset: dataset, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_dataset ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest.new(dataset: dataset, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_dataset({ dataset: dataset, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_dataset(::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest.new(dataset: dataset, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_dataset_client_stub.call_rpc_count
    end
  end

  def test_get_dataset_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    visible_fields_only = true

    get_dataset_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_dataset_schema, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["visible_fields_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_dataset_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_dataset_schema({ name: name, visible_fields_only: visible_fields_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_dataset_schema name: name, visible_fields_only: visible_fields_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_dataset_schema ::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest.new(name: name, visible_fields_only: visible_fields_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_dataset_schema({ name: name, visible_fields_only: visible_fields_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_dataset_schema(::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest.new(name: name, visible_fields_only: visible_fields_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_dataset_schema_client_stub.call_rpc_count
    end
  end

  def test_update_dataset_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    dataset_schema = {}
    update_mask = {}

    update_dataset_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_dataset_schema, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema), request["dataset_schema"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_dataset_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_dataset_schema({ dataset_schema: dataset_schema, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_dataset_schema dataset_schema: dataset_schema, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_dataset_schema ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest.new(dataset_schema: dataset_schema, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_dataset_schema({ dataset_schema: dataset_schema, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_dataset_schema(::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest.new(dataset_schema: dataset_schema, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_dataset_schema_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Operations, client.operations_client
  end
end