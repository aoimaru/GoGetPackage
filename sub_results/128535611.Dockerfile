[app/sub_sources/128535611.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:602f3b59c91052787876c95849d0a3914eef6626e7cb0bea1a124e02e27e6ca6" [label="/bin/sh -c apt-get update -y && apt-get install -y --no-install-recommends       bc       bzip2       ca-certificates       cmake       cpio       curl       file       g++       gcc-aarch64-linux-gnu       git       libc6-dev       libc6-dev-arm64-cross       make       python2.7       qemu-system-aarch64       xz-utils" shape="box"];
  "sha256:651c83e5379839754ca0dbeb15e73fc529842c461d1e4082070240c0f89ee491" [label="mkdir{path=/build}" shape="note"];
  "sha256:1718416248d50d82ff4cbfbe6f6a3c65fb902fca954a17075b3d331012f13ae9" [label="local://context" shape="ellipse"];
  "sha256:e9cca23b48509b45f69719eb726aae45016a9162b072a12fa775e65c94f6c599" [label="copy{src=/aarch64-gnu/config, dest=/build/.config}" shape="note"];
  "sha256:feba06513f0db7e2955bebc1948c10dab836be4f1b42fb53fbce34ee1fd85797" [label="/bin/sh -c curl https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.4.42.tar.xz |       tar xJf - &&       cd /build/linux-4.4.42 &&       cp /build/.config . &&       make -j$(nproc) all &&       cp arch/arm64/boot/Image /tmp &&       cd /build &&        rm -rf linux-4.4.42" shape="box"];
  "sha256:cdcea6541fa5b15542e0a16748a46f4330bde05d18cb14ba2be252ad6dda6941" [label="/bin/sh -c curl https://www.busybox.net/downloads/busybox-1.21.1.tar.bz2 | tar xjf - &&       cd busybox-1.21.1 &&       make defconfig &&       sed -i 's/.*CONFIG_STATIC.*/CONFIG_STATIC=y/' .config &&       make -j$(nproc) &&       make install &&       mv _install /tmp/rootfs &&       cd /build &&       rm -rf busybox-1.12.1" shape="box"];
  "sha256:4dc4b9f7af9987017f199f1fd358598a2351920f9d1e1b040adb0ee9af7e7270" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:317af24a73344943972ad30fdae93775e4249045ccfc68793674d292c439fc21" [label="/bin/sh -c mkdir rootfs/ubuntu" shape="box"];
  "sha256:e3060528205498ecc8068bd5ff60a4190bc8e50e747345d0ea31595f1e402c1a" [label="/bin/sh -c curl http://cdimage.ubuntu.com/ubuntu-base/releases/16.04/release/ubuntu-base-16.04-core-arm64.tar.gz |       tar xzf - -C rootfs/ubuntu &&       cd rootfs && mkdir proc sys dev etc etc/init.d" shape="box"];
  "sha256:349c80f629cc3a9ce4cc972f7db84dd669447e7ce34617e452849e0efff4fe89" [label="copy{src=/scripts/qemu-bare-bones-rcS, dest=/tmp/rootfs/etc/init.d/rcS}" shape="note"];
  "sha256:fb7c4d497bc225bf3a65c412879ff94438b1806a3d08e7ce36faac9becc2aea6" [label="/bin/sh -c chmod +x rootfs/etc/init.d/rcS" shape="box"];
  "sha256:b4cb47724e028f0aa22238729a7ee137954a791b5b51e43b0cb73ba9df575b16" [label="copy{src=/scripts/qemu-bare-bones-addentropy.c, dest=/tmp/addentropy.c}" shape="note"];
  "sha256:39e530154f3971a263d1fbc752dce16febc64161924741df36b93da3593c8829" [label="/bin/sh -c aarch64-linux-gnu-gcc addentropy.c -o rootfs/addentropy -static" shape="box"];
  "sha256:88485f62bc102f5c22a502df2181b8a8db7c0a6432d9730a9a3064427d99a7f3" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:dbfec345fe61030b47aa641276160b484e92b66cd57c6d2f0d724ce64955f01e" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:325fa045ad238a6fced373394373483c74c9464fe134d0fd3a8dc148c0093197" [label="sha256:325fa045ad238a6fced373394373483c74c9464fe134d0fd3a8dc148c0093197" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:602f3b59c91052787876c95849d0a3914eef6626e7cb0bea1a124e02e27e6ca6" [label=""];
  "sha256:602f3b59c91052787876c95849d0a3914eef6626e7cb0bea1a124e02e27e6ca6" -> "sha256:651c83e5379839754ca0dbeb15e73fc529842c461d1e4082070240c0f89ee491" [label=""];
  "sha256:651c83e5379839754ca0dbeb15e73fc529842c461d1e4082070240c0f89ee491" -> "sha256:e9cca23b48509b45f69719eb726aae45016a9162b072a12fa775e65c94f6c599" [label=""];
  "sha256:1718416248d50d82ff4cbfbe6f6a3c65fb902fca954a17075b3d331012f13ae9" -> "sha256:e9cca23b48509b45f69719eb726aae45016a9162b072a12fa775e65c94f6c599" [label=""];
  "sha256:e9cca23b48509b45f69719eb726aae45016a9162b072a12fa775e65c94f6c599" -> "sha256:feba06513f0db7e2955bebc1948c10dab836be4f1b42fb53fbce34ee1fd85797" [label=""];
  "sha256:feba06513f0db7e2955bebc1948c10dab836be4f1b42fb53fbce34ee1fd85797" -> "sha256:cdcea6541fa5b15542e0a16748a46f4330bde05d18cb14ba2be252ad6dda6941" [label=""];
  "sha256:cdcea6541fa5b15542e0a16748a46f4330bde05d18cb14ba2be252ad6dda6941" -> "sha256:4dc4b9f7af9987017f199f1fd358598a2351920f9d1e1b040adb0ee9af7e7270" [label=""];
  "sha256:4dc4b9f7af9987017f199f1fd358598a2351920f9d1e1b040adb0ee9af7e7270" -> "sha256:317af24a73344943972ad30fdae93775e4249045ccfc68793674d292c439fc21" [label=""];
  "sha256:317af24a73344943972ad30fdae93775e4249045ccfc68793674d292c439fc21" -> "sha256:e3060528205498ecc8068bd5ff60a4190bc8e50e747345d0ea31595f1e402c1a" [label=""];
  "sha256:e3060528205498ecc8068bd5ff60a4190bc8e50e747345d0ea31595f1e402c1a" -> "sha256:349c80f629cc3a9ce4cc972f7db84dd669447e7ce34617e452849e0efff4fe89" [label=""];
  "sha256:1718416248d50d82ff4cbfbe6f6a3c65fb902fca954a17075b3d331012f13ae9" -> "sha256:349c80f629cc3a9ce4cc972f7db84dd669447e7ce34617e452849e0efff4fe89" [label=""];
  "sha256:349c80f629cc3a9ce4cc972f7db84dd669447e7ce34617e452849e0efff4fe89" -> "sha256:fb7c4d497bc225bf3a65c412879ff94438b1806a3d08e7ce36faac9becc2aea6" [label=""];
  "sha256:fb7c4d497bc225bf3a65c412879ff94438b1806a3d08e7ce36faac9becc2aea6" -> "sha256:b4cb47724e028f0aa22238729a7ee137954a791b5b51e43b0cb73ba9df575b16" [label=""];
  "sha256:1718416248d50d82ff4cbfbe6f6a3c65fb902fca954a17075b3d331012f13ae9" -> "sha256:b4cb47724e028f0aa22238729a7ee137954a791b5b51e43b0cb73ba9df575b16" [label=""];
  "sha256:b4cb47724e028f0aa22238729a7ee137954a791b5b51e43b0cb73ba9df575b16" -> "sha256:39e530154f3971a263d1fbc752dce16febc64161924741df36b93da3593c8829" [label=""];
  "sha256:39e530154f3971a263d1fbc752dce16febc64161924741df36b93da3593c8829" -> "sha256:88485f62bc102f5c22a502df2181b8a8db7c0a6432d9730a9a3064427d99a7f3" [label=""];
  "sha256:1718416248d50d82ff4cbfbe6f6a3c65fb902fca954a17075b3d331012f13ae9" -> "sha256:88485f62bc102f5c22a502df2181b8a8db7c0a6432d9730a9a3064427d99a7f3" [label=""];
  "sha256:88485f62bc102f5c22a502df2181b8a8db7c0a6432d9730a9a3064427d99a7f3" -> "sha256:dbfec345fe61030b47aa641276160b484e92b66cd57c6d2f0d724ce64955f01e" [label=""];
  "sha256:dbfec345fe61030b47aa641276160b484e92b66cd57c6d2f0d724ce64955f01e" -> "sha256:325fa045ad238a6fced373394373483c74c9464fe134d0fd3a8dc148c0093197" [label=""];
}

