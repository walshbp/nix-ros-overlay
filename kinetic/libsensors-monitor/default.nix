
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-updater, catkin, lm_sensors, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-libsensors-monitor";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/kinetic/libsensors_monitor/0.2.0-0.tar.gz;
    sha256 = "aff4a809302d370d75499dccc31136723e8b69293ed6b8bd4de011b88337e749";
  };

  buildInputs = [ diagnostic-updater roscpp lm_sensors ];
  propagatedBuildInputs = [ diagnostic-updater roscpp lm_sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node for using libsensors to provide diagnostics information about the sensors on a computer system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
