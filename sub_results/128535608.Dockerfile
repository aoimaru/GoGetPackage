[app/sub_sources/128535608.Dockerfile]
digraph {
  "sha256:c2149698d3120ae51e32fd98a53f1c9fbb34edeb8a150dd77fb85830cf508116" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:c845dae6c92f51ff81bf9f866b60e10e70a76602ac966865b59f9bcebe7bd7ff" [label="/bin/sh -c apt-get update -y && apt-get install -y --no-install-recommends       bc       bzip2       ca-certificates       cmake       cpio       curl       file       g++       gcc-arm-linux-gnueabihf       git       libc6-dev       libc6-dev-armhf-cross       make       python2.7       qemu-system-arm       xz-utils" shape="box"];
  "sha256:dc04611aa2a5d89c9986c31b4f87f7da8b647e197c448630c361850366767315" [label="mkdir{path=/build}" shape="note"];
  "sha256:fe0e091bb4be30ba025992b4f8bc3fc20367e5542406991c1f553927a57928fc" [label="copy{src=/armhf-gnu/vexpress_config, dest=/build/.config}" shape="note"];
  "sha256:afe7781be9e26fbd56ef42561b32ef67ed857e2b2bfbfd27d697057c06da852f" [label="/bin/sh -c curl https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.4.42.tar.xz |       tar xJf - &&       cd /build/linux-4.4.42 &&       cp /build/.config . &&       make -j$(nproc) all &&       cp arch/arm/boot/zImage /tmp &&       cd /build &&        rm -rf linux-4.4.42" shape="box"];
  "sha256:7d7525c5218b1103c6e61b1a4a95a895905655b7b9694e536927325875e880e6" [label="/bin/sh -c curl https://www.busybox.net/downloads/busybox-1.21.1.tar.bz2 | tar xjf - &&       cd busybox-1.21.1 &&       make defconfig &&       sed -i 's/.*CONFIG_STATIC.*/CONFIG_STATIC=y/' .config &&       make -j$(nproc) &&       make install &&       mv _install /tmp/rootfs &&       cd /build &&       rm -rf busybox-1.12.1" shape="box"];
  "sha256:8db1d8264049050b64b7444ddc887ab713cb7020e4f1f7c1230b8cde50562530" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:926abff723179df022ab3e31e56219e9edb4d54a2af9570e3affa67545a66e24" [label="/bin/sh -c mkdir rootfs/ubuntu" shape="box"];
  "sha256:293eae871aaa503ad2d8160fe15a3797ae72b275ef026b0436e08aa19287c528" [label="/bin/sh -c curl http://cdimage.ubuntu.com/ubuntu-base/releases/16.04/release/ubuntu-base-16.04-core-armhf.tar.gz |       tar xzf - -C rootfs/ubuntu &&       cd rootfs && mkdir proc sys dev etc etc/init.d" shape="box"];
  "sha256:dae0cccb60a321d15e42fd658d55eca90c87ea77e0c39d6b6cafde8f2b3e97e4" [label="copy{src=/scripts/qemu-bare-bones-rcS, dest=/tmp/rootfs/etc/init.d/rcS}" shape="note"];
  "sha256:a4030ccacac1028e38eb962943d345cd61b45055c90bf3b63a0b3104fa21bd38" [label="/bin/sh -c chmod +x rootfs/etc/init.d/rcS" shape="box"];
  "sha256:2eef8f99d1d6157a2390f92b285d82f58955770866c5bd58e1251e2991809e1b" [label="copy{src=/scripts/qemu-bare-bones-addentropy.c, dest=/tmp/addentropy.c}" shape="note"];
  "sha256:fb84ef384ba4f1c9a79edad80e52e6c446a485eeffe21edd0381866f15c288c0" [label="/bin/sh -c arm-linux-gnueabihf-gcc addentropy.c -o rootfs/addentropy -static" shape="box"];
  "sha256:634d7c35b3c9b37ba0968c887a99602f7ddd47b6e2341fafad2c0740d6a101c5" [label="/bin/sh -c curl -O http://ftp.nl.debian.org/debian/dists/jessie/main/installer-armhf/current/images/device-tree/vexpress-v2p-ca15-tc1.dtb" shape="box"];
  "sha256:4674346e7b9de1cd476fbef850db0e1a375cd2e10c0cf2e6ad49c2b89499f2d8" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:80529d66db211c7accb12f8ffbdafb02e6acaa4f624e0d3e8589a5d72120f137" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:e91fbb82e926378eebd52ae6802fdb3d02d5a2e562146abca62d19b2143034b1" [label="sha256:e91fbb82e926378eebd52ae6802fdb3d02d5a2e562146abca62d19b2143034b1" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:c845dae6c92f51ff81bf9f866b60e10e70a76602ac966865b59f9bcebe7bd7ff" [label=""];
  "sha256:c845dae6c92f51ff81bf9f866b60e10e70a76602ac966865b59f9bcebe7bd7ff" -> "sha256:dc04611aa2a5d89c9986c31b4f87f7da8b647e197c448630c361850366767315" [label=""];
  "sha256:dc04611aa2a5d89c9986c31b4f87f7da8b647e197c448630c361850366767315" -> "sha256:fe0e091bb4be30ba025992b4f8bc3fc20367e5542406991c1f553927a57928fc" [label=""];
  "sha256:c2149698d3120ae51e32fd98a53f1c9fbb34edeb8a150dd77fb85830cf508116" -> "sha256:fe0e091bb4be30ba025992b4f8bc3fc20367e5542406991c1f553927a57928fc" [label=""];
  "sha256:fe0e091bb4be30ba025992b4f8bc3fc20367e5542406991c1f553927a57928fc" -> "sha256:afe7781be9e26fbd56ef42561b32ef67ed857e2b2bfbfd27d697057c06da852f" [label=""];
  "sha256:afe7781be9e26fbd56ef42561b32ef67ed857e2b2bfbfd27d697057c06da852f" -> "sha256:7d7525c5218b1103c6e61b1a4a95a895905655b7b9694e536927325875e880e6" [label=""];
  "sha256:7d7525c5218b1103c6e61b1a4a95a895905655b7b9694e536927325875e880e6" -> "sha256:8db1d8264049050b64b7444ddc887ab713cb7020e4f1f7c1230b8cde50562530" [label=""];
  "sha256:8db1d8264049050b64b7444ddc887ab713cb7020e4f1f7c1230b8cde50562530" -> "sha256:926abff723179df022ab3e31e56219e9edb4d54a2af9570e3affa67545a66e24" [label=""];
  "sha256:926abff723179df022ab3e31e56219e9edb4d54a2af9570e3affa67545a66e24" -> "sha256:293eae871aaa503ad2d8160fe15a3797ae72b275ef026b0436e08aa19287c528" [label=""];
  "sha256:293eae871aaa503ad2d8160fe15a3797ae72b275ef026b0436e08aa19287c528" -> "sha256:dae0cccb60a321d15e42fd658d55eca90c87ea77e0c39d6b6cafde8f2b3e97e4" [label=""];
  "sha256:c2149698d3120ae51e32fd98a53f1c9fbb34edeb8a150dd77fb85830cf508116" -> "sha256:dae0cccb60a321d15e42fd658d55eca90c87ea77e0c39d6b6cafde8f2b3e97e4" [label=""];
  "sha256:dae0cccb60a321d15e42fd658d55eca90c87ea77e0c39d6b6cafde8f2b3e97e4" -> "sha256:a4030ccacac1028e38eb962943d345cd61b45055c90bf3b63a0b3104fa21bd38" [label=""];
  "sha256:a4030ccacac1028e38eb962943d345cd61b45055c90bf3b63a0b3104fa21bd38" -> "sha256:2eef8f99d1d6157a2390f92b285d82f58955770866c5bd58e1251e2991809e1b" [label=""];
  "sha256:c2149698d3120ae51e32fd98a53f1c9fbb34edeb8a150dd77fb85830cf508116" -> "sha256:2eef8f99d1d6157a2390f92b285d82f58955770866c5bd58e1251e2991809e1b" [label=""];
  "sha256:2eef8f99d1d6157a2390f92b285d82f58955770866c5bd58e1251e2991809e1b" -> "sha256:fb84ef384ba4f1c9a79edad80e52e6c446a485eeffe21edd0381866f15c288c0" [label=""];
  "sha256:fb84ef384ba4f1c9a79edad80e52e6c446a485eeffe21edd0381866f15c288c0" -> "sha256:634d7c35b3c9b37ba0968c887a99602f7ddd47b6e2341fafad2c0740d6a101c5" [label=""];
  "sha256:634d7c35b3c9b37ba0968c887a99602f7ddd47b6e2341fafad2c0740d6a101c5" -> "sha256:4674346e7b9de1cd476fbef850db0e1a375cd2e10c0cf2e6ad49c2b89499f2d8" [label=""];
  "sha256:c2149698d3120ae51e32fd98a53f1c9fbb34edeb8a150dd77fb85830cf508116" -> "sha256:4674346e7b9de1cd476fbef850db0e1a375cd2e10c0cf2e6ad49c2b89499f2d8" [label=""];
  "sha256:4674346e7b9de1cd476fbef850db0e1a375cd2e10c0cf2e6ad49c2b89499f2d8" -> "sha256:80529d66db211c7accb12f8ffbdafb02e6acaa4f624e0d3e8589a5d72120f137" [label=""];
  "sha256:80529d66db211c7accb12f8ffbdafb02e6acaa4f624e0d3e8589a5d72120f137" -> "sha256:e91fbb82e926378eebd52ae6802fdb3d02d5a2e562146abca62d19b2143034b1" [label=""];
}

