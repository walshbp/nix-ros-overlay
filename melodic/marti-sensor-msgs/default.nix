
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-sensor-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_sensor_msgs/0.8.0-0.tar.gz;
    sha256 = "9838c4fcde586606bd556cfcb68ec801885228022c4b8e8bd721dbf18f7d88ea";
  };

  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin message-generation geometry-msgs ];

  meta = {
    description = ''marti_sensor_msgs'';
    #license = lib.licenses.BSD;
  };
}