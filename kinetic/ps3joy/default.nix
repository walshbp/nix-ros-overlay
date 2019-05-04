
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, sensor-msgs, linuxConsoleTools, pythonPackages, catkin, rosgraph, libusb, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ps3joy";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/ps3joy/1.12.0-0.tar.gz;
    sha256 = "7ab034be1a472b3f03fd6301aac20a442c38c77de2d08a72da341cfe4d1c23a4";
  };

  buildInputs = [ bluez sensor-msgs linuxConsoleTools pythonPackages.pybluez rosgraph libusb rospy diagnostic-msgs ];
  propagatedBuildInputs = [ bluez sensor-msgs linuxConsoleTools pythonPackages.pybluez rosgraph libusb rospy diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.
    Driver for the Sony PlayStation 3 SIXAXIS or DUAL SHOCK 3
    joysticks. In its current state, this driver is not compatible
    with the use of other Bluetooth HID devices. The driver listens
    for a connection on the HID ports, starts the joystick
    streaming data, and passes the data to the Linux uinput device
    so that it shows up as a normal joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
