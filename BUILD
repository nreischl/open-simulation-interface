package(default_visibility = ["//visibility:public"])
load("@rules_proto//cpp:cpp_proto_compile.bzl", "cpp_proto_compile")
load(":open_simulation_interface.bzl", "generate_osi_version_proto")

generate_osi_version_proto(name = "osi_version", major = "3", minor = "1", patch = "2")

cc_proto_library(
    name = "osi3",
    deps = [":osi_datarecording_proto"],
    visibility = ["//visibility:public"]
)

cc_library(
    name = "osi3_static",
    srcs = ["osi3_cpp_proto"],
    hdrs = ["osi3_cpp_proto"],
    includes = ["osi3_cpp_proto"],
    deps = ["@com_google_protobuf//:protobuf"],
    linkstatic = True,
    visibility = ["//visibility:public"]
)

cc_binary(
    name = "libosi3.so",
    srcs = ["osi3_cpp_proto"],
    includes = ["osi3_cpp_proto"],
    deps = ["@com_google_protobuf//:protobuf"],
    linkopts = ["-shared"],
    linkstatic = True,
    visibility = ["//visibility:public"]
)

cpp_proto_compile(
    name = "osi3_cpp_proto",
    deps = [
        ":osi_common_proto",
        ":osi_datarecording_proto",
        ":osi_detectedlane_proto",
        ":osi_detectedobject_proto",
        ":osi_detectedoccupant_proto",
        ":osi_detectedroadmarking_proto",
        ":osi_detectedtrafficlight_proto",
        ":osi_detectedtrafficsign_proto",
        ":osi_environment_proto",
        ":osi_featuredata_proto",
        ":osi_groundtruth_proto",
        ":osi_hostvehicledata_proto",
        ":osi_lane_proto",
        ":osi_object_proto",
        ":osi_occupant_proto",
        ":osi_roadmarking_proto",
        ":osi_sensordata_proto",
        ":osi_sensorspecific_proto",
        ":osi_sensorview_proto",
        ":osi_sensorviewconfiguration_proto",
        ":osi_trafficlight_proto",
        ":osi_trafficsign_proto",
        ":osi_version_proto",
    ],
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
