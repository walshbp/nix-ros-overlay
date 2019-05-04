
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, diagnostic-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-analysis";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_analysis/1.9.3-0.tar.gz;
    sha256 = "f0b897d5c65da2e01d8120922a77804c8de4ad6ea8daf32ec6f117686730d25e";
  };

  buildInputs = [ diagnostic-msgs rostest rosbag roslib ];
  propagatedBuildInputs = [ diagnostic-msgs rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diagnostic_analysis package can convert a log of diagnostics data
    into a series of CSV files. Robot logs are recorded with rosbag, and
    can be processed offline using the scripts in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
