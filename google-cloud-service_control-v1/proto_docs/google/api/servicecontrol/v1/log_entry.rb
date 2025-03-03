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


module Google
  module Cloud
    module ServiceControl
      module V1
        # An individual log entry.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The log to which this log entry belongs. Examples: `"syslog"`,
        #     `"book_log"`.
        # @!attribute [rw] timestamp
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the event described by the log entry occurred. If
        #     omitted, defaults to operation start time.
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::Logging::Type::LogSeverity]
        #     The severity of the log entry. The default value is
        #     `LogSeverity.DEFAULT`.
        # @!attribute [rw] http_request
        #   @return [::Google::Cloud::ServiceControl::V1::HttpRequest]
        #     Optional. Information about the HTTP request associated with this
        #     log entry, if applicable.
        # @!attribute [rw] trace
        #   @return [::String]
        #     Optional. Resource name of the trace associated with the log entry, if any.
        #     If this field contains a relative resource name, you can assume the name is
        #     relative to `//tracing.googleapis.com`. Example:
        #     `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
        # @!attribute [rw] insert_id
        #   @return [::String]
        #     A unique ID for the log entry used for deduplication. If omitted,
        #     the implementation will generate one based on operation_id.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A set of user-defined (key, value) data that provides additional
        #     information about the log entry.
        # @!attribute [rw] proto_payload
        #   @return [::Google::Protobuf::Any]
        #     The log entry payload, represented as a protocol buffer that is
        #     expressed as a JSON object. The only accepted type currently is
        #     [AuditLog][google.cloud.audit.AuditLog].
        #
        #     Note: The following fields are mutually exclusive: `proto_payload`, `text_payload`, `struct_payload`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] text_payload
        #   @return [::String]
        #     The log entry payload, represented as a Unicode string (UTF-8).
        #
        #     Note: The following fields are mutually exclusive: `text_payload`, `proto_payload`, `struct_payload`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] struct_payload
        #   @return [::Google::Protobuf::Struct]
        #     The log entry payload, represented as a structure that
        #     is expressed as a JSON object.
        #
        #     Note: The following fields are mutually exclusive: `struct_payload`, `proto_payload`, `text_payload`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] operation
        #   @return [::Google::Cloud::ServiceControl::V1::LogEntryOperation]
        #     Optional. Information about an operation associated with the log entry, if
        #     applicable.
        # @!attribute [rw] source_location
        #   @return [::Google::Cloud::ServiceControl::V1::LogEntrySourceLocation]
        #     Optional. Source code location information associated with the log entry,
        #     if any.
        class LogEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Additional information about a potentially long-running operation with which
        # a log entry is associated.
        # @!attribute [rw] id
        #   @return [::String]
        #     Optional. An arbitrary operation identifier. Log entries with the
        #     same identifier are assumed to be part of the same operation.
        # @!attribute [rw] producer
        #   @return [::String]
        #     Optional. An arbitrary producer identifier. The combination of
        #     `id` and `producer` must be globally unique.  Examples for `producer`:
        #     `"MyDivision.MyBigCompany.com"`, `"github.com/MyProject/MyApplication"`.
        # @!attribute [rw] first
        #   @return [::Boolean]
        #     Optional. Set this to True if this is the first log entry in the operation.
        # @!attribute [rw] last
        #   @return [::Boolean]
        #     Optional. Set this to True if this is the last log entry in the operation.
        class LogEntryOperation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Additional information about the source code location that produced the log
        # entry.
        # @!attribute [rw] file
        #   @return [::String]
        #     Optional. Source file name. Depending on the runtime environment, this
        #     might be a simple name or a fully-qualified name.
        # @!attribute [rw] line
        #   @return [::Integer]
        #     Optional. Line within the source file. 1-based; 0 indicates no line number
        #     available.
        # @!attribute [rw] function
        #   @return [::String]
        #     Optional. Human-readable name of the function or method being invoked, with
        #     optional context such as the class or package name. This information may be
        #     used in contexts such as the logs viewer, where a file and line number are
        #     less meaningful. The format can vary by language. For example:
        #     `qual.if.ied.Class.method` (Java), `dir/package.func` (Go), `function`
        #     (Python).
        class LogEntrySourceLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
