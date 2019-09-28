
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, rviz-common, geometry-msgs, ament-cmake-cpplint, ament-cmake-gtest, rclcpp, tinyxml-vendor, rviz-visual-testing-framework, ament-cmake-gmock, nav-msgs, urdf, resource-retriever, rviz-rendering-tests, ament-index-cpp, laser-geometry, visualization-msgs, pluginlib, ament-cmake-uncrustify, ament-cmake-cppcheck, qt5, ament-cmake-lint-cmake, map-msgs }:
buildRosPackage {
  pname = "ros-dashing-rviz-default-plugins";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_default_plugins/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "e00f52eb0ba6e7b0755b9228490dd982eb1306222ddac9b47eb0a8fd0bf8c33b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering pluginlib geometry-msgs qt5.qtbase nav-msgs urdf rclcpp tinyxml-vendor visualization-msgs resource-retriever laser-geometry rviz-common map-msgs ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck rviz-rendering-tests ament-cmake-lint-cmake ament-index-cpp rviz-visual-testing-framework ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-rendering pluginlib geometry-msgs qt5.qtbase laser-geometry nav-msgs urdf resource-retriever tinyxml-vendor rclcpp visualization-msgs rviz-common map-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}