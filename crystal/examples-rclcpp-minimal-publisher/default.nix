
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-publisher";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_publisher/0.6.3-0.tar.gz;
    sha256 = "55927e19129e0ead3947981d10dceda95d9f9e979d35275ecd0d271f90c642be";
  };

  buildInputs = [ std-msgs rclcpp ];
  propagatedBuildInputs = [ std-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal publisher nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
