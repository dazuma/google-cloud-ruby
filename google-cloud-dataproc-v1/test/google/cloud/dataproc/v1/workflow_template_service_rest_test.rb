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
require "gapic/rest"
require "google/cloud/dataproc/v1/workflow_templates_pb"
require "google/cloud/dataproc/v1/workflow_template_service/rest"


class ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ClientTest < Minitest::Test
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

  def test_create_workflow_template
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::WorkflowTemplate.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    template = {}

    create_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_create_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_workflow_template({ parent: parent, template: template }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_workflow_template parent: parent, template: template do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_workflow_template ::Google::Cloud::Dataproc::V1::CreateWorkflowTemplateRequest.new(parent: parent, template: template) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_workflow_template({ parent: parent, template: template }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_workflow_template(::Google::Cloud::Dataproc::V1::CreateWorkflowTemplateRequest.new(parent: parent, template: template), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_workflow_template_client_stub.call_count
      end
    end
  end

  def test_get_workflow_template
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::WorkflowTemplate.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    version = 42

    get_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_get_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_workflow_template({ name: name, version: version }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_workflow_template name: name, version: version do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_workflow_template ::Google::Cloud::Dataproc::V1::GetWorkflowTemplateRequest.new(name: name, version: version) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_workflow_template({ name: name, version: version }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_workflow_template(::Google::Cloud::Dataproc::V1::GetWorkflowTemplateRequest.new(name: name, version: version), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_workflow_template_client_stub.call_count
      end
    end
  end

  def test_instantiate_workflow_template
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    version = 42
    request_id = "hello world"
    parameters = {}

    instantiate_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_instantiate_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, instantiate_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.instantiate_workflow_template({ name: name, version: version, request_id: request_id, parameters: parameters }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.instantiate_workflow_template name: name, version: version, request_id: request_id, parameters: parameters do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.instantiate_workflow_template ::Google::Cloud::Dataproc::V1::InstantiateWorkflowTemplateRequest.new(name: name, version: version, request_id: request_id, parameters: parameters) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.instantiate_workflow_template({ name: name, version: version, request_id: request_id, parameters: parameters }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.instantiate_workflow_template(::Google::Cloud::Dataproc::V1::InstantiateWorkflowTemplateRequest.new(name: name, version: version, request_id: request_id, parameters: parameters), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, instantiate_workflow_template_client_stub.call_count
      end
    end
  end

  def test_instantiate_inline_workflow_template
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    template = {}
    request_id = "hello world"

    instantiate_inline_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_instantiate_inline_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, instantiate_inline_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.instantiate_inline_workflow_template({ parent: parent, template: template, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.instantiate_inline_workflow_template parent: parent, template: template, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.instantiate_inline_workflow_template ::Google::Cloud::Dataproc::V1::InstantiateInlineWorkflowTemplateRequest.new(parent: parent, template: template, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.instantiate_inline_workflow_template({ parent: parent, template: template, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.instantiate_inline_workflow_template(::Google::Cloud::Dataproc::V1::InstantiateInlineWorkflowTemplateRequest.new(parent: parent, template: template, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, instantiate_inline_workflow_template_client_stub.call_count
      end
    end
  end

  def test_update_workflow_template
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::WorkflowTemplate.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    template = {}

    update_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_update_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_workflow_template({ template: template }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_workflow_template template: template do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_workflow_template ::Google::Cloud::Dataproc::V1::UpdateWorkflowTemplateRequest.new(template: template) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_workflow_template({ template: template }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_workflow_template(::Google::Cloud::Dataproc::V1::UpdateWorkflowTemplateRequest.new(template: template), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_workflow_template_client_stub.call_count
      end
    end
  end

  def test_list_workflow_templates
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::ListWorkflowTemplatesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_workflow_templates_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_list_workflow_templates_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_workflow_templates_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_workflow_templates({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_workflow_templates parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_workflow_templates ::Google::Cloud::Dataproc::V1::ListWorkflowTemplatesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_workflow_templates({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_workflow_templates(::Google::Cloud::Dataproc::V1::ListWorkflowTemplatesRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_workflow_templates_client_stub.call_count
      end
    end
  end

  def test_delete_workflow_template
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    version = 42

    delete_workflow_template_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::ServiceStub.stub :transcode_delete_workflow_template_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_workflow_template_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_workflow_template({ name: name, version: version }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_workflow_template name: name, version: version do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_workflow_template ::Google::Cloud::Dataproc::V1::DeleteWorkflowTemplateRequest.new(name: name, version: version) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_workflow_template({ name: name, version: version }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_workflow_template(::Google::Cloud::Dataproc::V1::DeleteWorkflowTemplateRequest.new(name: name, version: version), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_workflow_template_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataproc::V1::WorkflowTemplateService::Rest::Client::Configuration, config
  end
end
