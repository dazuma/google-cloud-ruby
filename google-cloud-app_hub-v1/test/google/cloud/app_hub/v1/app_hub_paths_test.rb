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

require "google/cloud/app_hub/v1/app_hub"

class ::Google::Cloud::AppHub::V1::AppHub::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_application_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.application_path project: "value0", location: "value1", application: "value2"
      assert_equal "projects/value0/locations/value1/applications/value2", path
    end
  end

  def test_discovered_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.discovered_service_path project: "value0", location: "value1", discovered_service: "value2"
      assert_equal "projects/value0/locations/value1/discoveredServices/value2", path
    end
  end

  def test_discovered_workload_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.discovered_workload_path project: "value0", location: "value1", discovered_workload: "value2"
      assert_equal "projects/value0/locations/value1/discoveredWorkloads/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_path project: "value0", location: "value1", application: "value2", service: "value3"
      assert_equal "projects/value0/locations/value1/applications/value2/services/value3", path
    end
  end

  def test_service_project_attachment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_project_attachment_path project: "value0", location: "value1", service_project_attachment: "value2"
      assert_equal "projects/value0/locations/value1/serviceProjectAttachments/value2", path
    end
  end

  def test_workload_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AppHub::V1::AppHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workload_path project: "value0", location: "value1", application: "value2", workload: "value3"
      assert_equal "projects/value0/locations/value1/applications/value2/workloads/value3", path
    end
  end
end
