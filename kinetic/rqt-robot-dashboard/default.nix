
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-nav-view, rqt-gui, catkin, qt-gui, rqt-robot-monitor, rqt-console, rospy, diagnostic-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-robot-dashboard";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/kinetic/rqt_robot_dashboard/0.5.7-0.tar.gz;
    sha256 = "7f52846bd254213b9f245b0be802ff07701f3e57742ca0a13c1ffbeb262116cd";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-nav-view rqt-gui qt-gui rqt-robot-monitor rqt-console rospy diagnostic-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
