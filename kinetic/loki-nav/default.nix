
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fiducial-slam, aruco-detect, move-basic }:
buildRosPackage {
  pname = "ros-kinetic-loki-nav";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_nav/0.0.2-0.tar.gz;
    sha256 = "d46c53acde43a90289f18fe686689886662945ee49851ddd8fed3bd45242302b";
  };

  propagatedBuildInputs = [ fiducial-slam aruco-detect move-basic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
