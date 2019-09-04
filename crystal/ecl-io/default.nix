
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-crystal-ecl-io";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_io/1.0.1-0.tar.gz;
    sha256 = "415a4a10ce017151d21132c31d26f1dcac1cb80cae3fe6f5b5eb79241acd06e6";
  };

  buildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for
     low level input-output functions. These are gathered here and re-represented
     with a cross platform set of functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
