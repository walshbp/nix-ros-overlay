
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-device-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_device_msgs/0.9.0-1.tar.gz;
    sha256 = "031ce1fa94439aed61539c95b28b5f5858d05c678e9820be8708f75187979356";
  };

  buildInputs = [ std-msgs message-generation rocon-std-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
