
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, rosconsole, rospy, diagnostic-msgs, tf, geometry-msgs, realtime-tools, message-generation, message-runtime, angles, pr2-msgs, pr2-controllers-msgs, pr2-mechanism-msgs, catkin, robot-mechanism-controllers, nav-msgs, std-msgs, roscpp, visualization-msgs, pr2-mechanism-model, pr2-controller-interface, pluginlib, control-toolbox, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_mechanism_controllers/1.10.14-0.tar.gz;
    sha256 = "9d2484a38c6db5057f097dec74cbd66a8d8ba01b1c7050f82f16f56f2d77be94";
  };

  buildInputs = [ filters rosconsole rospy diagnostic-msgs tf geometry-msgs realtime-tools message-generation angles pr2-msgs pr2-controllers-msgs pr2-mechanism-msgs robot-mechanism-controllers nav-msgs std-msgs roscpp visualization-msgs pr2-mechanism-model pr2-controller-interface pluginlib control-toolbox diagnostic-updater ];
  propagatedBuildInputs = [ filters rosconsole rospy diagnostic-msgs tf geometry-msgs realtime-tools message-runtime angles pr2-msgs pr2-controllers-msgs pr2-mechanism-msgs robot-mechanism-controllers nav-msgs std-msgs roscpp visualization-msgs pr2-mechanism-model pr2-controller-interface pluginlib control-toolbox diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism_controllers package contains realtime
    controllers that are meant for specific mechanisms of the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
