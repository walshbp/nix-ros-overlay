
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-simple-controller-manager, nao-description, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-nao-moveit-config";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_moveit_config-release/archive/release/kinetic/nao_moveit_config/0.0.11-0.tar.gz;
    sha256 = "d16e19059a41c598250059b89c579108bb8aa4ccb02db935eb1d94b9ba03dbad";
  };

  buildInputs = [ nao-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager nao-description robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the NAO robot with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
