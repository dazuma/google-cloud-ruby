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
    module Spanner
      module V1
        # Results from {::Google::Cloud::Spanner::V1::Spanner::Client#read Read} or
        # {::Google::Cloud::Spanner::V1::Spanner::Client#execute_sql ExecuteSql}.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::Spanner::V1::ResultSetMetadata]
        #     Metadata about the result set, such as row type information.
        # @!attribute [rw] rows
        #   @return [::Array<::Google::Protobuf::ListValue>]
        #     Each element in `rows` is a row whose format is defined by
        #     {::Google::Cloud::Spanner::V1::ResultSetMetadata#row_type metadata.row_type}. The ith
        #     element in each row matches the ith field in
        #     {::Google::Cloud::Spanner::V1::ResultSetMetadata#row_type metadata.row_type}. Elements
        #     are encoded based on type as described {::Google::Cloud::Spanner::V1::TypeCode here}.
        # @!attribute [rw] stats
        #   @return [::Google::Cloud::Spanner::V1::ResultSetStats]
        #     Query plan and execution statistics for the SQL statement that
        #     produced this result set. These can be requested by setting
        #     {::Google::Cloud::Spanner::V1::ExecuteSqlRequest#query_mode ExecuteSqlRequest.query_mode}.
        #     DML statements always produce stats containing the number of rows
        #     modified, unless executed using the
        #     {::Google::Cloud::Spanner::V1::ExecuteSqlRequest::QueryMode::PLAN ExecuteSqlRequest.QueryMode.PLAN}
        #     {::Google::Cloud::Spanner::V1::ExecuteSqlRequest#query_mode ExecuteSqlRequest.query_mode}.
        #     Other fields might or might not be populated, based on the
        #     {::Google::Cloud::Spanner::V1::ExecuteSqlRequest#query_mode ExecuteSqlRequest.query_mode}.
        # @!attribute [rw] precommit_token
        #   @return [::Google::Cloud::Spanner::V1::MultiplexedSessionPrecommitToken]
        #     Optional. A precommit token is included if the read-write transaction is on
        #     a multiplexed session. Pass the precommit token with the highest sequence
        #     number from this transaction attempt to the
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#commit Commit} request for this transaction.
        class ResultSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Partial results from a streaming read or SQL query. Streaming reads and
        # SQL queries better tolerate large result sets, large rows, and large
        # values, but are a little trickier to consume.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::Spanner::V1::ResultSetMetadata]
        #     Metadata about the result set, such as row type information.
        #     Only present in the first response.
        # @!attribute [rw] values
        #   @return [::Array<::Google::Protobuf::Value>]
        #     A streamed result set consists of a stream of values, which might
        #     be split into many `PartialResultSet` messages to accommodate
        #     large rows and/or large values. Every N complete values defines a
        #     row, where N is equal to the number of entries in
        #     {::Google::Cloud::Spanner::V1::StructType#fields metadata.row_type.fields}.
        #
        #     Most values are encoded based on type as described
        #     {::Google::Cloud::Spanner::V1::TypeCode here}.
        #
        #     It's possible that the last value in values is "chunked",
        #     meaning that the rest of the value is sent in subsequent
        #     `PartialResultSet`(s). This is denoted by the
        #     {::Google::Cloud::Spanner::V1::PartialResultSet#chunked_value chunked_value} field.
        #     Two or more chunked values can be merged to form a complete value as
        #     follows:
        #
        #       * `bool/number/null`: can't be chunked
        #       * `string`: concatenate the strings
        #       * `list`: concatenate the lists. If the last element in a list is a
        #         `string`, `list`, or `object`, merge it with the first element in
        #         the next list by applying these rules recursively.
        #       * `object`: concatenate the (field name, field value) pairs. If a
        #         field name is duplicated, then apply these rules recursively
        #         to merge the field values.
        #
        #     Some examples of merging:
        #
        #         Strings are concatenated.
        #         "foo", "bar" => "foobar"
        #
        #         Lists of non-strings are concatenated.
        #         [2, 3], [4] => [2, 3, 4]
        #
        #         Lists are concatenated, but the last and first elements are merged
        #         because they are strings.
        #         ["a", "b"], ["c", "d"] => ["a", "bc", "d"]
        #
        #         Lists are concatenated, but the last and first elements are merged
        #         because they are lists. Recursively, the last and first elements
        #         of the inner lists are merged because they are strings.
        #         ["a", ["b", "c"]], [["d"], "e"] => ["a", ["b", "cd"], "e"]
        #
        #         Non-overlapping object fields are combined.
        #         {"a": "1"}, {"b": "2"} => {"a": "1", "b": 2"}
        #
        #         Overlapping object fields are merged.
        #         {"a": "1"}, {"a": "2"} => {"a": "12"}
        #
        #         Examples of merging objects containing lists of strings.
        #         {"a": ["1"]}, {"a": ["2"]} => {"a": ["12"]}
        #
        #     For a more complete example, suppose a streaming SQL query is
        #     yielding a result set whose rows contain a single string
        #     field. The following `PartialResultSet`s might be yielded:
        #
        #         {
        #           "metadata": { ... }
        #           "values": ["Hello", "W"]
        #           "chunked_value": true
        #           "resume_token": "Af65..."
        #         }
        #         {
        #           "values": ["orl"]
        #           "chunked_value": true
        #         }
        #         {
        #           "values": ["d"]
        #           "resume_token": "Zx1B..."
        #         }
        #
        #     This sequence of `PartialResultSet`s encodes two rows, one
        #     containing the field value `"Hello"`, and a second containing the
        #     field value `"World" = "W" + "orl" + "d"`.
        #
        #     Not all `PartialResultSet`s contain a `resume_token`. Execution can only be
        #     resumed from a previously yielded `resume_token`. For the above sequence of
        #     `PartialResultSet`s, resuming the query with `"resume_token": "Af65..."`
        #     yields results from the `PartialResultSet` with value "orl".
        # @!attribute [rw] chunked_value
        #   @return [::Boolean]
        #     If true, then the final value in
        #     {::Google::Cloud::Spanner::V1::PartialResultSet#values values} is chunked, and must be
        #     combined with more values from subsequent `PartialResultSet`s to obtain a
        #     complete field value.
        # @!attribute [rw] resume_token
        #   @return [::String]
        #     Streaming calls might be interrupted for a variety of reasons, such
        #     as TCP connection loss. If this occurs, the stream of results can
        #     be resumed by re-sending the original request and including
        #     `resume_token`. Note that executing any other transaction in the
        #     same session invalidates the token.
        # @!attribute [rw] stats
        #   @return [::Google::Cloud::Spanner::V1::ResultSetStats]
        #     Query plan and execution statistics for the statement that produced this
        #     streaming result set. These can be requested by setting
        #     {::Google::Cloud::Spanner::V1::ExecuteSqlRequest#query_mode ExecuteSqlRequest.query_mode}
        #     and are sent only once with the last response in the stream. This field is
        #     also present in the last response for DML statements.
        # @!attribute [rw] precommit_token
        #   @return [::Google::Cloud::Spanner::V1::MultiplexedSessionPrecommitToken]
        #     Optional. A precommit token is included if the read-write transaction
        #     has multiplexed sessions enabled. Pass the precommit token with the highest
        #     sequence number from this transaction attempt to the
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#commit Commit} request for this transaction.
        # @!attribute [rw] last
        #   @return [::Boolean]
        #     Optional. Indicates whether this is the last `PartialResultSet` in the
        #     stream. The server might optionally set this field. Clients shouldn't rely
        #     on this field being set in all cases.
        class PartialResultSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata about a {::Google::Cloud::Spanner::V1::ResultSet ResultSet} or
        # {::Google::Cloud::Spanner::V1::PartialResultSet PartialResultSet}.
        # @!attribute [rw] row_type
        #   @return [::Google::Cloud::Spanner::V1::StructType]
        #     Indicates the field names and types for the rows in the result
        #     set. For example, a SQL query like `"SELECT UserId, UserName FROM
        #     Users"` could return a `row_type` value like:
        #
        #         "fields": [
        #           { "name": "UserId", "type": { "code": "INT64" } },
        #           { "name": "UserName", "type": { "code": "STRING" } },
        #         ]
        # @!attribute [rw] transaction
        #   @return [::Google::Cloud::Spanner::V1::Transaction]
        #     If the read or SQL query began a transaction as a side-effect, the
        #     information about the new transaction is yielded here.
        # @!attribute [rw] undeclared_parameters
        #   @return [::Google::Cloud::Spanner::V1::StructType]
        #     A SQL query can be parameterized. In PLAN mode, these parameters can be
        #     undeclared. This indicates the field names and types for those undeclared
        #     parameters in the SQL query. For example, a SQL query like `"SELECT * FROM
        #     Users where UserId = @userId and UserName = @userName "` could return a
        #     `undeclared_parameters` value like:
        #
        #         "fields": [
        #           { "name": "UserId", "type": { "code": "INT64" } },
        #           { "name": "UserName", "type": { "code": "STRING" } },
        #         ]
        class ResultSetMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Additional statistics about a {::Google::Cloud::Spanner::V1::ResultSet ResultSet} or
        # {::Google::Cloud::Spanner::V1::PartialResultSet PartialResultSet}.
        # @!attribute [rw] query_plan
        #   @return [::Google::Cloud::Spanner::V1::QueryPlan]
        #     {::Google::Cloud::Spanner::V1::QueryPlan QueryPlan} for the query associated with this
        #     result.
        # @!attribute [rw] query_stats
        #   @return [::Google::Protobuf::Struct]
        #     Aggregated statistics from the execution of the query. Only present when
        #     the query is profiled. For example, a query could return the statistics as
        #     follows:
        #
        #         {
        #           "rows_returned": "3",
        #           "elapsed_time": "1.22 secs",
        #           "cpu_time": "1.19 secs"
        #         }
        # @!attribute [rw] row_count_exact
        #   @return [::Integer]
        #     Standard DML returns an exact count of rows that were modified.
        #
        #     Note: The following fields are mutually exclusive: `row_count_exact`, `row_count_lower_bound`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] row_count_lower_bound
        #   @return [::Integer]
        #     Partitioned DML doesn't offer exactly-once semantics, so it
        #     returns a lower bound of the rows modified.
        #
        #     Note: The following fields are mutually exclusive: `row_count_lower_bound`, `row_count_exact`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class ResultSetStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
