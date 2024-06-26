# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/video/stitcher/v1/video_stitcher_service.proto for package 'google.cloud.video.stitcher.v1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/video/stitcher/v1/video_stitcher_service_pb'

module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          module VideoStitcherService
            # Video-On-Demand content stitching API allows you to insert ads
            # into (VoD) video on demand files. You will be able to render custom
            # scrubber bars with highlighted ads, enforce ad policies, allow
            # seamless playback and tracking on native players and monetize
            # content with any standard VMAP compliant ad server.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.video.stitcher.v1.VideoStitcherService'

              # Creates a new CDN key.
              rpc :CreateCdnKey, ::Google::Cloud::Video::Stitcher::V1::CreateCdnKeyRequest, ::Google::Longrunning::Operation
              # Lists all CDN keys in the specified project and location.
              rpc :ListCdnKeys, ::Google::Cloud::Video::Stitcher::V1::ListCdnKeysRequest, ::Google::Cloud::Video::Stitcher::V1::ListCdnKeysResponse
              # Returns the specified CDN key.
              rpc :GetCdnKey, ::Google::Cloud::Video::Stitcher::V1::GetCdnKeyRequest, ::Google::Cloud::Video::Stitcher::V1::CdnKey
              # Deletes the specified CDN key.
              rpc :DeleteCdnKey, ::Google::Cloud::Video::Stitcher::V1::DeleteCdnKeyRequest, ::Google::Longrunning::Operation
              # Updates the specified CDN key. Only update fields specified
              # in the call method body.
              rpc :UpdateCdnKey, ::Google::Cloud::Video::Stitcher::V1::UpdateCdnKeyRequest, ::Google::Longrunning::Operation
              # Creates a client side playback VOD session and returns the full
              # tracking and playback metadata of the session.
              rpc :CreateVodSession, ::Google::Cloud::Video::Stitcher::V1::CreateVodSessionRequest, ::Google::Cloud::Video::Stitcher::V1::VodSession
              # Returns the full tracking, playback metadata, and relevant ad-ops
              # logs for the specified VOD session.
              rpc :GetVodSession, ::Google::Cloud::Video::Stitcher::V1::GetVodSessionRequest, ::Google::Cloud::Video::Stitcher::V1::VodSession
              # Returns a list of detailed stitching information of the specified VOD
              # session.
              rpc :ListVodStitchDetails, ::Google::Cloud::Video::Stitcher::V1::ListVodStitchDetailsRequest, ::Google::Cloud::Video::Stitcher::V1::ListVodStitchDetailsResponse
              # Returns the specified stitching information for the specified VOD session.
              rpc :GetVodStitchDetail, ::Google::Cloud::Video::Stitcher::V1::GetVodStitchDetailRequest, ::Google::Cloud::Video::Stitcher::V1::VodStitchDetail
              # Return the list of ad tag details for the specified VOD session.
              rpc :ListVodAdTagDetails, ::Google::Cloud::Video::Stitcher::V1::ListVodAdTagDetailsRequest, ::Google::Cloud::Video::Stitcher::V1::ListVodAdTagDetailsResponse
              # Returns the specified ad tag detail for the specified VOD session.
              rpc :GetVodAdTagDetail, ::Google::Cloud::Video::Stitcher::V1::GetVodAdTagDetailRequest, ::Google::Cloud::Video::Stitcher::V1::VodAdTagDetail
              # Return the list of ad tag details for the specified live session.
              rpc :ListLiveAdTagDetails, ::Google::Cloud::Video::Stitcher::V1::ListLiveAdTagDetailsRequest, ::Google::Cloud::Video::Stitcher::V1::ListLiveAdTagDetailsResponse
              # Returns the specified ad tag detail for the specified live session.
              rpc :GetLiveAdTagDetail, ::Google::Cloud::Video::Stitcher::V1::GetLiveAdTagDetailRequest, ::Google::Cloud::Video::Stitcher::V1::LiveAdTagDetail
              # Creates a slate.
              rpc :CreateSlate, ::Google::Cloud::Video::Stitcher::V1::CreateSlateRequest, ::Google::Longrunning::Operation
              # Lists all slates in the specified project and location.
              rpc :ListSlates, ::Google::Cloud::Video::Stitcher::V1::ListSlatesRequest, ::Google::Cloud::Video::Stitcher::V1::ListSlatesResponse
              # Returns the specified slate.
              rpc :GetSlate, ::Google::Cloud::Video::Stitcher::V1::GetSlateRequest, ::Google::Cloud::Video::Stitcher::V1::Slate
              # Updates the specified slate.
              rpc :UpdateSlate, ::Google::Cloud::Video::Stitcher::V1::UpdateSlateRequest, ::Google::Longrunning::Operation
              # Deletes the specified slate.
              rpc :DeleteSlate, ::Google::Cloud::Video::Stitcher::V1::DeleteSlateRequest, ::Google::Longrunning::Operation
              # Creates a new live session.
              rpc :CreateLiveSession, ::Google::Cloud::Video::Stitcher::V1::CreateLiveSessionRequest, ::Google::Cloud::Video::Stitcher::V1::LiveSession
              # Returns the details for the specified live session.
              rpc :GetLiveSession, ::Google::Cloud::Video::Stitcher::V1::GetLiveSessionRequest, ::Google::Cloud::Video::Stitcher::V1::LiveSession
              # Registers the live config with the provided unique ID in
              # the specified region.
              rpc :CreateLiveConfig, ::Google::Cloud::Video::Stitcher::V1::CreateLiveConfigRequest, ::Google::Longrunning::Operation
              # Lists all live configs managed by the Video Stitcher that
              # belong to the specified project and region.
              rpc :ListLiveConfigs, ::Google::Cloud::Video::Stitcher::V1::ListLiveConfigsRequest, ::Google::Cloud::Video::Stitcher::V1::ListLiveConfigsResponse
              # Returns the specified live config managed by the Video
              # Stitcher service.
              rpc :GetLiveConfig, ::Google::Cloud::Video::Stitcher::V1::GetLiveConfigRequest, ::Google::Cloud::Video::Stitcher::V1::LiveConfig
              # Deletes the specified live config.
              rpc :DeleteLiveConfig, ::Google::Cloud::Video::Stitcher::V1::DeleteLiveConfigRequest, ::Google::Longrunning::Operation
              # Updates the specified LiveConfig. Only update fields specified
              # in the call method body.
              rpc :UpdateLiveConfig, ::Google::Cloud::Video::Stitcher::V1::UpdateLiveConfigRequest, ::Google::Longrunning::Operation
              # Registers the VOD config with the provided unique ID in
              # the specified region.
              rpc :CreateVodConfig, ::Google::Cloud::Video::Stitcher::V1::CreateVodConfigRequest, ::Google::Longrunning::Operation
              # Lists all VOD configs managed by the Video Stitcher API that
              # belong to the specified project and region.
              rpc :ListVodConfigs, ::Google::Cloud::Video::Stitcher::V1::ListVodConfigsRequest, ::Google::Cloud::Video::Stitcher::V1::ListVodConfigsResponse
              # Returns the specified VOD config managed by the Video
              # Stitcher API service.
              rpc :GetVodConfig, ::Google::Cloud::Video::Stitcher::V1::GetVodConfigRequest, ::Google::Cloud::Video::Stitcher::V1::VodConfig
              # Deletes the specified VOD config.
              rpc :DeleteVodConfig, ::Google::Cloud::Video::Stitcher::V1::DeleteVodConfigRequest, ::Google::Longrunning::Operation
              # Updates the specified VOD config. Only update fields specified
              # in the call method body.
              rpc :UpdateVodConfig, ::Google::Cloud::Video::Stitcher::V1::UpdateVodConfigRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
