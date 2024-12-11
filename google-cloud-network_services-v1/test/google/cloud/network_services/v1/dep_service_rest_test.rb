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
require "google/cloud/networkservices/v1/dep_pb"
require "google/cloud/network_services/v1/dep_service/rest"


class ::Google::Cloud::NetworkServices::V1::DepService::Rest::ClientTest < Minitest::Test
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

  def test_list_lb_traffic_extensions
    # Create test objects.
    client_result = ::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_lb_traffic_extensions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_list_lb_traffic_extensions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_lb_traffic_extensions_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_lb_traffic_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_lb_traffic_extensions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_lb_traffic_extensions ::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_lb_traffic_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_lb_traffic_extensions(::Google::Cloud::NetworkServices::V1::ListLbTrafficExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_lb_traffic_extensions_client_stub.call_count
      end
    end
  end

  def test_get_lb_traffic_extension
    # Create test objects.
    client_result = ::Google::Cloud::NetworkServices::V1::LbTrafficExtension.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_lb_traffic_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_get_lb_traffic_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_lb_traffic_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_lb_traffic_extension({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_lb_traffic_extension name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::GetLbTrafficExtensionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_lb_traffic_extension({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::GetLbTrafficExtensionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_lb_traffic_extension_client_stub.call_count
      end
    end
  end

  def test_create_lb_traffic_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    lb_traffic_extension_id = "hello world"
    lb_traffic_extension = {}
    request_id = "hello world"

    create_lb_traffic_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_create_lb_traffic_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_lb_traffic_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_lb_traffic_extension({ parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_lb_traffic_extension parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::CreateLbTrafficExtensionRequest.new(parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_lb_traffic_extension({ parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::CreateLbTrafficExtensionRequest.new(parent: parent, lb_traffic_extension_id: lb_traffic_extension_id, lb_traffic_extension: lb_traffic_extension, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_lb_traffic_extension_client_stub.call_count
      end
    end
  end

  def test_update_lb_traffic_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    lb_traffic_extension = {}
    request_id = "hello world"

    update_lb_traffic_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_update_lb_traffic_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_lb_traffic_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_lb_traffic_extension({ update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_lb_traffic_extension update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::UpdateLbTrafficExtensionRequest.new(update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_lb_traffic_extension({ update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::UpdateLbTrafficExtensionRequest.new(update_mask: update_mask, lb_traffic_extension: lb_traffic_extension, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_lb_traffic_extension_client_stub.call_count
      end
    end
  end

  def test_delete_lb_traffic_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_lb_traffic_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_delete_lb_traffic_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_lb_traffic_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_lb_traffic_extension({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_lb_traffic_extension name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_lb_traffic_extension ::Google::Cloud::NetworkServices::V1::DeleteLbTrafficExtensionRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_lb_traffic_extension({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_lb_traffic_extension(::Google::Cloud::NetworkServices::V1::DeleteLbTrafficExtensionRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_lb_traffic_extension_client_stub.call_count
      end
    end
  end

  def test_list_lb_route_extensions
    # Create test objects.
    client_result = ::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_lb_route_extensions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_list_lb_route_extensions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_lb_route_extensions_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_lb_route_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_lb_route_extensions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_lb_route_extensions ::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_lb_route_extensions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_lb_route_extensions(::Google::Cloud::NetworkServices::V1::ListLbRouteExtensionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_lb_route_extensions_client_stub.call_count
      end
    end
  end

  def test_get_lb_route_extension
    # Create test objects.
    client_result = ::Google::Cloud::NetworkServices::V1::LbRouteExtension.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_lb_route_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_get_lb_route_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_lb_route_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_lb_route_extension({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_lb_route_extension name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_lb_route_extension ::Google::Cloud::NetworkServices::V1::GetLbRouteExtensionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_lb_route_extension({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_lb_route_extension(::Google::Cloud::NetworkServices::V1::GetLbRouteExtensionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_lb_route_extension_client_stub.call_count
      end
    end
  end

  def test_create_lb_route_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    lb_route_extension_id = "hello world"
    lb_route_extension = {}
    request_id = "hello world"

    create_lb_route_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_create_lb_route_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_lb_route_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_lb_route_extension({ parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_lb_route_extension parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_lb_route_extension ::Google::Cloud::NetworkServices::V1::CreateLbRouteExtensionRequest.new(parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_lb_route_extension({ parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_lb_route_extension(::Google::Cloud::NetworkServices::V1::CreateLbRouteExtensionRequest.new(parent: parent, lb_route_extension_id: lb_route_extension_id, lb_route_extension: lb_route_extension, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_lb_route_extension_client_stub.call_count
      end
    end
  end

  def test_update_lb_route_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    lb_route_extension = {}
    request_id = "hello world"

    update_lb_route_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_update_lb_route_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_lb_route_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_lb_route_extension({ update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_lb_route_extension update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_lb_route_extension ::Google::Cloud::NetworkServices::V1::UpdateLbRouteExtensionRequest.new(update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_lb_route_extension({ update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_lb_route_extension(::Google::Cloud::NetworkServices::V1::UpdateLbRouteExtensionRequest.new(update_mask: update_mask, lb_route_extension: lb_route_extension, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_lb_route_extension_client_stub.call_count
      end
    end
  end

  def test_delete_lb_route_extension
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_lb_route_extension_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::NetworkServices::V1::DepService::Rest::ServiceStub.stub :transcode_delete_lb_route_extension_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_lb_route_extension_client_stub do
        # Create client
        client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_lb_route_extension({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_lb_route_extension name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_lb_route_extension ::Google::Cloud::NetworkServices::V1::DeleteLbRouteExtensionRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_lb_route_extension({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_lb_route_extension(::Google::Cloud::NetworkServices::V1::DeleteLbRouteExtensionRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_lb_route_extension_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::NetworkServices::V1::DepService::Rest::Client::Configuration, config
  end
end
