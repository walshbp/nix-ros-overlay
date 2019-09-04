
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, sros2, ament-cmake-test, ament-lint-auto, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-sros2-cmake";
  version = "0.7.1-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2_cmake/0.7.1-1.tar.gz;
    sha256 = "5048c3e582a406fb776c1bbfc270dfa2dcd54b1bff49d5bbf4354b689da9915f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ sros2 ros2cli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cmake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
