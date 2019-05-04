
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, git, catkin, sensor-msgs, roscpp, libusb1, message-generation, message-runtime, dynamic-reconfigure, nodelet, libudev }:
buildRosPackage {
  pname = "ros-kinetic-astra-camera";
  version = "0.2.2-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/astra_camera-release/archive/release/kinetic/astra_camera/0.2.2-1.tar.gz;
    sha256 = "529d38740a742672b4963ad30437fe7652b09d2b29b80199f298eb53de94e34a";
  };

  buildInputs = [ camera-info-manager image-transport git sensor-msgs libusb1 message-generation nodelet dynamic-reconfigure roscpp libudev ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs roscpp message-runtime dynamic-reconfigure nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for Orbbec Astra Devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
