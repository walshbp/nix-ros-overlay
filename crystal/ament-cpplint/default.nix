
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-crystal-ament-cpplint";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cpplint/0.6.4-0.tar.gz;
    sha256 = "ac452583f5777569d2cb054248455bf44dc453803333114bd262e5793e3f4334";
  };

  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
