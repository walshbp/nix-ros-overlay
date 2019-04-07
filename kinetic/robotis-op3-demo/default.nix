
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-ball-detector, catkin, op3-demo, op3-bringup }:
buildRosPackage {
  pname = "ros-kinetic-robotis-op3-demo";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/robotis_op3_demo/0.1.0-0.tar.gz;
    sha256 = "14cb5527bdbc4a988d196e7325ace9fa85a861b1f319f2fad0af0c0c0409e4a3";
  };

  propagatedBuildInputs = [ op3-ball-detector op3-demo op3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the robotis_op3_demo (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}