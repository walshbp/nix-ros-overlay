
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, serial, catkin, message-generation, message-runtime, rospy, std-msgs, dynamic-reconfigure, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teraranger-array";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/Terabee/teraranger_array-release/archive/release/kinetic/teraranger_array/2.0.0-1.tar.gz;
    sha256 = "67cef9d3e64f2d16a34522cd17429e9829e5342d6f043fcbf2d4126e15326ebf";
  };

  buildInputs = [ sensor-msgs serial rospy message-generation dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs serial rospy message-runtime dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for multi-sensor arrays from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
