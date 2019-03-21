
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, catkin, roscpp, diagnostic-updater, message-generation, message-runtime, socketcan-interface, std-msgs, roslib, canopen-master }:
buildRosPackage {
  pname = "ros-melodic-canopen-chain-node";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_chain_node/0.8.0-0.tar.gz;
    sha256 = "38578e51fcb8c8cf7e3de40d3febe7e318244f107b56346a984c7e5fe1cf9639";
  };

  propagatedBuildInputs = [ std-srvs pluginlib roscpp diagnostic-updater message-runtime socketcan-interface std-msgs roslib canopen-master ];
  nativeBuildInputs = [ std-srvs pluginlib catkin roscpp diagnostic-updater message-generation socketcan-interface std-msgs roslib canopen-master ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    #license = lib.licenses.LGPLv3;
  };
}