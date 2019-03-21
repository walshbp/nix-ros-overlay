
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, catkin, rosbaglive, easy-markers, joy-listener }:
buildRosPackage {
  pname = "ros-melodic-wu-ros-tools";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/wu_ros_tools/0.2.4-0.tar.gz;
    sha256 = "c27fe7753efad044328dfe5dc67e04deb7ea2a9d69b54b1fe34bdcbdc82d7335";
  };

  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    #license = lib.licenses.BSD;
  };
}