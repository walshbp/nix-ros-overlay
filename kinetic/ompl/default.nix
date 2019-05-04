
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, boost, eigen }:
buildRosPackage {
  pname = "ros-kinetic-ompl";
  version = "1.2.3-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ompl-release/archive/release/kinetic/ompl/1.2.3-1.tar.gz;
    sha256 = "c2a90683339a8607111609b1c04a168e33f789b550f4d897498bf73211143d4d";
  };

  buildInputs = [ cmake boost eigen ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
