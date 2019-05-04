
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, catkin, console-bridge, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tf2";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2/0.5.20-0.tar.gz;
    sha256 = "a77e9391ece6f3c2d65fcce807dc9f9c79982e226bb8b75555d38b35abf5d140";
  };

  buildInputs = [ console-bridge tf2-msgs rostime geometry-msgs ];
  propagatedBuildInputs = [ console-bridge tf2-msgs rostime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2 is the second generation of the transform library, which lets
    the user keep track of multiple coordinate frames over time. tf2
    maintains the relationship between coordinate frames in a tree
    structure buffered in time, and lets the user transform points,
    vectors, etc between any two coordinate frames at any desired
    point in time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
