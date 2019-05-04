
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fiducial-msgs";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_msgs/0.10.0-0.tar.gz;
    sha256 = "9685a7b69d09fb1946cda3f341a344057a8f4d6665ebaa61b4bb2e6035380146";
  };

  buildInputs = [ sensor-msgs message-generation std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing message definitions for fiducials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
