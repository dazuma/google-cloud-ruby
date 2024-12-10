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

require "google/cloud/speech/v1p1beta1/cloud_speech_adaptation_pb"
require "google/cloud/speech/v1p1beta1/cloud_speech_adaptation_services_pb"
require "google/cloud/speech/v1p1beta1/adaptation"

class ::Google::Cloud::Speech::V1p1beta1::Adaptation::ClientTest < Minitest::Test
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
  end

  def test_create_phrase_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::PhraseSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    phrase_set_id = "hello world"
    phrase_set = {}

    create_phrase_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_phrase_set, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::CreatePhraseSetRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["phrase_set_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Speech::V1p1beta1::PhraseSet), request["phrase_set"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_phrase_set_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_phrase_set({ parent: parent, phrase_set_id: phrase_set_id, phrase_set: phrase_set }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_phrase_set parent: parent, phrase_set_id: phrase_set_id, phrase_set: phrase_set do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_phrase_set ::Google::Cloud::Speech::V1p1beta1::CreatePhraseSetRequest.new(parent: parent, phrase_set_id: phrase_set_id, phrase_set: phrase_set) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_phrase_set({ parent: parent, phrase_set_id: phrase_set_id, phrase_set: phrase_set }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_phrase_set(::Google::Cloud::Speech::V1p1beta1::CreatePhraseSetRequest.new(parent: parent, phrase_set_id: phrase_set_id, phrase_set: phrase_set), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_phrase_set_client_stub.call_rpc_count
    end
  end

  def test_get_phrase_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::PhraseSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_phrase_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_phrase_set, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::GetPhraseSetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_phrase_set_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_phrase_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_phrase_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_phrase_set ::Google::Cloud::Speech::V1p1beta1::GetPhraseSetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_phrase_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_phrase_set(::Google::Cloud::Speech::V1p1beta1::GetPhraseSetRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_phrase_set_client_stub.call_rpc_count
    end
  end

  def test_list_phrase_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::ListPhraseSetResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_phrase_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_phrase_set, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::ListPhraseSetRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_phrase_set_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_phrase_set({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_phrase_set parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_phrase_set ::Google::Cloud::Speech::V1p1beta1::ListPhraseSetRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_phrase_set({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_phrase_set(::Google::Cloud::Speech::V1p1beta1::ListPhraseSetRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_phrase_set_client_stub.call_rpc_count
    end
  end

  def test_update_phrase_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::PhraseSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    phrase_set = {}
    update_mask = {}

    update_phrase_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_phrase_set, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::UpdatePhraseSetRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Speech::V1p1beta1::PhraseSet), request["phrase_set"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_phrase_set_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_phrase_set({ phrase_set: phrase_set, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_phrase_set phrase_set: phrase_set, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_phrase_set ::Google::Cloud::Speech::V1p1beta1::UpdatePhraseSetRequest.new(phrase_set: phrase_set, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_phrase_set({ phrase_set: phrase_set, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_phrase_set(::Google::Cloud::Speech::V1p1beta1::UpdatePhraseSetRequest.new(phrase_set: phrase_set, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_phrase_set_client_stub.call_rpc_count
    end
  end

  def test_delete_phrase_set
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_phrase_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_phrase_set, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::DeletePhraseSetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_phrase_set_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_phrase_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_phrase_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_phrase_set ::Google::Cloud::Speech::V1p1beta1::DeletePhraseSetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_phrase_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_phrase_set(::Google::Cloud::Speech::V1p1beta1::DeletePhraseSetRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_phrase_set_client_stub.call_rpc_count
    end
  end

  def test_create_custom_class
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::CustomClass.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    custom_class_id = "hello world"
    custom_class = {}

    create_custom_class_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_custom_class, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::CreateCustomClassRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["custom_class_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Speech::V1p1beta1::CustomClass), request["custom_class"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_custom_class_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_custom_class({ parent: parent, custom_class_id: custom_class_id, custom_class: custom_class }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_custom_class parent: parent, custom_class_id: custom_class_id, custom_class: custom_class do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_custom_class ::Google::Cloud::Speech::V1p1beta1::CreateCustomClassRequest.new(parent: parent, custom_class_id: custom_class_id, custom_class: custom_class) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_custom_class({ parent: parent, custom_class_id: custom_class_id, custom_class: custom_class }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_custom_class(::Google::Cloud::Speech::V1p1beta1::CreateCustomClassRequest.new(parent: parent, custom_class_id: custom_class_id, custom_class: custom_class), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_custom_class_client_stub.call_rpc_count
    end
  end

  def test_get_custom_class
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::CustomClass.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_custom_class_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_custom_class, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::GetCustomClassRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_custom_class_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_custom_class({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_custom_class name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_custom_class ::Google::Cloud::Speech::V1p1beta1::GetCustomClassRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_custom_class({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_custom_class(::Google::Cloud::Speech::V1p1beta1::GetCustomClassRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_custom_class_client_stub.call_rpc_count
    end
  end

  def test_list_custom_classes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::ListCustomClassesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_custom_classes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_custom_classes, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::ListCustomClassesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_custom_classes_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_custom_classes({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_custom_classes parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_custom_classes ::Google::Cloud::Speech::V1p1beta1::ListCustomClassesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_custom_classes({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_custom_classes(::Google::Cloud::Speech::V1p1beta1::ListCustomClassesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_custom_classes_client_stub.call_rpc_count
    end
  end

  def test_update_custom_class
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Speech::V1p1beta1::CustomClass.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    custom_class = {}
    update_mask = {}

    update_custom_class_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_custom_class, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::UpdateCustomClassRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Speech::V1p1beta1::CustomClass), request["custom_class"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_custom_class_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_custom_class({ custom_class: custom_class, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_custom_class custom_class: custom_class, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_custom_class ::Google::Cloud::Speech::V1p1beta1::UpdateCustomClassRequest.new(custom_class: custom_class, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_custom_class({ custom_class: custom_class, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_custom_class(::Google::Cloud::Speech::V1p1beta1::UpdateCustomClassRequest.new(custom_class: custom_class, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_custom_class_client_stub.call_rpc_count
    end
  end

  def test_delete_custom_class
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_custom_class_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_custom_class, name
      assert_kind_of ::Google::Cloud::Speech::V1p1beta1::DeleteCustomClassRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_custom_class_client_stub do
      # Create client
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_custom_class({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_custom_class name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_custom_class ::Google::Cloud::Speech::V1p1beta1::DeleteCustomClassRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_custom_class({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_custom_class(::Google::Cloud::Speech::V1p1beta1::DeleteCustomClassRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_custom_class_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Speech::V1p1beta1::Adaptation::Client::Configuration, config
  end
end
