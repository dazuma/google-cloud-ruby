# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/eventarc/publishing/v1/publisher_pb"
require "google/cloud/eventarc/publishing/v1/publisher_services_pb"
require "google/cloud/eventarc/publishing/v1/publisher"

class ::Google::Cloud::Eventarc::Publishing::V1::Publisher::ClientTest < Minitest::Test
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

  def test_publish_channel_connection_events
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    channel_connection = "hello world"
    events = [{}]
    text_events = ["hello world"]

    publish_channel_connection_events_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :publish_channel_connection_events, name
      assert_kind_of ::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest, request
      assert_equal "hello world", request["channel_connection"]
      assert_kind_of ::Google::Protobuf::Any, request["events"].first
      assert_equal ["hello world"], request["text_events"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, publish_channel_connection_events_client_stub do
      # Create client
      client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.publish_channel_connection_events({ channel_connection: channel_connection, events: events, text_events: text_events }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.publish_channel_connection_events channel_connection: channel_connection, events: events, text_events: text_events do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.publish_channel_connection_events ::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest.new(channel_connection: channel_connection, events: events, text_events: text_events) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.publish_channel_connection_events({ channel_connection: channel_connection, events: events, text_events: text_events }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.publish_channel_connection_events(::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest.new(channel_connection: channel_connection, events: events, text_events: text_events), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, publish_channel_connection_events_client_stub.call_rpc_count
    end
  end

  def test_publish_events
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Eventarc::Publishing::V1::PublishEventsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    channel = "hello world"
    events = [{}]
    text_events = ["hello world"]

    publish_events_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :publish_events, name
      assert_kind_of ::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest, request
      assert_equal "hello world", request["channel"]
      assert_kind_of ::Google::Protobuf::Any, request["events"].first
      assert_equal ["hello world"], request["text_events"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, publish_events_client_stub do
      # Create client
      client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.publish_events({ channel: channel, events: events, text_events: text_events }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.publish_events channel: channel, events: events, text_events: text_events do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.publish_events ::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest.new(channel: channel, events: events, text_events: text_events) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.publish_events({ channel: channel, events: events, text_events: text_events }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.publish_events(::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest.new(channel: channel, events: events, text_events: text_events), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, publish_events_client_stub.call_rpc_count
    end
  end

  def test_publish
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Eventarc::Publishing::V1::PublishResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    message_bus = "hello world"
    proto_message = {}

    publish_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :publish, name
      assert_kind_of ::Google::Cloud::Eventarc::Publishing::V1::PublishRequest, request
      assert_equal "hello world", request["message_bus"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Eventarc::Publishing::V1::CloudEvent), request["proto_message"]
      assert_equal :proto_message, request.format
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, publish_client_stub do
      # Create client
      client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.publish({ message_bus: message_bus, proto_message: proto_message }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.publish message_bus: message_bus, proto_message: proto_message do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.publish ::Google::Cloud::Eventarc::Publishing::V1::PublishRequest.new(message_bus: message_bus, proto_message: proto_message) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.publish({ message_bus: message_bus, proto_message: proto_message }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.publish(::Google::Cloud::Eventarc::Publishing::V1::PublishRequest.new(message_bus: message_bus, proto_message: proto_message), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, publish_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Client::Configuration, config
  end
end
