
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, qt5, python3Packages, ament-index-python, ament-lint-auto, python-qt-binding, tango-icon-theme }:
buildRosPackage {
  pname = "ros-crystal-qt-gui";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/qt_gui/1.0.6-1.tar.gz;
    sha256 = "e321214b3e5dd7308980cbdab72396d3fb387e3457ae67f55ab530096758627d";
  };

  buildInputs = [ python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python-qt-binding tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
