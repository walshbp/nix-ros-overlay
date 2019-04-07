
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, sensor-msgs, catkin, roscpp, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-operator";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_operator/0.3.2-0.tar.gz;
    sha256 = "3261678917200a28bf0bba2b608fb70aacd15feabf1c0747f1faa4f618083841";
  };

  buildInputs = [ costmap-2d message-generation sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ costmap-2d message-runtime sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The operator is a lightweight, purely reactive obstacle-avoidance
    module for mobile robots moving in a planar environment. The operator node
    works by evaluating a set of predefined motion primitives based on a local
    costmap and a desired direction. The best evaluated motion command will be
    send to the mobile base.'';
    #license = lib.licenses.GPLv3;
  };
}