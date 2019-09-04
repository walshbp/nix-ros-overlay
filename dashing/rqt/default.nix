
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-py-common, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-dashing-rqt";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt/1.0.4-1.tar.gz;
    sha256 = "4a1739fbc485a8fc3e07beb1f5550ecec4cead7f5fb1331f5220d121551aaaae";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py rqt-py-common rqt-gui rqt-gui-cpp ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS. It consists of three parts/metapackages<br/>
    <ul>
     <li>rqt (you're here)</li>
     <li><a href="http://ros.org/wiki/rqt_common_plugins">rqt_common_plugins</a> - ROS backend tools suite that can be used on/off of robot runtime.</li>
     <li><a href="http://ros.org/wiki/rqt_robot_plugins">rqt_robot_plugins</a> - Tools for interacting with robots during their runtime.</li>
    </ul>
   rqt metapackage provides a widget <a href="http://ros.org/wiki/rqt_gui">rqt_gui</a> that enables multiple `rqt` widgets to be docked in a single window.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
