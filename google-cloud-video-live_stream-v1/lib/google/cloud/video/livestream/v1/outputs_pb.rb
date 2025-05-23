# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/livestream/v1/outputs.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/type/datetime_pb'


descriptor_data = "\n.google/cloud/video/livestream/v1/outputs.proto\x12 google.cloud.video.livestream.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1agoogle/type/datetime.proto\"\x87\x02\n\x10\x45lementaryStream\x12\x0b\n\x03key\x18\x04 \x01(\t\x12\x45\n\x0cvideo_stream\x18\x01 \x01(\x0b\x32-.google.cloud.video.livestream.v1.VideoStreamH\x00\x12\x45\n\x0c\x61udio_stream\x18\x02 \x01(\x0b\x32-.google.cloud.video.livestream.v1.AudioStreamH\x00\x12\x43\n\x0btext_stream\x18\x03 \x01(\x0b\x32,.google.cloud.video.livestream.v1.TextStreamH\x00\x42\x13\n\x11\x65lementary_stream\"\xab\x01\n\tMuxStream\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x11\n\tcontainer\x18\x03 \x01(\t\x12\x1a\n\x12\x65lementary_streams\x18\x04 \x03(\t\x12K\n\x10segment_settings\x18\x05 \x01(\x0b\x32\x31.google.cloud.video.livestream.v1.SegmentSettings\x12\x15\n\rencryption_id\x18\x06 \x01(\t\"\xce\x02\n\x08Manifest\x12\x11\n\tfile_name\x18\x01 \x01(\t\x12J\n\x04type\x18\x02 \x01(\x0e\x32\x37.google.cloud.video.livestream.v1.Manifest.ManifestTypeB\x03\xe0\x41\x02\x12\x18\n\x0bmux_streams\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12\x19\n\x11max_segment_count\x18\x04 \x01(\x05\x12\x38\n\x15segment_keep_duration\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12 \n\x18use_timecode_as_timeline\x18\x06 \x01(\x08\x12\x10\n\x03key\x18\x07 \x01(\tB\x03\xe0\x41\x01\"@\n\x0cManifestType\x12\x1d\n\x19MANIFEST_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03HLS\x10\x01\x12\x08\n\x04\x44\x41SH\x10\x02\"\xe3\x01\n\x0bSpriteSheet\x12\x0e\n\x06\x66ormat\x18\x01 \x01(\t\x12\x18\n\x0b\x66ile_prefix\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12 \n\x13sprite_width_pixels\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\x12!\n\x14sprite_height_pixels\x18\x04 \x01(\x05\x42\x03\xe0\x41\x02\x12\x14\n\x0c\x63olumn_count\x18\x05 \x01(\x05\x12\x11\n\trow_count\x18\x06 \x01(\x05\x12+\n\x08interval\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x0f\n\x07quality\x18\x08 \x01(\x05\"\xc5\x03\n\x13PreprocessingConfig\x12J\n\x05\x61udio\x18\x01 \x01(\x0b\x32;.google.cloud.video.livestream.v1.PreprocessingConfig.Audio\x12H\n\x04\x63rop\x18\x02 \x01(\x0b\x32:.google.cloud.video.livestream.v1.PreprocessingConfig.Crop\x12\x46\n\x03pad\x18\x03 \x01(\x0b\x32\x39.google.cloud.video.livestream.v1.PreprocessingConfig.Pad\x1a\x15\n\x05\x41udio\x12\x0c\n\x04lufs\x18\x01 \x01(\x01\x1a\\\n\x04\x43rop\x12\x12\n\ntop_pixels\x18\x01 \x01(\x05\x12\x15\n\rbottom_pixels\x18\x02 \x01(\x05\x12\x13\n\x0bleft_pixels\x18\x03 \x01(\x05\x12\x14\n\x0cright_pixels\x18\x04 \x01(\x05\x1a[\n\x03Pad\x12\x12\n\ntop_pixels\x18\x01 \x01(\x05\x12\x15\n\rbottom_pixels\x18\x02 \x01(\x05\x12\x13\n\x0bleft_pixels\x18\x03 \x01(\x05\x12\x14\n\x0cright_pixels\x18\x04 \x01(\x05\"\xff\x03\n\x0bVideoStream\x12O\n\x04h264\x18\x14 \x01(\x0b\x32?.google.cloud.video.livestream.v1.VideoStream.H264CodecSettingsH\x00\x1a\x8c\x03\n\x11H264CodecSettings\x12\x14\n\x0cwidth_pixels\x18\x01 \x01(\x05\x12\x15\n\rheight_pixels\x18\x02 \x01(\x05\x12\x17\n\nframe_rate\x18\x03 \x01(\x01\x42\x03\xe0\x41\x02\x12\x18\n\x0b\x62itrate_bps\x18\x04 \x01(\x05\x42\x03\xe0\x41\x02\x12\x16\n\x0e\x61llow_open_gop\x18\x06 \x01(\x08\x12\x19\n\x0fgop_frame_count\x18\x07 \x01(\x05H\x00\x12\x31\n\x0cgop_duration\x18\x08 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00\x12\x15\n\rvbv_size_bits\x18\t \x01(\x05\x12\x19\n\x11vbv_fullness_bits\x18\n \x01(\x05\x12\x15\n\rentropy_coder\x18\x0b \x01(\t\x12\x11\n\tb_pyramid\x18\x0c \x01(\x08\x12\x15\n\rb_frame_count\x18\r \x01(\x05\x12\x13\n\x0b\x61q_strength\x18\x0e \x01(\x01\x12\x0f\n\x07profile\x18\x0f \x01(\t\x12\x0c\n\x04tune\x18\x10 \x01(\tB\n\n\x08gop_modeB\x10\n\x0e\x63odec_settings\"\xec\x02\n\x0b\x41udioStream\x12\x10\n\x08transmux\x18\x08 \x01(\x08\x12\r\n\x05\x63odec\x18\x01 \x01(\t\x12\x18\n\x0b\x62itrate_bps\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12\x15\n\rchannel_count\x18\x03 \x01(\x05\x12\x16\n\x0e\x63hannel_layout\x18\x04 \x03(\t\x12K\n\x07mapping\x18\x05 \x03(\x0b\x32:.google.cloud.video.livestream.v1.AudioStream.AudioMapping\x12\x19\n\x11sample_rate_hertz\x18\x06 \x01(\x05\x1a\x8a\x01\n\x0c\x41udioMapping\x12\x16\n\tinput_key\x18\x06 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0binput_track\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1a\n\rinput_channel\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1b\n\x0eoutput_channel\x18\x04 \x01(\x05\x42\x03\xe0\x41\x02\x12\x0f\n\x07gain_db\x18\x05 \x01(\x01\" \n\nTextStream\x12\x12\n\x05\x63odec\x18\x01 \x01(\tB\x03\xe0\x41\x02\"F\n\x0fSegmentSettings\x12\x33\n\x10segment_duration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xac\x02\n\x0eTimecodeConfig\x12O\n\x06source\x18\x01 \x01(\x0e\x32?.google.cloud.video.livestream.v1.TimecodeConfig.TimecodeSource\x12/\n\nutc_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00\x12*\n\ttime_zone\x18\x03 \x01(\x0b\x32\x15.google.type.TimeZoneH\x00\"]\n\x0eTimecodeSource\x12\x1f\n\x1bTIMECODE_SOURCE_UNSPECIFIED\x10\x00\x12\x13\n\x0fMEDIA_TIMESTAMP\x10\x01\x12\x15\n\x11\x45MBEDDED_TIMECODE\x10\x02\x42\r\n\x0btime_offsetB\xe9\x01\n$com.google.cloud.video.livestream.v1B\x0cOutputsProtoP\x01ZDcloud.google.com/go/video/livestream/apiv1/livestreampb;livestreampb\xaa\x02 Google.Cloud.Video.LiveStream.V1\xca\x02 Google\\Cloud\\Video\\LiveStream\\V1\xea\x02$Google::Cloud::Video::LiveStream::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.type.TimeZone", "google/type/datetime.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Video
      module LiveStream
        module V1
          ElementaryStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.ElementaryStream").msgclass
          MuxStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.MuxStream").msgclass
          Manifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Manifest").msgclass
          Manifest::ManifestType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Manifest.ManifestType").enummodule
          SpriteSheet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.SpriteSheet").msgclass
          PreprocessingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.PreprocessingConfig").msgclass
          PreprocessingConfig::Audio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.PreprocessingConfig.Audio").msgclass
          PreprocessingConfig::Crop = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.PreprocessingConfig.Crop").msgclass
          PreprocessingConfig::Pad = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.PreprocessingConfig.Pad").msgclass
          VideoStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoStream").msgclass
          VideoStream::H264CodecSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoStream.H264CodecSettings").msgclass
          AudioStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioStream").msgclass
          AudioStream::AudioMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioStream.AudioMapping").msgclass
          TextStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.TextStream").msgclass
          SegmentSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.SegmentSettings").msgclass
          TimecodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.TimecodeConfig").msgclass
          TimecodeConfig::TimecodeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.TimecodeConfig.TimecodeSource").enummodule
        end
      end
    end
  end
end
