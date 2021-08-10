[app/sources/385106433.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:3824fe92d69c69fdbca0fb116e1ddacd438d3604cdc99b1645d6d884eccad82b" [label="mkdir{path=/app}" shape="note"];
  "sha256:edd1ac140ee7ecd2c295c120458e0c6fb07ce20dbe03c903560aaf868560e6a9" [label="/bin/sh -c apt-get update; apt-get install -y   build-essential   cmake   git-core   libboost-all-dev   libglew-dev   liblua5.1-0-dev   libopenal-dev   libphysfs-dev   libssl-dev   libvorbis-dev   zlib1g-dev" shape="box"];
  "sha256:a04928222e22178ac6cb8c7aef07e6e7b8c3e4cff068f5ef52538413698dfc44" [label="/bin/sh -c apt-get install -y   libncurses5-dev   mercurial;   hg clone -r stable-2.0 http://hg.icculus.org/icculus/physfs/;     cd physfs;     mkdir build && cd build && cmake .. && make && make install;     mv /usr/local/lib/libphysfs.a /usr/lib/x86_64-linux-gnu/." shape="box"];
  "sha256:8359ddfc8c0a68b03d58d9fb04f33b46916d0ed73c61b3513f45ccaaae7bad6d" [label="local://context" shape="ellipse"];
  "sha256:893392b5e1c22e79080ad9e3c3082ecb4b5b0f070d3860fdd61c5e8bd64ffda0" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ddce7bcaf5d5c445a68159206812aece9a623eddc2ce4b173bb903fdee61cb87" [label="/bin/sh -c mkdir -p build && cd build && cmake .. && make -j$(grep -c ^process /proc/cpuinfo);" shape="box"];
  "sha256:dcf23b8b84725d5d22c5be5c4a0eabe385a0ce71529833149cafb427c3c0dab9" [label="sha256:dcf23b8b84725d5d22c5be5c4a0eabe385a0ce71529833149cafb427c3c0dab9" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:3824fe92d69c69fdbca0fb116e1ddacd438d3604cdc99b1645d6d884eccad82b" [label=""];
  "sha256:3824fe92d69c69fdbca0fb116e1ddacd438d3604cdc99b1645d6d884eccad82b" -> "sha256:edd1ac140ee7ecd2c295c120458e0c6fb07ce20dbe03c903560aaf868560e6a9" [label=""];
  "sha256:edd1ac140ee7ecd2c295c120458e0c6fb07ce20dbe03c903560aaf868560e6a9" -> "sha256:a04928222e22178ac6cb8c7aef07e6e7b8c3e4cff068f5ef52538413698dfc44" [label=""];
  "sha256:a04928222e22178ac6cb8c7aef07e6e7b8c3e4cff068f5ef52538413698dfc44" -> "sha256:893392b5e1c22e79080ad9e3c3082ecb4b5b0f070d3860fdd61c5e8bd64ffda0" [label=""];
  "sha256:8359ddfc8c0a68b03d58d9fb04f33b46916d0ed73c61b3513f45ccaaae7bad6d" -> "sha256:893392b5e1c22e79080ad9e3c3082ecb4b5b0f070d3860fdd61c5e8bd64ffda0" [label=""];
  "sha256:893392b5e1c22e79080ad9e3c3082ecb4b5b0f070d3860fdd61c5e8bd64ffda0" -> "sha256:ddce7bcaf5d5c445a68159206812aece9a623eddc2ce4b173bb903fdee61cb87" [label=""];
  "sha256:ddce7bcaf5d5c445a68159206812aece9a623eddc2ce4b173bb903fdee61cb87" -> "sha256:dcf23b8b84725d5d22c5be5c4a0eabe385a0ce71529833149cafb427c3c0dab9" [label=""];
}

