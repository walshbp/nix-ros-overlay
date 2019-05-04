
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-tricycle-controller, cob-twist-controller, cob-control-msgs, cob-base-controller-utils, cob-model-identifier, cob-cartesian-controller, catkin, cob-base-velocity-smoother, cob-footprint-observer, cob-collision-velocity-filter, cob-trajectory-controller, cob-omni-drive-controller, cob-control-mode-adapter, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-kinetic-cob-control";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control/0.7.4-0.tar.gz;
    sha256 = "b8b8ccd898f052f46e7b31fe5ec1ce5637c2d0377afdbd9387395da7af066593";
  };

  propagatedBuildInputs = [ cob-tricycle-controller cob-twist-controller cob-control-msgs cob-base-controller-utils cob-model-identifier cob-cartesian-controller cob-base-velocity-smoother cob-footprint-observer cob-collision-velocity-filter cob-trajectory-controller cob-omni-drive-controller cob-control-mode-adapter cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
