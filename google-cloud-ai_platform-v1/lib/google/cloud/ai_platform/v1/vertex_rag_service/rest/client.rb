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

require "google/cloud/errors"
require "google/cloud/aiplatform/v1/vertex_rag_service_pb"
require "google/cloud/ai_platform/v1/vertex_rag_service/rest/service_stub"
require "google/cloud/location/rest"
require "google/iam/v1/rest"

module Google
  module Cloud
    module AIPlatform
      module V1
        module VertexRagService
          module Rest
            ##
            # REST client for the VertexRagService service.
            #
            # A service for retrieving relevant contexts.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "aiplatform.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :vertex_rag_service_stub

              ##
              # Configure the VertexRagService Client class.
              #
              # See {::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all VertexRagService clients
              #   ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "AIPlatform", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the VertexRagService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @vertex_rag_service_stub.universe_domain
              end

              ##
              # Create a new VertexRagService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the VertexRagService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @vertex_rag_service_stub = ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @vertex_rag_service_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @vertex_rag_service_stub.endpoint
                  config.universe_domain = @vertex_rag_service_stub.universe_domain
                  config.bindings_override = @config.bindings_override
                  config.logger = @vertex_rag_service_stub.logger if config.respond_to? :logger=
                end

                @iam_policy_client = Google::Iam::V1::IAMPolicy::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @vertex_rag_service_stub.endpoint
                  config.universe_domain = @vertex_rag_service_stub.universe_domain
                  config.bindings_override = @config.bindings_override
                  config.logger = @vertex_rag_service_stub.logger if config.respond_to? :logger=
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              ##
              # Get the associated client for mix-in of the IAMPolicy.
              #
              # @return [Google::Iam::V1::IAMPolicy::Rest::Client]
              #
              attr_reader :iam_policy_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @vertex_rag_service_stub.logger
              end

              # Service calls

              ##
              # Retrieves relevant contexts for a query.
              #
              # @overload retrieve_contexts(request, options = nil)
              #   Pass arguments to `retrieve_contexts` via a request object, either of type
              #   {::Google::Cloud::AIPlatform::V1::RetrieveContextsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AIPlatform::V1::RetrieveContextsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload retrieve_contexts(vertex_rag_store: nil, parent: nil, query: nil)
              #   Pass arguments to `retrieve_contexts` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param vertex_rag_store [::Google::Cloud::AIPlatform::V1::RetrieveContextsRequest::VertexRagStore, ::Hash]
              #     The data source for Vertex RagStore.
              #   @param parent [::String]
              #     Required. The resource name of the Location from which to retrieve
              #     RagContexts. The users must have permission to make a call in the project.
              #     Format:
              #     `projects/{project}/locations/{location}`.
              #   @param query [::Google::Cloud::AIPlatform::V1::RagQuery, ::Hash]
              #     Required. Single RAG retrieve query.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::RetrieveContextsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::RetrieveContextsResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/ai_platform/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AIPlatform::V1::RetrieveContextsRequest.new
              #
              #   # Call the retrieve_contexts method.
              #   result = client.retrieve_contexts request
              #
              #   # The returned object is of type Google::Cloud::AIPlatform::V1::RetrieveContextsResponse.
              #   p result
              #
              def retrieve_contexts request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::RetrieveContextsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.retrieve_contexts.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.retrieve_contexts.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.retrieve_contexts.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @vertex_rag_service_stub.retrieve_contexts request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Given an input prompt, it returns augmented prompt from vertex rag store
              #  to guide LLM towards generating grounded responses.
              #
              # @overload augment_prompt(request, options = nil)
              #   Pass arguments to `augment_prompt` via a request object, either of type
              #   {::Google::Cloud::AIPlatform::V1::AugmentPromptRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AIPlatform::V1::AugmentPromptRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload augment_prompt(vertex_rag_store: nil, parent: nil, contents: nil, model: nil)
              #   Pass arguments to `augment_prompt` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param vertex_rag_store [::Google::Cloud::AIPlatform::V1::VertexRagStore, ::Hash]
              #     Optional. Retrieves contexts from the Vertex RagStore.
              #   @param parent [::String]
              #     Required. The resource name of the Location from which to augment prompt.
              #     The users must have permission to make a call in the project.
              #     Format:
              #     `projects/{project}/locations/{location}`.
              #   @param contents [::Array<::Google::Cloud::AIPlatform::V1::Content, ::Hash>]
              #     Optional. Input content to augment, only text format is supported for now.
              #   @param model [::Google::Cloud::AIPlatform::V1::AugmentPromptRequest::Model, ::Hash]
              #     Optional. Metadata of the backend deployed model.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::AugmentPromptResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::AugmentPromptResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/ai_platform/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AIPlatform::V1::AugmentPromptRequest.new
              #
              #   # Call the augment_prompt method.
              #   result = client.augment_prompt request
              #
              #   # The returned object is of type Google::Cloud::AIPlatform::V1::AugmentPromptResponse.
              #   p result
              #
              def augment_prompt request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::AugmentPromptRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.augment_prompt.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.augment_prompt.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.augment_prompt.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @vertex_rag_service_stub.augment_prompt request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Given an input text, it returns a score that evaluates the factuality of
              # the text. It also extracts and returns claims from the text and provides
              # supporting facts.
              #
              # @overload corroborate_content(request, options = nil)
              #   Pass arguments to `corroborate_content` via a request object, either of type
              #   {::Google::Cloud::AIPlatform::V1::CorroborateContentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AIPlatform::V1::CorroborateContentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload corroborate_content(parent: nil, content: nil, facts: nil, parameters: nil)
              #   Pass arguments to `corroborate_content` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The resource name of the Location from which to corroborate text.
              #     The users must have permission to make a call in the project.
              #     Format:
              #     `projects/{project}/locations/{location}`.
              #   @param content [::Google::Cloud::AIPlatform::V1::Content, ::Hash]
              #     Optional. Input content to corroborate, only text format is supported for
              #     now.
              #   @param facts [::Array<::Google::Cloud::AIPlatform::V1::Fact, ::Hash>]
              #     Optional. Facts used to generate the text can also be used to corroborate
              #     the text.
              #   @param parameters [::Google::Cloud::AIPlatform::V1::CorroborateContentRequest::Parameters, ::Hash]
              #     Optional. Parameters that can be set to override default settings per
              #     request.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::CorroborateContentResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::CorroborateContentResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/ai_platform/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AIPlatform::V1::CorroborateContentRequest.new
              #
              #   # Call the corroborate_content method.
              #   result = client.corroborate_content request
              #
              #   # The returned object is of type Google::Cloud::AIPlatform::V1::CorroborateContentResponse.
              #   p result
              #
              def corroborate_content request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::CorroborateContentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.corroborate_content.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.corroborate_content.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.corroborate_content.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @vertex_rag_service_stub.corroborate_content request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the VertexRagService REST API.
              #
              # This class represents the configuration for VertexRagService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # retrieve_contexts to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.retrieve_contexts.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::AIPlatform::V1::VertexRagService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.retrieve_contexts.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #
              #   Warning: If you accept a credential configuration (JSON file or Hash) from an
              #   external source for authentication to Google Cloud, you must validate it before
              #   providing it to a Google API client library. Providing an unvalidated credential
              #   configuration to Google APIs can compromise the security of your systems and data.
              #   For more information, refer to [Validate credential configurations from external
              #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              # @!attribute [rw] logger
              #   A custom logger to use for request/response debug logging, or the value
              #   `:default` (the default) to construct a default logger, or `nil` to
              #   explicitly disable logging.
              #   @return [::Logger,:default,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "aiplatform.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Google::Auth::BaseClient, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil
                config_attr :logger, :default, ::Logger, nil, :default

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the VertexRagService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `retrieve_contexts`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :retrieve_contexts
                  ##
                  # RPC-specific configuration for `augment_prompt`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :augment_prompt
                  ##
                  # RPC-specific configuration for `corroborate_content`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :corroborate_content

                  # @private
                  def initialize parent_rpcs = nil
                    retrieve_contexts_config = parent_rpcs.retrieve_contexts if parent_rpcs.respond_to? :retrieve_contexts
                    @retrieve_contexts = ::Gapic::Config::Method.new retrieve_contexts_config
                    augment_prompt_config = parent_rpcs.augment_prompt if parent_rpcs.respond_to? :augment_prompt
                    @augment_prompt = ::Gapic::Config::Method.new augment_prompt_config
                    corroborate_content_config = parent_rpcs.corroborate_content if parent_rpcs.respond_to? :corroborate_content
                    @corroborate_content = ::Gapic::Config::Method.new corroborate_content_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
