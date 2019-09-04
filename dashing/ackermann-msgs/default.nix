
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-ackermann-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/dashing/ackermann_msgs/2.0.2-1.tar.gz;
    sha256 = "289c876121567876a2fdc9245efbd562c70cf2382a0b9f114189a1eb74ae7a74";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''ROS2 messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
