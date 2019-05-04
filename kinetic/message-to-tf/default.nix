
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-message-to-tf";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/message_to_tf/0.3.0-0.tar.gz;
    sha256 = "8074a5e21accd7b79eccb72a80a6d033ed39299d0368d9185b8f2e0d23a65c35";
  };

  buildInputs = [ tf sensor-msgs nav-msgs topic-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ tf sensor-msgs nav-msgs topic-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message_to_tf translates pose information from different kind of common_msgs message types to tf. Currently the node supports nav_msgs/Odometry, geometry_msgs/PoseStamped and sensor_msgs/Imu messages as input.
    The resulting transform is divided into three subtransforms with intermediate frames for the footprint and the stabilized base frame (without roll and pitch).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
