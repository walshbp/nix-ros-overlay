
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, rqt-gui, catkin, rqt-gui-cpp, qt5, qwt6, variant-topic-tools, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rqt-multiplot";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/anybotics/rqt_multiplot_plugin-release/archive/release/kinetic/rqt_multiplot/0.0.10-0.tar.gz;
    sha256 = "8609de1db057f16d19ba9097a5022e0551f29f20b4e185a154e5fa2b09c3de0e";
  };

  buildInputs = [ rosbag rqt-gui qt5.qtbase rqt-gui-cpp qwt6 variant-topic-tools roscpp ];
  propagatedBuildInputs = [ rosbag rqt-gui qt5.qtbase rqt-gui-cpp qwt6 variant-topic-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_multiplot provides a GUI plugin for visualizing numeric values
    in multiple 2D plots using the Qwt plotting backend.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
