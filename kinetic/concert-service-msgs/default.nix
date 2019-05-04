
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rocon-service-pair-msgs, message-runtime, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-concert-service-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/concert_service_msgs/0.9.0-1.tar.gz;
    sha256 = "01acfd24219f7e66b3dc5042dd6edc20d5ca63e2ad053892e345e8979e61c619";
  };

  buildInputs = [ message-generation rocon-service-pair-msgs rocon-std-msgs ];
  propagatedBuildInputs = [ rocon-service-pair-msgs message-runtime rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by official rocon services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
