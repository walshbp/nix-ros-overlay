
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, camera-calibration-parsers, image-transport, sensor-msgs, catkin, driver-base, timestamp-tools, diagnostic-updater, rostest, message-generation, message-runtime, rospy, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-wge100-camera";
  version = "1.8.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/wge100_camera/1.8.2-0.tar.gz;
    sha256 = "0bffb1f903aaabe5483af6ae742984f71fca7034f2babe311bc389c865a62295";
  };

  buildInputs = [ self-test camera-calibration-parsers image-transport sensor-msgs driver-base timestamp-tools diagnostic-updater rostest rospy message-generation dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ self-test camera-calibration-parsers image-transport sensor-msgs driver-base timestamp-tools diagnostic-updater rospy message-runtime dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node and assorted tools to provide access to the WGE100
    camera used in the forearms and the stereo cameras of the PR2
    robot.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
