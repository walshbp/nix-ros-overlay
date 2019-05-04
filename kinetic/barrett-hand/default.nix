
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bhand-controller, rqt-bhand, catkin }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/kinetic/barrett_hand/0.1.2-0.tar.gz;
    sha256 = "ef33e29fad5ff452ce1315dae181e2ffeb417d1e0d66452a29a40d9f0edc2ad8";
  };

  propagatedBuildInputs = [ rqt-bhand bhand-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The barrett_hand package contains all the components to control the Barrett Hand'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
