
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xiaoqiang-freenect, xiaoqiang-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-navigation-example";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_navigation_example/0.0.12-0.tar.gz;
    sha256 = "b20088d0a643b12e5946f07af15a954273eca49a026c1ad78deaf0ce2917ccbb";
  };

  buildInputs = [ std-msgs xiaoqiang-msgs rospy xiaoqiang-freenect ];
  propagatedBuildInputs = [ std-msgs xiaoqiang-msgs rospy xiaoqiang-freenect ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang navigation stack examples'';
    license = with lib.licenses; [ mit ];
  };
}
