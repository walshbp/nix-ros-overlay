
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rosconsole, boost, sensor-msgs, catkin, pythonPackages, rostest, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/cv_bridge/1.13.0-0.tar.gz;
    sha256 = "fb812741718a40399f538eaef7c887b79004afcdbe0271b3258c5c8ee9c55023";
  };

  checkInputs = [ rostest pythonPackages.numpy ];
  propagatedBuildInputs = [ python rosconsole boost sensor-msgs opencv3 pythonPackages.opencv3 ];
  nativeBuildInputs = [ python rosconsole boost sensor-msgs catkin opencv3 pythonPackages.opencv3 ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    #license = lib.licenses.BSD;
  };
}