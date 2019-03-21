
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, catkin, angles, tf-conversions, eigen-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-geometry";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry-release/archive/release/melodic/geometry/1.12.0-0.tar.gz;
    sha256 = "6e5e79d8157d16ce6c27bc7b8f1e8411f0fea3a01698f69962746ec4af80e44d";
  };

  propagatedBuildInputs = [ kdl-conversions angles tf-conversions eigen-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>A metapackage for geometry library suite.</p>
    <p><b>Migration</b>: Since ROS Hydro, tf has been &quot;deprecated&quot; in favor of <a href="http://wiki.ros.org/tf2">tf2</a>. tf2 is an iteration on tf providing generally the same feature set more efficiently. As well as adding a few new features.<br/>
    As tf2 is a major change the tf API has been maintained in its current form. Since tf2 has a superset of the tf features with a subset of the dependencies the tf implementation has been removed and replaced with calls to tf2 under the hood. This will mean that all users will be compatible with tf2. It is recommended for new work to use tf2 directly as it has a cleaner interface. However tf will continue to be supported for through at least J Turtle.
    </p>'';
    #license = lib.licenses.BSD;
  };
}