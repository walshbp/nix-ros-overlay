
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, op3-offset-tuner-msgs, libyamlcpp, op3-base-module, catkin, robotis-controller, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-server";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_offset_tuner_server/0.2.2-0.tar.gz;
    sha256 = "58b43b0685e0d6fe1b2476e39feaaacd7220e146fe5227547e00fa201fb0a602";
  };

  buildInputs = [ dynamixel-sdk op3-base-module libyamlcpp op3-offset-tuner-msgs robotis-controller std-msgs roscpp ];
  propagatedBuildInputs = [ dynamixel-sdk op3-base-module libyamlcpp op3-offset-tuner-msgs robotis-controller std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The offset_tuner_server package'';
    license = with lib.licenses; [ asl20 ];
  };
}
