
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_msgs/0.1.0-0.tar.gz;
    sha256 = "deaafb06cb77f01a7557b79cf20f1056487d7340ccd234399c210fe0f423cda0";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for DrRobot's Jaguar 4X4'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
