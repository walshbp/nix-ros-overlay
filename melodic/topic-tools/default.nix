
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cpp-common, catkin, roscpp, rostest, message-generation, message-runtime, xmlrpcpp, std-msgs, rostime, rosunit }:
buildRosPackage {
  pname = "ros-melodic-topic-tools";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/topic_tools/1.14.3-0.tar.gz;
    sha256 = "11737ac9aee93efcde7615891fd0342a8151e09b03435b1a173ddedef6c91f18";
  };

  propagatedBuildInputs = [ rosconsole xmlrpcpp message-runtime std-msgs rostime roscpp ];
  nativeBuildInputs = [ rosconsole cpp-common catkin roscpp rostest message-generation xmlrpcpp std-msgs rostime rosunit ];

  meta = {
    description = ''Tools for directing, throttling, selecting, and otherwise messing with
    ROS topics at a meta level. None of the programs in this package actually
    know about the topics whose streams they are altering; instead, these
    tools deal with messages as generic binary blobs. This means they can be
    applied to any ROS topic.'';
    #license = lib.licenses.BSD;
  };
}