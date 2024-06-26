# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/accounts/v1beta/programs.proto for package 'google.shopping.merchant.accounts.v1beta'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/merchant/accounts/v1beta/programs_pb'

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module ProgramsService
            # Service for program management.
            #
            # Programs provide a mechanism for adding functionality to merchant accounts. A
            # typical example of this is the [Free product
            # listings](https://support.google.com/merchants/topic/9240261?ref_topic=7257954,7259405,&sjid=796648681813264022-EU)
            # program, which enables products from a merchant's store to be shown across
            # Google for free.
            #
            # This service exposes methods to retrieve a merchant's
            # participation in all available programs, in addition to methods for
            # explicitly enabling or disabling participation in each program.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.accounts.v1beta.ProgramsService'

              # Retrieves the specified program for the account.
              rpc :GetProgram, ::Google::Shopping::Merchant::Accounts::V1beta::GetProgramRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Program
              # Retrieves all programs for the account.
              rpc :ListPrograms, ::Google::Shopping::Merchant::Accounts::V1beta::ListProgramsRequest, ::Google::Shopping::Merchant::Accounts::V1beta::ListProgramsResponse
              # Enable participation in the specified program for the account. Executing
              # this method requires admin access.
              rpc :EnableProgram, ::Google::Shopping::Merchant::Accounts::V1beta::EnableProgramRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Program
              # Disable participation in the specified program for the account. Executing
              # this method requires admin access.
              rpc :DisableProgram, ::Google::Shopping::Merchant::Accounts::V1beta::DisableProgramRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Program
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
