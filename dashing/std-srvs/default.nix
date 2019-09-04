
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-std-srvs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/std_srvs/0.7.0-1.tar.gz;
    sha256 = "bcb644039f652a75affdc40df47eddeccb9958f405ab15fbc52a15c953c0843f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
