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

require "google/cloud/aiplatform/v1/prediction_service_pb"

module Google
  module Cloud
    module AIPlatform
      module V1
        module PredictionService
          module Rest
            ##
            # REST service stub for the PredictionService service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              # @private
              def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                             endpoint_template: endpoint_template,
                                                             universe_domain: universe_domain,
                                                             credentials: credentials,
                                                             numeric_enums: true,
                                                             service_name: self.class,
                                                             raise_faraday_errors: false,
                                                             logger: logger
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @client_stub.universe_domain
              end

              ##
              # The effective endpoint
              #
              # @return [String]
              #
              def endpoint
                @client_stub.endpoint
              end

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger stub: false
                stub ? @client_stub.stub_logger : @client_stub.logger
              end

              ##
              # Baseline implementation for the predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::PredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::PredictResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::PredictResponse]
              #   A result object deserialized from the server's reply
              def predict request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "predict",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::PredictResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::RawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Api::HttpBody]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Api::HttpBody]
              #   A result object deserialized from the server's reply
              def raw_predict request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_raw_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "raw_predict",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Api::HttpBody.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the stream_raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::StreamRawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yieldparam chunk [::String] The chunk of data received during server streaming.
              #
              # @return [::Gapic::Rest::TransportOperation]
              def stream_raw_predict(request_pb, options = nil, &)
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_stream_raw_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "stream_raw_predict",
                  options: options,
                  is_server_streaming: true,
                  &
                )
                ::Gapic::Rest::TransportOperation.new response
              end

              ##
              # Baseline implementation for the direct_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::DirectPredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::DirectPredictResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::DirectPredictResponse]
              #   A result object deserialized from the server's reply
              def direct_predict request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_direct_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "direct_predict",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::DirectPredictResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the direct_raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::DirectRawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::DirectRawPredictResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::DirectRawPredictResponse]
              #   A result object deserialized from the server's reply
              def direct_raw_predict request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_direct_raw_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "direct_raw_predict",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::DirectRawPredictResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the server_streaming_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::StreamingPredictRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yieldparam chunk [::String] The chunk of data received during server streaming.
              #
              # @return [::Gapic::Rest::TransportOperation]
              def server_streaming_predict(request_pb, options = nil, &)
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_server_streaming_predict_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "server_streaming_predict",
                  options: options,
                  is_server_streaming: true,
                  &
                )
                ::Gapic::Rest::TransportOperation.new response
              end

              ##
              # Baseline implementation for the explain REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::ExplainRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::ExplainResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::ExplainResponse]
              #   A result object deserialized from the server's reply
              def explain request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_explain_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "explain",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::ExplainResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the generate_content REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::GenerateContentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::GenerateContentResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::GenerateContentResponse]
              #   A result object deserialized from the server's reply
              def generate_content request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_generate_content_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "generate_content",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::GenerateContentResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the stream_generate_content REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::GenerateContentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yieldparam chunk [::String] The chunk of data received during server streaming.
              #
              # @return [::Gapic::Rest::TransportOperation]
              def stream_generate_content(request_pb, options = nil, &)
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_stream_generate_content_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "stream_generate_content",
                  options: options,
                  is_server_streaming: true,
                  &
                )
                ::Gapic::Rest::TransportOperation.new response
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::PredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:predict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:predict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::RawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_raw_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:rawPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:rawPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the stream_raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::StreamRawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_stream_raw_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:streamRawPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:streamRawPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the direct_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::DirectPredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_direct_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:directPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the direct_raw_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::DirectRawPredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_direct_raw_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:directRawPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the server_streaming_predict REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::StreamingPredictRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_server_streaming_predict_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:serverStreamingPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:serverStreamingPredict",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the explain REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::ExplainRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_explain_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{endpoint}:explain",
                                                          body: "*",
                                                          matches: [
                                                            ["endpoint", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the generate_content REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::GenerateContentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_generate_content_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:generateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:generateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:generateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:generateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the stream_generate_content REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::GenerateContentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_stream_generate_content_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:streamGenerateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^projects/[^/]+/locations/[^/]+/endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:streamGenerateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^projects/[^/]+/locations/[^/]+/publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:streamGenerateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^endpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{model}:streamGenerateContent",
                                                          body: "*",
                                                          matches: [
                                                            ["model", %r{^publishers/[^/]+/models/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
