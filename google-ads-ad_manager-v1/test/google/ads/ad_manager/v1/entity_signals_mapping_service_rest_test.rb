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
require "gapic/rest"
require "google/ads/admanager/v1/entity_signals_mapping_service_pb"
require "google/ads/ad_manager/v1/entity_signals_mapping_service/rest"


class ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
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

  def test_get_entity_signals_mapping
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::EntitySignalsMapping.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_entity_signals_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_get_entity_signals_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_entity_signals_mapping_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_entity_signals_mapping({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_entity_signals_mapping name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_entity_signals_mapping ::Google::Ads::AdManager::V1::GetEntitySignalsMappingRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_entity_signals_mapping({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_entity_signals_mapping(::Google::Ads::AdManager::V1::GetEntitySignalsMappingRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_entity_signals_mapping_client_stub.call_count
      end
    end
  end

  def test_list_entity_signals_mappings
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::ListEntitySignalsMappingsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"
    skip = 42

    list_entity_signals_mappings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_list_entity_signals_mappings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_entity_signals_mappings_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_entity_signals_mappings({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, skip: skip }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_entity_signals_mappings parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, skip: skip do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_entity_signals_mappings ::Google::Ads::AdManager::V1::ListEntitySignalsMappingsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, skip: skip) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_entity_signals_mappings({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, skip: skip }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_entity_signals_mappings(::Google::Ads::AdManager::V1::ListEntitySignalsMappingsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, skip: skip), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_entity_signals_mappings_client_stub.call_count
      end
    end
  end

  def test_create_entity_signals_mapping
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::EntitySignalsMapping.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity_signals_mapping = {}

    create_entity_signals_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_create_entity_signals_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_entity_signals_mapping_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_entity_signals_mapping({ parent: parent, entity_signals_mapping: entity_signals_mapping }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_entity_signals_mapping parent: parent, entity_signals_mapping: entity_signals_mapping do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_entity_signals_mapping ::Google::Ads::AdManager::V1::CreateEntitySignalsMappingRequest.new(parent: parent, entity_signals_mapping: entity_signals_mapping) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_entity_signals_mapping({ parent: parent, entity_signals_mapping: entity_signals_mapping }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_entity_signals_mapping(::Google::Ads::AdManager::V1::CreateEntitySignalsMappingRequest.new(parent: parent, entity_signals_mapping: entity_signals_mapping), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_entity_signals_mapping_client_stub.call_count
      end
    end
  end

  def test_update_entity_signals_mapping
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::EntitySignalsMapping.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    entity_signals_mapping = {}
    update_mask = {}

    update_entity_signals_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_update_entity_signals_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_entity_signals_mapping_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_entity_signals_mapping({ entity_signals_mapping: entity_signals_mapping, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_entity_signals_mapping entity_signals_mapping: entity_signals_mapping, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_entity_signals_mapping ::Google::Ads::AdManager::V1::UpdateEntitySignalsMappingRequest.new(entity_signals_mapping: entity_signals_mapping, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_entity_signals_mapping({ entity_signals_mapping: entity_signals_mapping, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_entity_signals_mapping(::Google::Ads::AdManager::V1::UpdateEntitySignalsMappingRequest.new(entity_signals_mapping: entity_signals_mapping, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_entity_signals_mapping_client_stub.call_count
      end
    end
  end

  def test_batch_create_entity_signals_mappings
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::BatchCreateEntitySignalsMappingsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_create_entity_signals_mappings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_batch_create_entity_signals_mappings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_create_entity_signals_mappings_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_create_entity_signals_mappings({ parent: parent, requests: requests }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_create_entity_signals_mappings parent: parent, requests: requests do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_create_entity_signals_mappings ::Google::Ads::AdManager::V1::BatchCreateEntitySignalsMappingsRequest.new(parent: parent, requests: requests) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_create_entity_signals_mappings({ parent: parent, requests: requests }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_create_entity_signals_mappings(::Google::Ads::AdManager::V1::BatchCreateEntitySignalsMappingsRequest.new(parent: parent, requests: requests), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_create_entity_signals_mappings_client_stub.call_count
      end
    end
  end

  def test_batch_update_entity_signals_mappings
    # Create test objects.
    client_result = ::Google::Ads::AdManager::V1::BatchUpdateEntitySignalsMappingsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_update_entity_signals_mappings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::ServiceStub.stub :transcode_batch_update_entity_signals_mappings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_update_entity_signals_mappings_client_stub do
        # Create client
        client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_update_entity_signals_mappings({ parent: parent, requests: requests }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_update_entity_signals_mappings parent: parent, requests: requests do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_update_entity_signals_mappings ::Google::Ads::AdManager::V1::BatchUpdateEntitySignalsMappingsRequest.new(parent: parent, requests: requests) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_update_entity_signals_mappings({ parent: parent, requests: requests }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_update_entity_signals_mappings(::Google::Ads::AdManager::V1::BatchUpdateEntitySignalsMappingsRequest.new(parent: parent, requests: requests), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_update_entity_signals_mappings_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client::Configuration, config
  end
end
