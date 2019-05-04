
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-plume-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_plume_simulator-release/archive/release/kinetic/uuv_plume_msgs/0.3.1-0.tar.gz;
    sha256 = "5e91161f084f2da82293897d0665d47104e79a2383481dd4f0b8c1404f16f02a";
  };

  buildInputs = [ geographic-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs geographic-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plume simulator messages and services package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
