
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pepper-sensors-py, pepper-bringup, catkin, pepper-description }:
buildRosPackage {
  pname = "ros-kinetic-pepper-robot";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-naoqi/pepper_robot-release/archive/release/kinetic/pepper_robot/0.1.10-0.tar.gz;
    sha256 = "c04062a6eeff1398dd0932c7a5051716a1e16d4ea3610a7057f0231d46293a60";
  };

  propagatedBuildInputs = [ pepper-sensors-py pepper-bringup pepper-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pepper_robot package'';
    license = with lib.licenses; [ asl20 ];
  };
}
