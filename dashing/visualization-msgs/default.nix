
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-visualization-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/visualization_msgs/0.7.0-1.tar.gz;
    sha256 = "2921b317156c745bf41c6d16d3a96bd19e5c4bdb69aa93b9e05eedb88eb8792a";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs geometry-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some visualization and interaction related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
