
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, message-filters, nav2-util, rclcpp, std-srvs, tf2-geometry-msgs, tf2-ros, nav-msgs, launch-ros, ament-lint-common, launch-testing, sensor-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-amcl";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_amcl/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "63cd9413e0313edbe59ba5ba198f1147b298e1e6a580600a483512aa5d46a6ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-srvs launch-ros tf2-geometry-msgs launch-testing sensor-msgs message-filters nav2-util tf2-ros nav2-common tf2 nav-msgs rclcpp geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ std-srvs launch-ros tf2-geometry-msgs launch-testing sensor-msgs message-filters nav2-util tf2-ros tf2 nav-msgs rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      amcl is a probabilistic localization system for a robot moving in
      2D. It implements the adaptive (or KLD-sampling) Monte Carlo
      localization approach (as described by Dieter Fox), which uses a
      particle filter to track the pose of a robot against a known map.
    </p>
    <p>
      This node is derived, with thanks, from Andrew Howard's excellent
      'amcl' Player driver.
    </p>'';
    license = with lib.licenses; [ lgpl21 ];
  };
}