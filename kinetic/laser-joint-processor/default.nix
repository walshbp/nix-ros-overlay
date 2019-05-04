
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, image-geometry, joint-states-settler, settlerlib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-joint-processor";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/laser_joint_processor/1.0.11-0.tar.gz;
    sha256 = "70586dfb537b887de968949cbea8ad55c23c966496635d64bfa954fbd99d5b34";
  };

  buildInputs = [ message-filters image-geometry joint-states-settler settlerlib geometry-msgs ];
  propagatedBuildInputs = [ message-filters image-geometry joint-states-settler settlerlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Computes joint angles associated with a specific set of detected checkerboard corners.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
