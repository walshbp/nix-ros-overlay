
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-korg-nanokontrol";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/korg_nanokontrol-release/archive/release/kinetic/korg_nanokontrol/0.1.2-0.tar.gz;
    sha256 = "e69b88fc52d1c76b2b60cb90588e3247ad4725c6229075d5fd539b0ea0962614";
  };

  propagatedBuildInputs = [ rospy sensor-msgs pythonPackages.pygame ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver to use the Kork NanoKontrol MIDI device as a joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
