
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, cv-bridge, image-geometry, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ipa-3d-fov-visualization";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/ipa_3d_fov_visualization/0.6.13-0.tar.gz;
    sha256 = "c0120f056850ac8a374748968fe4c91fcc640ba1e075107527e6c98bce0d5143";
  };

  buildInputs = [ sensor-msgs cv-bridge image-geometry visualization-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs cv-bridge image-geometry visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
