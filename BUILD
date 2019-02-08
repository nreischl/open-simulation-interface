package(default_visibility = ["//visibility:public"])

load(":open_simulation_interface.bzl", "generate_osi_version_proto")
generate_osi_version_proto(name = "osi_version", major = "3", minor = "0", patch = "1")

cc_library(
    name = "osi3",
    deps = [":open_simulation_interface"],
    visibility = ["//visibility:public"]
)

cc_proto_library(
    name = "open_simulation_interface",
    deps = [
        ":osi_datarecording_proto"
    ]
)

proto_library(
    name = "osi_environment_proto",
    srcs = ["osi_environment.proto"]
)

proto_library(
    name = "osi_version_proto",
    srcs = [":osi_version"],
    deps = ["@com_google_protobuf//:descriptor_proto"]
)

proto_library(
    name = "osi_common_proto",
    srcs = ["osi_common.proto"],
)

proto_library(
    name = "osi_sensorviewconfiguration_proto",
    srcs = ["osi_sensorviewconfiguration.proto"],
    deps = [
        ":osi_version_proto",
        ":osi_common_proto"
    ]
)

proto_library(
    name = "osi_featuredata_proto",
    srcs = ["osi_featuredata.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_version_proto"
    ]
)

proto_library(
    name = "osi_lane_proto",
    srcs = ["osi_lane.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_trafficlight_proto",
    srcs = ["osi_trafficlight.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_occupant_proto",
    srcs = ["osi_occupant.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_hostvehicledata_proto",
    srcs = ["osi_hostvehicledata.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_object_proto",
    srcs = ["osi_object.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_trafficsign_proto",
    srcs = ["osi_trafficsign.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_sensorspecific_proto",
    srcs = ["osi_sensorspecific.proto"],
    deps = [":osi_common_proto"]
)

proto_library(
    name = "osi_roadmarking_proto",
    srcs = ["osi_roadmarking.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_trafficsign_proto"
    ]
)

proto_library(
    name = "osi_detectedobject_proto",
    srcs = ["osi_detectedobject.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_object_proto",
        ":osi_sensorspecific_proto"
    ]
)

proto_library(
    name = "osi_detectedtrafficsign_proto",
    srcs = ["osi_detectedtrafficsign.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_trafficsign_proto",
        ":osi_detectedobject_proto"
    ]
)

proto_library(
    name = "osi_detectedtrafficlight_proto",
    srcs = ["osi_detectedtrafficlight.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_trafficlight_proto",
        ":osi_detectedobject_proto"
    ]
)

proto_library(
    name = "osi_detectedroadmarking_proto",
    srcs = ["osi_detectedroadmarking.proto"],
    deps = [
        ":osi_common_proto",
        ":osi_roadmarking_proto",
        ":osi_detectedobject_proto"
    ]
)

proto_library(
    name = "osi_detectedoccupant_proto",
    srcs = ["osi_detectedoccupant.proto"],
    deps = [
        ":osi_occupant_proto",
        ":osi_detectedobject_proto"
    ]
)

proto_library(
    name = "osi_detectedlane_proto",
    srcs = ["osi_detectedlane.proto"],
    deps = [
        ":osi_lane_proto",
        ":osi_detectedobject_proto"
    ]
)

proto_library(
    name = "osi_groundtruth_proto",
    srcs = ["osi_groundtruth.proto"],
    deps = [
        ":osi_version_proto",
        ":osi_common_proto",
        ":osi_environment_proto",
        ":osi_trafficsign_proto",
        ":osi_trafficlight_proto",
        ":osi_roadmarking_proto",
        ":osi_lane_proto",
        ":osi_object_proto",
        ":osi_occupant_proto"
    ]
)

proto_library(
    name = "osi_sensorview_proto",
    srcs = ["osi_sensorview.proto"],
    deps = [
        ":osi_version_proto",
        ":osi_common_proto",
        ":osi_groundtruth_proto",
        ":osi_sensorviewconfiguration_proto",
        ":osi_hostvehicledata_proto"
    ]
)

proto_library(
    name = "osi_sensordata_proto",
    srcs = ["osi_sensordata.proto"],
    deps = [
        ":osi_version_proto",
        ":osi_common_proto",
        ":osi_detectedtrafficsign_proto",
        ":osi_detectedtrafficlight_proto",
        ":osi_detectedroadmarking_proto",
        ":osi_detectedlane_proto",
        ":osi_detectedobject_proto",
        ":osi_detectedoccupant_proto",
        ":osi_sensorview_proto",
        ":osi_featuredata_proto"
    ]
)

proto_library(
    name = "osi_datarecording_proto",
    srcs = ["osi_datarecording.proto"],
    deps = [
        ":osi_sensordata_proto"
    ]
)
