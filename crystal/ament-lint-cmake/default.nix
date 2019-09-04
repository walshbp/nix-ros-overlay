
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-crystal-ament-lint-cmake";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_lint_cmake/0.6.4-0.tar.gz;
    sha256 = "7acb95f4084aa67dba627c65fb30b77d38bac682fa1006f6b4691c72af75f5eb";
  };

  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''The ability to lint CMake code using cmakelint and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
