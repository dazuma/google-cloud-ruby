# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/fleetengine/delivery/v1/task_tracking_info.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/maps/fleetengine/delivery/v1/common_pb'
require 'google/maps/fleetengine/delivery/v1/delivery_vehicles_pb'
require 'google/maps/fleetengine/delivery/v1/tasks_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/latlng_pb'


descriptor_data = "\n<google/maps/fleetengine/delivery/v1/task_tracking_info.proto\x12\x1cmaps.fleetengine.delivery.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/maps/fleetengine/delivery/v1/common.proto\x1a;google/maps/fleetengine/delivery/v1/delivery_vehicles.proto\x1a/google/maps/fleetengine/delivery/v1/tasks.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x18google/type/latlng.proto\"\xae\x07\n\x10TaskTrackingInfo\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x18\n\x0btracking_id\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12O\n\x10vehicle_location\x18\x03 \x01(\x0b\x32\x35.maps.fleetengine.delivery.v1.DeliveryVehicleLocation\x12\x32\n\x15route_polyline_points\x18\x04 \x03(\x0b\x32\x13.google.type.LatLng\x12\x39\n\x14remaining_stop_count\x18\x05 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12\x46\n!remaining_driving_distance_meters\x18\x06 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12:\n\x16\x65stimated_arrival_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x42\n\x1e\x65stimated_task_completion_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x37\n\x05state\x18\x0b \x01(\x0e\x32(.maps.fleetengine.delivery.v1.Task.State\x12\x44\n\x0ctask_outcome\x18\t \x01(\x0e\x32..maps.fleetengine.delivery.v1.Task.TaskOutcome\x12\x35\n\x11task_outcome_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12I\n\x10planned_location\x18\n \x01(\x0b\x32*.maps.fleetengine.delivery.v1.LocationInfoB\x03\xe0\x41\x05\x12\x44\n\x12target_time_window\x18\r \x01(\x0b\x32(.maps.fleetengine.delivery.v1.TimeWindow\x12?\n\nattributes\x18\x0e \x03(\x0b\x32+.maps.fleetengine.delivery.v1.TaskAttribute:b\xea\x41_\n+fleetengine.googleapis.com/TaskTrackingInfo\x12\x30providers/{provider}/taskTrackingInfo/{tracking}B\x8a\x02\n\'com.google.maps.fleetengine.delivery.v1B\x15TaskTrackingInfoProtoP\x01ZIcloud.google.com/go/maps/fleetengine/delivery/apiv1/deliverypb;deliverypb\xa2\x02\x04\x43\x46\x45\x44\xaa\x02#Google.Maps.FleetEngine.Delivery.V1\xca\x02#Google\\Maps\\FleetEngine\\Delivery\\V1\xea\x02\'Google::Maps::FleetEngine::Delivery::V1b\x06proto3"

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
    ["maps.fleetengine.delivery.v1.DeliveryVehicleLocation", "google/maps/fleetengine/delivery/v1/common.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.protobuf.Int32Value", "google/protobuf/wrappers.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["maps.fleetengine.delivery.v1.LocationInfo", "google/maps/fleetengine/delivery/v1/delivery_vehicles.proto"],
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
  module Maps
    module FleetEngine
      module Delivery
        module V1
          TaskTrackingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.TaskTrackingInfo").msgclass
        end
      end
    end
  end
end
