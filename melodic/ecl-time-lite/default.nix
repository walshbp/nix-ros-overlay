
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-time-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_time_lite/0.61.6-0.tar.gz;
    sha256 = "97485e9c7be495031bb6c5b207851c5e8458bb243cb2f4e5dcfa9c2dcc854050";
  };

  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  nativeBuildInputs = [ ecl-license ecl-errors catkin ecl-config ecl-build ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for 
     porting other code or being wrapped by higher level c++ classes.'';
    #license = lib.licenses.BSD;
  };
}