
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, nav-msgs, rospy, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-automatic-parking";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_automatic_parking/1.1.0-0.tar.gz;
    sha256 = "446f54e7e025a15b810c4a99aaf5a74252ef8965e6b267e09a85bb827042750d";
  };

  buildInputs = [ sensor-msgs nav-msgs rospy std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs nav-msgs rospy std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for turtlebot3 automatic_parking. You need a reflective tape and real robots. You can see parking spot using this pacakge on rviz.'';
    license = with lib.licenses; [ asl20 ];
  };
}
