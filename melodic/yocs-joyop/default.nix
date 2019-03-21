
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, joy, catkin, yocs-msgs, ecl-time, ecl-exceptions, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-joyop";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_joyop/0.8.2-0.tar.gz;
    sha256 = "e44414b71e3e378a83012afa9219ae787162895a4bab5bf7353528d07cc24ab7";
  };

  propagatedBuildInputs = [ ecl-exceptions geometry-msgs std-msgs sensor-msgs joy yocs-msgs roscpp ecl-time ];
  nativeBuildInputs = [ ecl-exceptions catkin std-msgs sensor-msgs roscpp yocs-msgs geometry-msgs ecl-time ];

  meta = {
    description = ''Joystick teleoperation for your robot robot core'';
    #license = lib.licenses.BSD;
  };
}