# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/datastore/admin/v1/datastore_admin_pb"
require "google/datastore/admin/v1/datastore_admin_services_pb"
require "google/cloud/datastore/admin/v1/datastore_admin"

class ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::ClientTest < Minitest::Test
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

  def test_export_entities
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    labels = {}
    entity_filter = {}
    output_url_prefix = "hello world"

    export_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_entities, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal({}, request["labels"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::Admin::V1::EntityFilter), request["entity_filter"]
      assert_equal "hello world", request["output_url_prefix"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_entities_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_entities({ project_id: project_id, labels: labels, entity_filter: entity_filter, output_url_prefix: output_url_prefix }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_entities project_id: project_id, labels: labels, entity_filter: entity_filter, output_url_prefix: output_url_prefix do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_entities ::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest.new(project_id: project_id, labels: labels, entity_filter: entity_filter, output_url_prefix: output_url_prefix) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_entities({ project_id: project_id, labels: labels, entity_filter: entity_filter, output_url_prefix: output_url_prefix }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_entities(::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest.new(project_id: project_id, labels: labels, entity_filter: entity_filter, output_url_prefix: output_url_prefix), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_entities_client_stub.call_rpc_count
    end
  end

  def test_import_entities
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    labels = {}
    input_url = "hello world"
    entity_filter = {}

    import_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_entities, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal({}, request["labels"].to_h)
      assert_equal "hello world", request["input_url"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::Admin::V1::EntityFilter), request["entity_filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_entities_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_entities({ project_id: project_id, labels: labels, input_url: input_url, entity_filter: entity_filter }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_entities project_id: project_id, labels: labels, input_url: input_url, entity_filter: entity_filter do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_entities ::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest.new(project_id: project_id, labels: labels, input_url: input_url, entity_filter: entity_filter) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_entities({ project_id: project_id, labels: labels, input_url: input_url, entity_filter: entity_filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_entities(::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest.new(project_id: project_id, labels: labels, input_url: input_url, entity_filter: entity_filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_entities_client_stub.call_rpc_count
    end
  end

  def test_create_index
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    index = {}

    create_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_index, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::Admin::V1::Index), request["index"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_index_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_index({ project_id: project_id, index: index }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_index project_id: project_id, index: index do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_index ::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest.new(project_id: project_id, index: index) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_index({ project_id: project_id, index: index }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_index(::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest.new(project_id: project_id, index: index), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_index_client_stub.call_rpc_count
    end
  end

  def test_delete_index
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    index_id = "hello world"

    delete_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_index, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["index_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_index_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_index({ project_id: project_id, index_id: index_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_index project_id: project_id, index_id: index_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_index ::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest.new(project_id: project_id, index_id: index_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_index({ project_id: project_id, index_id: index_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_index(::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest.new(project_id: project_id, index_id: index_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_index_client_stub.call_rpc_count
    end
  end

  def test_get_index
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::Admin::V1::Index.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    index_id = "hello world"

    get_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_index, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::GetIndexRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["index_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_index_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_index({ project_id: project_id, index_id: index_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_index project_id: project_id, index_id: index_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_index ::Google::Cloud::Datastore::Admin::V1::GetIndexRequest.new(project_id: project_id, index_id: index_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_index({ project_id: project_id, index_id: index_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_index(::Google::Cloud::Datastore::Admin::V1::GetIndexRequest.new(project_id: project_id, index_id: index_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_index_client_stub.call_rpc_count
    end
  end

  def test_list_indexes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::Admin::V1::ListIndexesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_indexes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_indexes, name
      assert_kind_of ::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_indexes_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_indexes({ project_id: project_id, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_indexes project_id: project_id, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_indexes ::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest.new(project_id: project_id, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_indexes({ project_id: project_id, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_indexes(::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest.new(project_id: project_id, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_indexes_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Operations, client.operations_client
  end
end
