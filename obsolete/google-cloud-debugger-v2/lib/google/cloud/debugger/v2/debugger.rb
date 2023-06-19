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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/debugger/v2/version"

require "google/cloud/debugger/v2/debugger/credentials"
require "google/cloud/debugger/v2/debugger/client"
require "google/cloud/debugger/v2/debugger/rest"

module Google
  module Cloud
    module Debugger
      module V2
        ##
        # The Debugger service provides the API that allows users to collect run-time
        # information from a running application, without stopping or slowing it down
        # and without modifying its state.  An application may include one or
        # more replicated processes performing the same work.
        #
        # A debugged application is represented using the Debuggee concept. The
        # Debugger service provides a way to query for available debuggees, but does
        # not provide a way to create one.  A debuggee is created using the Controller
        # service, usually by running a debugger agent with the application.
        #
        # The Debugger service enables the client to set one or more Breakpoints on a
        # Debuggee and collect the results of the set Breakpoints.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/debugger/v2/debugger"
        #     client = ::Google::Cloud::Debugger::V2::Debugger::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/debugger/v2/debugger/rest"
        #     client = ::Google::Cloud::Debugger::V2::Debugger::Rest::Client.new
        #
        module Debugger
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "debugger", "helpers.rb"
require "google/cloud/debugger/v2/debugger/helpers" if ::File.file? helper_path