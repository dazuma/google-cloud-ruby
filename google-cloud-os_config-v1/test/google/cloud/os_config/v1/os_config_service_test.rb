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

require "google/cloud/osconfig/v1/osconfig_service_pb"
require "google/cloud/osconfig/v1/osconfig_service_services_pb"
require "google/cloud/os_config/v1/os_config_service"

class ::Google::Cloud::OsConfig::V1::OsConfigService::ClientTest < Minitest::Test
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

  def test_execute_patch_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    description = "hello world"
    instance_filter = {}
    patch_config = {}
    duration = {}
    dry_run = true
    display_name = "hello world"
    rollout = {}

    execute_patch_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :execute_patch_job, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ExecutePatchJobRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["description"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::OsConfig::V1::PatchInstanceFilter), request["instance_filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::OsConfig::V1::PatchConfig), request["patch_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Duration), request["duration"]
      assert_equal true, request["dry_run"]
      assert_equal "hello world", request["display_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::OsConfig::V1::PatchRollout), request["rollout"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, execute_patch_job_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.execute_patch_job({ parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.execute_patch_job parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.execute_patch_job ::Google::Cloud::OsConfig::V1::ExecutePatchJobRequest.new(parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.execute_patch_job({ parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.execute_patch_job(::Google::Cloud::OsConfig::V1::ExecutePatchJobRequest.new(parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, execute_patch_job_client_stub.call_rpc_count
    end
  end

  def test_get_patch_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_patch_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_patch_job, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::GetPatchJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_patch_job_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_patch_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_patch_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_patch_job ::Google::Cloud::OsConfig::V1::GetPatchJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_patch_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_patch_job(::Google::Cloud::OsConfig::V1::GetPatchJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_patch_job_client_stub.call_rpc_count
    end
  end

  def test_cancel_patch_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_patch_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_patch_job, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::CancelPatchJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_patch_job_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_patch_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_patch_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_patch_job ::Google::Cloud::OsConfig::V1::CancelPatchJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_patch_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_patch_job(::Google::Cloud::OsConfig::V1::CancelPatchJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_patch_job_client_stub.call_rpc_count
    end
  end

  def test_list_patch_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::ListPatchJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_patch_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_patch_jobs, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ListPatchJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_patch_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_patch_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_patch_jobs parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_patch_jobs ::Google::Cloud::OsConfig::V1::ListPatchJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_patch_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_patch_jobs(::Google::Cloud::OsConfig::V1::ListPatchJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_patch_jobs_client_stub.call_rpc_count
    end
  end

  def test_list_patch_job_instance_details
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_patch_job_instance_details_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_patch_job_instance_details, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_patch_job_instance_details_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_patch_job_instance_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_patch_job_instance_details parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_patch_job_instance_details ::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_patch_job_instance_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_patch_job_instance_details(::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_patch_job_instance_details_client_stub.call_rpc_count
    end
  end

  def test_create_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    patch_deployment_id = "hello world"
    patch_deployment = {}

    create_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::CreatePatchDeploymentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["patch_deployment_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::OsConfig::V1::PatchDeployment), request["patch_deployment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_patch_deployment({ parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_patch_deployment parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_patch_deployment ::Google::Cloud::OsConfig::V1::CreatePatchDeploymentRequest.new(parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_patch_deployment({ parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_patch_deployment(::Google::Cloud::OsConfig::V1::CreatePatchDeploymentRequest.new(parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_get_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::GetPatchDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_patch_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_patch_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_patch_deployment ::Google::Cloud::OsConfig::V1::GetPatchDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_patch_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_patch_deployment(::Google::Cloud::OsConfig::V1::GetPatchDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_list_patch_deployments
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::ListPatchDeploymentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_patch_deployments_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_patch_deployments, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ListPatchDeploymentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_patch_deployments_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_patch_deployments({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_patch_deployments parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_patch_deployments ::Google::Cloud::OsConfig::V1::ListPatchDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_patch_deployments({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_patch_deployments(::Google::Cloud::OsConfig::V1::ListPatchDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_patch_deployments_client_stub.call_rpc_count
    end
  end

  def test_delete_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::DeletePatchDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_patch_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_patch_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_patch_deployment ::Google::Cloud::OsConfig::V1::DeletePatchDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_patch_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_patch_deployment(::Google::Cloud::OsConfig::V1::DeletePatchDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_update_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    patch_deployment = {}
    update_mask = {}

    update_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::UpdatePatchDeploymentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::OsConfig::V1::PatchDeployment), request["patch_deployment"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_patch_deployment({ patch_deployment: patch_deployment, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_patch_deployment patch_deployment: patch_deployment, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_patch_deployment ::Google::Cloud::OsConfig::V1::UpdatePatchDeploymentRequest.new(patch_deployment: patch_deployment, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_patch_deployment({ patch_deployment: patch_deployment, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_patch_deployment(::Google::Cloud::OsConfig::V1::UpdatePatchDeploymentRequest.new(patch_deployment: patch_deployment, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_pause_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :pause_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, pause_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.pause_patch_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.pause_patch_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.pause_patch_deployment ::Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.pause_patch_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.pause_patch_deployment(::Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, pause_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_resume_patch_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_patch_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :resume_patch_deployment, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ResumePatchDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, resume_patch_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.resume_patch_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.resume_patch_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.resume_patch_deployment ::Google::Cloud::OsConfig::V1::ResumePatchDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.resume_patch_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.resume_patch_deployment(::Google::Cloud::OsConfig::V1::ResumePatchDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, resume_patch_deployment_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OsConfig::V1::OsConfigService::Client::Configuration, config
  end
end
