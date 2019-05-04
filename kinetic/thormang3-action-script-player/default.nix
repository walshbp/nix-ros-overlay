
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, libyamlcpp, catkin, robotis-controller-msgs, thormang3-action-module-msgs, roslib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-action-script-player";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_action_script_player/0.3.0-0.tar.gz;
    sha256 = "8d1742395fe6ebbe154b03f8b5da56774772996177cc5f089df2eda06dee945c";
  };

  buildInputs = [ boost libyamlcpp roscpp thormang3-action-module-msgs roslib std-msgs robotis-controller-msgs ];
  propagatedBuildInputs = [ boost libyamlcpp roscpp thormang3-action-module-msgs roslib std-msgs robotis-controller-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a action script playing for thormang3.
    It can be used with thormang3_action_module and ros_mpg321_player.'';
    license = with lib.licenses; [ asl20 ];
  };
}
