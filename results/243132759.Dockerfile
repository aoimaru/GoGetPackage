[app/sources/243132759.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:a98fc0a906351ae5c99b53673553e94d9e3000d3216d9510d7e7c38cd35ef83b" [label="/bin/sh -c apt-get update -y \t&& apt-get install -y libgdal-dev libproj-dev gdal-bin mercurial cmake-curses-gui \t\tpython-dev python-setuptools python-pip     \t&& hg clone https://bitbucket.org/chchrsc/kealib     \t&& cd kealib && cmake -DCMAKE_INSTALL_PREFIX:STRING=/usr && cmake -DGDAL_INCLUDE_DIR:STRING=/usr/include/gdal         && cmake -DGDAL_LIB_PATH:STRING=/usr/lib && cmake -DHDF5_INCLUDE_DIR:STRING=/usr/include/hdf5/serial         && cmake -DHDF5_LIB_PATH:STRING=/usr/lib/powerpc64le-linux-gnu/hdf5/serial && make && make install && make test         && cd ../.. && apt-get -y autoremove \t&& rm -rf kealib" shape="box"];
  "sha256:77a395fc91ed62ba2914a31f71bc1dc288932c4c5bf42fe2e3d2f9c03014e25b" [label="sha256:77a395fc91ed62ba2914a31f71bc1dc288932c4c5bf42fe2e3d2f9c03014e25b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:a98fc0a906351ae5c99b53673553e94d9e3000d3216d9510d7e7c38cd35ef83b" [label=""];
  "sha256:a98fc0a906351ae5c99b53673553e94d9e3000d3216d9510d7e7c38cd35ef83b" -> "sha256:77a395fc91ed62ba2914a31f71bc1dc288932c4c5bf42fe2e3d2f9c03014e25b" [label=""];
}

