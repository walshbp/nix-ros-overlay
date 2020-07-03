
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-swri-prefix-tools";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_prefix_tools/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "f129f5e692e8071aa5762ebaadca3ac3100f1f1fbf7b6a816777118333766ae5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
