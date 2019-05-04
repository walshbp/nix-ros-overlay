
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-yaml-util, rospy, diagnostic-msgs, geos, tf, geometry-msgs, boost, swri-nodelet, pkg-config, gps-common, swri-math-util, catkin, proj, roscpp, nodelet, libyamlcpp, sensor-msgs, geographic-msgs, swri-roscpp, rostest, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-swri-transform-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_transform_util/2.8.0-0.tar.gz;
    sha256 = "98a80e6efb2e2f6ae059a38dd203f68545e03a9681f35fb3a2717106d5150bf4";
  };

  buildInputs = [ swri-math-util boost libyamlcpp swri-nodelet topic-tools cv-bridge roscpp geographic-msgs gps-common proj swri-roscpp swri-yaml-util rospy diagnostic-msgs nodelet geos tf geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge swri-yaml-util rospy diagnostic-msgs geos tf geometry-msgs boost swri-nodelet gps-common swri-math-util proj roscpp nodelet libyamlcpp sensor-msgs geographic-msgs swri-roscpp topic-tools ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
