
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-py";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_py/0.7.8-1.tar.gz;
    sha256 = "0a6527fbca3622415357b3b0c43fa201f485d1c830db0f9cc4a3bc89fbbc7e98";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
