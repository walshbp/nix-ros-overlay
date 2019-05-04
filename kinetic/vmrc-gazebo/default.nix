
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, wamv-gazebo, gazebo-dev, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-vmrc-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/vmrc-release/archive/release/kinetic/vmrc_gazebo/0.3.2-0.tar.gz;
    sha256 = "8f40b41ec1920e3aa967720e169bda1b4d4bd4dd6f9a6bb663cfb1cabd62ea2d";
  };

  buildInputs = [ gazebo-ros wamv-gazebo gazebo-dev std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros wamv-gazebo gazebo-dev std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
