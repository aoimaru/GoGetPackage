[app/sources/176164149.Dockerfile]
digraph {
  "sha256:6c337de0fa3d6fe3421a390ad51ab7d4cad77974053851608df81d593085328a" [label="docker-image://docker.io/balenalib/raspberry-pi:latest" shape="ellipse"];
  "sha256:29f4f59d5f6cb11b7266849f0c5b47c42ef60238e3020a0592f5c8b751cca64a" [label="mkdir{path=/app}" shape="note"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:041ec366943c487592ce4162f9ad6857985b673b58f4c1b88b60de9b0c58b3a2" [label="mkdir{path=/webrtc-streamer}" shape="note"];
  "sha256:e495e2df0d55f75b3922db1c734cd1bd5954ea3abebbb441788e53b74149e8c0" [label="local://context" shape="ellipse"];
  "sha256:e0c4e3a3987599b21cc0dcc7bccf41744b4530be5d2ed1aac8981d295389ea7e" [label="copy{src=/, dest=/webrtc-streamer}" shape="note"];
  "sha256:63b6836e741a30a141ab85dd7f0e5805146aa6a06de629026c4e71f7282f9ff3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ca-certificates wget git python xz-utils cmake make crossbuild-essential-armhf \t&& mkdir /webrtc \t&& git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git /webrtc/depot_tools \t&& export PATH=/webrtc/depot_tools:$PATH \t&& cd /webrtc \t&& fetch --no-history --nohooks webrtc \t&& sed -i -e \"s|'src/resources'],|'src/resources'],'condition':'rtc_include_tests==true',|\" src/DEPS \t&& /webrtc/src/build/linux/sysroot_scripts/install-sysroot.py --arch=arm \t&& gclient sync \t&& cd /webrtc-streamer \t&& cmake -DCMAKE_SYSTEM_PROCESSOR=${ARCH} -DCMAKE_SYSTEM_NAME=Linux -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc -DCMAKE_CXX_COMPILER=arm-linux-gnueabihf-g++ -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY -DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE=ONLY -DWEBRTCDESKTOPCAPTURE=OFF . && make \t&& cpack \t&& mkdir /app && tar xvzf webrtc-streamer*.tar.gz --strip=1 -C /app/ \t&& rm -rf /webrtc && rm -f *.a && rm -f src/*.o \t&& apt-get clean && rm -rf /var/lib/apt/lists/" shape="box"];
  "sha256:d3b7837284b7263b2ac7fdb2e868034f38d89bc95c49ea2da1a6aefce18c7b60" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:c568f090c9f599708796912022831505d4a5e9724e319e0f62193a625aa854c6" [label="sha256:c568f090c9f599708796912022831505d4a5e9724e319e0f62193a625aa854c6" shape="plaintext"];
  "sha256:6c337de0fa3d6fe3421a390ad51ab7d4cad77974053851608df81d593085328a" -> "sha256:29f4f59d5f6cb11b7266849f0c5b47c42ef60238e3020a0592f5c8b751cca64a" [label=""];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:041ec366943c487592ce4162f9ad6857985b673b58f4c1b88b60de9b0c58b3a2" [label=""];
  "sha256:041ec366943c487592ce4162f9ad6857985b673b58f4c1b88b60de9b0c58b3a2" -> "sha256:e0c4e3a3987599b21cc0dcc7bccf41744b4530be5d2ed1aac8981d295389ea7e" [label=""];
  "sha256:e495e2df0d55f75b3922db1c734cd1bd5954ea3abebbb441788e53b74149e8c0" -> "sha256:e0c4e3a3987599b21cc0dcc7bccf41744b4530be5d2ed1aac8981d295389ea7e" [label=""];
  "sha256:e0c4e3a3987599b21cc0dcc7bccf41744b4530be5d2ed1aac8981d295389ea7e" -> "sha256:63b6836e741a30a141ab85dd7f0e5805146aa6a06de629026c4e71f7282f9ff3" [label=""];
  "sha256:29f4f59d5f6cb11b7266849f0c5b47c42ef60238e3020a0592f5c8b751cca64a" -> "sha256:d3b7837284b7263b2ac7fdb2e868034f38d89bc95c49ea2da1a6aefce18c7b60" [label=""];
  "sha256:63b6836e741a30a141ab85dd7f0e5805146aa6a06de629026c4e71f7282f9ff3" -> "sha256:d3b7837284b7263b2ac7fdb2e868034f38d89bc95c49ea2da1a6aefce18c7b60" [label=""];
  "sha256:d3b7837284b7263b2ac7fdb2e868034f38d89bc95c49ea2da1a6aefce18c7b60" -> "sha256:c568f090c9f599708796912022831505d4a5e9724e319e0f62193a625aa854c6" [label=""];
}

