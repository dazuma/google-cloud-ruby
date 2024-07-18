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


module Google
  module Cloud
    module VisionAI
      module V1
        # Defines the interface of an Operator.
        #
        # Arguments to an operator are input/output streams that are getting
        # processesed/returned while attributes are fixed configuration parameters.
        # @!attribute [rw] operator
        #   @return [::String]
        #     The name of this operator.
        #
        #     Tentatively [A-Z][a-zA-Z0-9]*, e.g., BboxCounter, PetDetector,
        #     PetDetector1.
        # @!attribute [rw] input_args
        #   @return [::Array<::Google::Cloud::VisionAI::V1::OperatorDefinition::ArgumentDefinition>]
        #     Declares input arguments.
        # @!attribute [rw] output_args
        #   @return [::Array<::Google::Cloud::VisionAI::V1::OperatorDefinition::ArgumentDefinition>]
        #     Declares output arguments.
        # @!attribute [rw] attributes
        #   @return [::Array<::Google::Cloud::VisionAI::V1::OperatorDefinition::AttributeDefinition>]
        #     Declares the attributes.
        # @!attribute [rw] resources
        #   @return [::Google::Cloud::VisionAI::V1::ResourceSpecification]
        #     The resources for running the operator.
        # @!attribute [rw] short_description
        #   @return [::String]
        #     Short description of the operator.
        # @!attribute [rw] description
        #   @return [::String]
        #     Full description of the operator.
        class OperatorDefinition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Defines an argument to an operator.
          #
          # Used for both inputs and outputs.
          # @!attribute [rw] argument
          #   @return [::String]
          #     The name of the argument.
          #
          #     Tentatively [a-z]([_a-z0-9]*[a-z0-9])?, e.g., video, audio,
          #     high_fps_frame.
          # @!attribute [rw] type
          #   @return [::String]
          #     The data type of the argument.
          #
          #     This should match the textual representation of a stream/Packet type.
          class ArgumentDefinition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Defines an attribute of an operator.
          # @!attribute [rw] attribute
          #   @return [::String]
          #     The name of the attribute.
          #
          #     Tentatively [a-z]([_a-z0-9]*[a-z0-9])?, e.g., max_frames_per_video,
          #     resize_height.
          # @!attribute [rw] type
          #   @return [::String]
          #     The type of this attribute.
          #
          #     See attribute_value.proto for possibilities.
          # @!attribute [rw] default_value
          #   @return [::Google::Cloud::VisionAI::V1::AttributeValue]
          #     The default value for the attribute.
          class AttributeDefinition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # ResourceSpec collects a set of resources that can
        # be used to specify requests and requirements.
        #
        # Note: Highly experimental as this can be runtime dependent.
        # Can use the "extras" field to experiment first before trying
        # to abstract it.
        # @!attribute [rw] cpu
        #   @return [::String]
        #     CPU specification.
        #
        #     Examples:
        #     "100m", "0.5", "1", "2", ... correspond to
        #     0.1, half, 1, or 2 cpus.
        #
        #     Leave empty to let the system decide.
        #
        #     Note that this does *not* determine the cpu vender/make,
        #     or its underlying clock speed and specific SIMD features.
        #     It is only the amount time it requires in timeslicing.
        # @!attribute [rw] cpu_limits
        #   @return [::String]
        #     CPU limit.
        #
        #     Examples:
        #     "100m", "0.5", "1", "2", ... correspond to
        #     0.1, half, 1, or 2 cpus.
        #
        #     Leave empty to indicate no limit.
        # @!attribute [rw] memory
        #   @return [::String]
        #     Memory specification (in bytes).
        #
        #     Examples:
        #     "128974848", "129e6", "129M", "123Mi", ... correspond to
        #     128974848 bytes, 129000000 bytes, 129 mebibytes, 123 megabytes.
        #
        #     Leave empty to let the system decide.
        # @!attribute [rw] memory_limits
        #   @return [::String]
        #     Memory usage limits.
        #
        #     Examples:
        #     "128974848", "129e6", "129M", "123Mi", ... correspond to
        #     128974848 bytes, 129000000 bytes, 129 mebibytes, 123 megabytes.
        #
        #     Leave empty to indicate no limit.
        # @!attribute [rw] gpus
        #   @return [::Integer]
        #     Number of gpus.
        # @!attribute [rw] latency_budget_ms
        #   @return [::Integer]
        #     The maximum latency that this operator may use to process an element.
        #
        #     If non positive, then a system default will be used.
        #     Operator developers should arrange for the system compute resources to be
        #     aligned with this latency budget; e.g. if you want a ML model to produce
        #     results within 500ms, then you should make sure you request enough
        #     cpu/gpu/memory to achieve that.
        class ResourceSpecification
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents an actual value of an operator attribute.
        # @!attribute [rw] i
        #   @return [::Integer]
        #     int.
        # @!attribute [rw] f
        #   @return [::Float]
        #     float.
        # @!attribute [rw] b
        #   @return [::Boolean]
        #     bool.
        # @!attribute [rw] s
        #   @return [::String]
        #     string.
        class AttributeValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defines an Analyzer.
        #
        # An analyzer processes data from its input streams using the logic defined in
        # the Operator that it represents. Of course, it produces data for the output
        # streams declared in the Operator.
        # @!attribute [rw] analyzer
        #   @return [::String]
        #     The name of this analyzer.
        #
        #     Tentatively [a-z][a-z0-9]*(_[a-z0-9]+)*.
        # @!attribute [rw] operator
        #   @return [::String]
        #     The name of the operator that this analyzer runs.
        #
        #     Must match the name of a supported operator.
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::VisionAI::V1::AnalyzerDefinition::StreamInput>]
        #     Input streams.
        # @!attribute [rw] attrs
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::VisionAI::V1::AttributeValue}]
        #     The attribute values that this analyzer applies to the operator.
        #
        #     Supply a mapping between the attribute names and the actual value you wish
        #     to apply. If an attribute name is omitted, then it will take a
        #     preconfigured default value.
        # @!attribute [rw] debug_options
        #   @return [::Google::Cloud::VisionAI::V1::AnalyzerDefinition::DebugOptions]
        #     Debug options.
        # @!attribute [rw] operator_option
        #   @return [::Google::Cloud::VisionAI::V1::AnalyzerDefinition::OperatorOption]
        #     Operator option.
        class AnalyzerDefinition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The inputs to this analyzer.
          #
          # We accept input name references of the following form:
          # <analyzer-name>:<output-argument-name>
          #
          # Example:
          #
          # Suppose you had an operator named "SomeOp" that has 2 output
          # arguments, the first of which is named "foo" and the second of which is
          # named "bar", and an operator named "MyOp" that accepts 2 inputs.
          #
          # Also suppose that there is an analyzer named "some-analyzer" that is
          # running "SomeOp" and another analyzer named "my-analyzer" running "MyOp".
          #
          # To indicate that "my-analyzer" is to consume "some-analyzer"'s "foo"
          # output as its first input and "some-analyzer"'s "bar" output as its
          # second input, you can set this field to the following:
          # input = ["some-analyzer:foo", "some-analyzer:bar"]
          # @!attribute [rw] input
          #   @return [::String]
          #     The name of the stream input (as discussed above).
          class StreamInput
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Options available for debugging purposes only.
          # @!attribute [rw] environment_variables
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Environment variables.
          class DebugOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class EnvironmentVariablesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Option related to the operator.
          # @!attribute [rw] tag
          #   @return [::String]
          #     Tag of the operator.
          # @!attribute [rw] registry
          #   @return [::String]
          #     Registry of the operator. e.g. public, dev.
          class OperatorOption
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::VisionAI::V1::AttributeValue]
          class AttrsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Defines a full analysis.
        #
        # This is a description of the overall live analytics pipeline.
        # You may think of this as an edge list representation of a multigraph.
        #
        # This may be directly authored by a human in protobuf textformat, or it may be
        # generated by a programming API (perhaps Python or JavaScript depending on
        # context).
        # @!attribute [rw] analyzers
        #   @return [::Array<::Google::Cloud::VisionAI::V1::AnalyzerDefinition>]
        #     Analyzer definitions.
        class AnalysisDefinition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message describing the status of the Process.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::VisionAI::V1::RunStatus::State]
        #     The state of the Process.
        # @!attribute [rw] reason
        #   @return [::String]
        #     The reason of becoming the state.
        class RunStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State represents the running status of the Process.
          module State
            # State is unspecified.
            STATE_UNSPECIFIED = 0

            # INITIALIZING means the Process is scheduled but yet ready to handle
            # real traffic.
            INITIALIZING = 1

            # RUNNING means the Process is up running and handling traffic.
            RUNNING = 2

            # COMPLETED means the Process has completed the processing, especially
            # for non-streaming use case.
            COMPLETED = 3

            # FAILED means the Process failed to complete the processing.
            FAILED = 4

            # PENDING means the Process is created but yet to be scheduled.
            PENDING = 5
          end
        end

        # RunMode represents the mode to launch the Process on.
        module RunMode
          # Mode is unspecified.
          RUN_MODE_UNSPECIFIED = 0

          # Live mode. Meaning the Process is launched to handle live video
          # source, and possible packet drops are expected.
          LIVE = 1

          # Submission mode. Meaning the Process is launched to handle bounded video
          # files, with no packet drop. Completion status is tracked.
          SUBMISSION = 2
        end
      end
    end
  end
end
