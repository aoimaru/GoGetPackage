[app/sources/228593087.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:36693a8836d2bc51df2c5fe6b7927b01a136f98448d9f2ddfd7a69081ccbb558" [label="/bin/sh -c apk update     && apk add --no-cache perl curl xz dmidecode pciutils usbutils     smartmontools hdparm sysstat util-linux lm_sensors acpi iw wireless-tools     alsa-utils xrandr xdpyinfo xinput acpica iasl     && apk add --no-cache --virtual build-deps git gcc make libc-dev flex linux-headers     && git clone https://git.linuxtv.org/cgit.cgi/edid-decode.git     && cd edid-decode     && make     && make install     && cd ..     && rm -fr edid-decode     && git clone https://github.com/wfeldt/libx86emu.git     && cd libx86emu     && make     && make install     && cd ..     && rm -fr libx86emu     && git clone https://github.com/openSUSE/hwinfo.git     && cd hwinfo     && make     && make install     && cd ..     && rm -fr hwinfo     && git clone https://github.com/linuxhw/hw-probe.git     && cd hw-probe     && make install     && cd ..     && rm -fr hw-probe     && apk del build-deps" shape="box"];
  "sha256:e68a3633e53ad9b2f1d61e8fe18d58d26b17fd7b5b37d5bc773905376c095bee" [label="sha256:e68a3633e53ad9b2f1d61e8fe18d58d26b17fd7b5b37d5bc773905376c095bee" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:36693a8836d2bc51df2c5fe6b7927b01a136f98448d9f2ddfd7a69081ccbb558" [label=""];
  "sha256:36693a8836d2bc51df2c5fe6b7927b01a136f98448d9f2ddfd7a69081ccbb558" -> "sha256:e68a3633e53ad9b2f1d61e8fe18d58d26b17fd7b5b37d5bc773905376c095bee" [label=""];
}

