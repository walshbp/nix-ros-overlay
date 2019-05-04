
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-cb-detector, calibration-launch, monocam-settler, interval-intersection, image-cb-detector, catkin, joint-states-settler, settlerlib, calibration-estimation, calibration-msgs }:
buildRosPackage {
  pname = "ros-kinetic-calibration";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration/0.10.14-0.tar.gz;
    sha256 = "c4ae4faade4daaa2c3dae28fea9c2c807547221830fd8d023122dd484fa5df31";
  };

  propagatedBuildInputs = [ laser-cb-detector calibration-launch monocam-settler interval-intersection image-cb-detector joint-states-settler settlerlib calibration-estimation calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a toolchain running through the robot calibration process. This
     involves capturing calibration data, estimating parameters, and
     then updating the URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
