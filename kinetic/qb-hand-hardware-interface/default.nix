
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, control-toolbox, catkin, transmission-interface, roscpp, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-hand-hardware-interface";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/kinetic/qb_hand_hardware_interface/2.0.0-0.tar.gz;
    sha256 = "ecf31b8cd017a56c0f2c4cb029dc1378a103ba89b26f0d7e7c0b84ca85edf8ef";
  };

  buildInputs = [ hardware-interface control-toolbox transmission-interface roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface control-toolbox transmission-interface roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
