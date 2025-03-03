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
require "google/cloud/dataproc/v1/clusters_pb"
require "google/cloud/dataproc/v1/cluster_controller/rest"


class ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ClientTest < Minitest::Test
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

  def test_create_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster = {}
    request_id = "hello world"
    action_on_failed_primary_workers = :FAILURE_ACTION_UNSPECIFIED

    create_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_create_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_cluster({ project_id: project_id, region: region, cluster: cluster, request_id: request_id, action_on_failed_primary_workers: action_on_failed_primary_workers }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_cluster project_id: project_id, region: region, cluster: cluster, request_id: request_id, action_on_failed_primary_workers: action_on_failed_primary_workers do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_cluster ::Google::Cloud::Dataproc::V1::CreateClusterRequest.new(project_id: project_id, region: region, cluster: cluster, request_id: request_id, action_on_failed_primary_workers: action_on_failed_primary_workers) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_cluster({ project_id: project_id, region: region, cluster: cluster, request_id: request_id, action_on_failed_primary_workers: action_on_failed_primary_workers }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_cluster(::Google::Cloud::Dataproc::V1::CreateClusterRequest.new(project_id: project_id, region: region, cluster: cluster, request_id: request_id, action_on_failed_primary_workers: action_on_failed_primary_workers), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_cluster_client_stub.call_count
      end
    end
  end

  def test_update_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"
    cluster = {}
    graceful_decommission_timeout = {}
    update_mask = {}
    request_id = "hello world"

    update_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_update_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster: cluster, graceful_decommission_timeout: graceful_decommission_timeout, update_mask: update_mask, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_cluster project_id: project_id, region: region, cluster_name: cluster_name, cluster: cluster, graceful_decommission_timeout: graceful_decommission_timeout, update_mask: update_mask, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_cluster ::Google::Cloud::Dataproc::V1::UpdateClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster: cluster, graceful_decommission_timeout: graceful_decommission_timeout, update_mask: update_mask, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster: cluster, graceful_decommission_timeout: graceful_decommission_timeout, update_mask: update_mask, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_cluster(::Google::Cloud::Dataproc::V1::UpdateClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster: cluster, graceful_decommission_timeout: graceful_decommission_timeout, update_mask: update_mask, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_cluster_client_stub.call_count
      end
    end
  end

  def test_stop_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"
    cluster_uuid = "hello world"
    request_id = "hello world"

    stop_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_stop_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, stop_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.stop_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.stop_cluster project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.stop_cluster ::Google::Cloud::Dataproc::V1::StopClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.stop_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.stop_cluster(::Google::Cloud::Dataproc::V1::StopClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, stop_cluster_client_stub.call_count
      end
    end
  end

  def test_start_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"
    cluster_uuid = "hello world"
    request_id = "hello world"

    start_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_start_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, start_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.start_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.start_cluster project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.start_cluster ::Google::Cloud::Dataproc::V1::StartClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.start_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.start_cluster(::Google::Cloud::Dataproc::V1::StartClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, start_cluster_client_stub.call_count
      end
    end
  end

  def test_delete_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"
    cluster_uuid = "hello world"
    request_id = "hello world"

    delete_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_delete_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_cluster project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_cluster ::Google::Cloud::Dataproc::V1::DeleteClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_cluster(::Google::Cloud::Dataproc::V1::DeleteClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, cluster_uuid: cluster_uuid, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_cluster_client_stub.call_count
      end
    end
  end

  def test_get_cluster
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::Cluster.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"

    get_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_get_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_cluster({ project_id: project_id, region: region, cluster_name: cluster_name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_cluster project_id: project_id, region: region, cluster_name: cluster_name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_cluster ::Google::Cloud::Dataproc::V1::GetClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_cluster({ project_id: project_id, region: region, cluster_name: cluster_name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_cluster(::Google::Cloud::Dataproc::V1::GetClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_cluster_client_stub.call_count
      end
    end
  end

  def test_list_clusters
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::ListClustersResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_clusters_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_list_clusters_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_clusters_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_clusters({ project_id: project_id, region: region, filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_clusters project_id: project_id, region: region, filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_clusters ::Google::Cloud::Dataproc::V1::ListClustersRequest.new(project_id: project_id, region: region, filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_clusters({ project_id: project_id, region: region, filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_clusters(::Google::Cloud::Dataproc::V1::ListClustersRequest.new(project_id: project_id, region: region, filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_clusters_client_stub.call_count
      end
    end
  end

  def test_diagnose_cluster
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    cluster_name = "hello world"
    tarball_gcs_dir = "hello world"
    tarball_access = :TARBALL_ACCESS_UNSPECIFIED
    diagnosis_interval = {}
    jobs = ["hello world"]
    yarn_application_ids = ["hello world"]

    diagnose_cluster_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::ClusterController::Rest::ServiceStub.stub :transcode_diagnose_cluster_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, diagnose_cluster_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.diagnose_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, tarball_gcs_dir: tarball_gcs_dir, tarball_access: tarball_access, diagnosis_interval: diagnosis_interval, jobs: jobs, yarn_application_ids: yarn_application_ids }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.diagnose_cluster project_id: project_id, region: region, cluster_name: cluster_name, tarball_gcs_dir: tarball_gcs_dir, tarball_access: tarball_access, diagnosis_interval: diagnosis_interval, jobs: jobs, yarn_application_ids: yarn_application_ids do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.diagnose_cluster ::Google::Cloud::Dataproc::V1::DiagnoseClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, tarball_gcs_dir: tarball_gcs_dir, tarball_access: tarball_access, diagnosis_interval: diagnosis_interval, jobs: jobs, yarn_application_ids: yarn_application_ids) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.diagnose_cluster({ project_id: project_id, region: region, cluster_name: cluster_name, tarball_gcs_dir: tarball_gcs_dir, tarball_access: tarball_access, diagnosis_interval: diagnosis_interval, jobs: jobs, yarn_application_ids: yarn_application_ids }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.diagnose_cluster(::Google::Cloud::Dataproc::V1::DiagnoseClusterRequest.new(project_id: project_id, region: region, cluster_name: cluster_name, tarball_gcs_dir: tarball_gcs_dir, tarball_access: tarball_access, diagnosis_interval: diagnosis_interval, jobs: jobs, yarn_application_ids: yarn_application_ids), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, diagnose_cluster_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataproc::V1::ClusterController::Rest::Client::Configuration, config
  end
end
