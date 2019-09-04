
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, rqt-gui, qt-gui, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-gui-py";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt-release/archive/release/crystal/rqt_gui_py/1.0.2-0.tar.gz;
    sha256 = "88e7fbe247e2a45351e3c8a7e882b302a3c7a7a6766a191be34edf2ef1d639bb";
  };

  buildInputs = [ rqt-gui qt-gui ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-gui qt-gui ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
