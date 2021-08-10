[app/sources/202561320.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:3811fd6373608702e9de363f719bf9b7dbdf69a15f49cb554d8ddc158d72e6e3" [label="/bin/sh -c apt-get update && apt-get install -y -q     build-essential     cmake     git     libusb-1.0-0-dev     python     python-numpy     python-pip     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4d0aa3b03d87852e21299958be967cdf25fbf45966943e0488033f4dc2fe45b2" [label="/bin/sh -c echo 'blacklist dvb_usb_rtl28xxu' > /etc/modprobe.d/raspi-blacklist.conf &&     git clone git://git.osmocom.org/rtl-sdr.git &&     cd rtl-sdr &&     mkdir build &&     cd build &&     cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON &&     make &&     make install &&     ldconfig" shape="box"];
  "sha256:e7e56f8270e8eb95028be3a0a20f3372c963159970bc341c845558e98bc68da4" [label="/bin/sh -c pip install pyrtlsdr" shape="box"];
  "sha256:a92a66d8ab7c043e5a10f72b14c05aa46e5f9b6abfcc0f270c88585894738391" [label="sha256:a92a66d8ab7c043e5a10f72b14c05aa46e5f9b6abfcc0f270c88585894738391" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:3811fd6373608702e9de363f719bf9b7dbdf69a15f49cb554d8ddc158d72e6e3" [label=""];
  "sha256:3811fd6373608702e9de363f719bf9b7dbdf69a15f49cb554d8ddc158d72e6e3" -> "sha256:4d0aa3b03d87852e21299958be967cdf25fbf45966943e0488033f4dc2fe45b2" [label=""];
  "sha256:4d0aa3b03d87852e21299958be967cdf25fbf45966943e0488033f4dc2fe45b2" -> "sha256:e7e56f8270e8eb95028be3a0a20f3372c963159970bc341c845558e98bc68da4" [label=""];
  "sha256:e7e56f8270e8eb95028be3a0a20f3372c963159970bc341c845558e98bc68da4" -> "sha256:a92a66d8ab7c043e5a10f72b14c05aa46e5f9b6abfcc0f270c88585894738391" [label=""];
}

