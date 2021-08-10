[app/sources/309508099.Dockerfile]
digraph {
  "sha256:52933c96dc51b98f52c0b888de95a297c0ec2105a509963856b20f6cfe1aa160" [label="docker-image://docker.io/library/opensuse:42.3" shape="ellipse"];
  "sha256:6ff52db9efe0392d7aa6f59b5d979f8ec4b0b0b7e9a6e060dddb8df9b3f360be" [label="/bin/sh -c zypper refresh" shape="box"];
  "sha256:def3f02c73b7a70dbbb3b8f8ff283de896b2d2512fcd468df0d36fe31656562d" [label="/bin/sh -c zypper --non-interactive install gcc git make cmake" shape="box"];
  "sha256:47a9c8f139c3fb5796520a415495a5050937863f61609e4f041fc79ba4d21074" [label="/bin/sh -c zypper --non-interactive install     libopenblas_serial0 libopenblas_serial-devel cblas-devel     libcunit1 cunit-devel hdf5 hdf5-devel" shape="box"];
  "sha256:c8d8f2a4d25f3d1af284df1841f7ce9047fcd6c098e88884d6a623c861ab1b48" [label="/bin/sh -c ln -s /usr/lib64/libblas.so.3 /usr/lib64/libblas.so" shape="box"];
  "sha256:d7990b9ce45ff4e6fea8f973f7ad9c724d4488c8cc95bd08de710505006180df" [label="/bin/sh -c git clone --depth 1 http://github.com/nanoporetech/scrappie.git" shape="box"];
  "sha256:91a8add7a73addf20b403f5608cf4892ab34f02487b602e9d87903f8dce3d02d" [label="/bin/sh -c cd scrappie &&     mkdir build &&     cd build &&     cmake .. &&     make &&     make test" shape="box"];
  "sha256:0a8fbf20d9b02463679764d851890f80462475817da8a929ba4f779d2b53b89f" [label="sha256:0a8fbf20d9b02463679764d851890f80462475817da8a929ba4f779d2b53b89f" shape="plaintext"];
  "sha256:52933c96dc51b98f52c0b888de95a297c0ec2105a509963856b20f6cfe1aa160" -> "sha256:6ff52db9efe0392d7aa6f59b5d979f8ec4b0b0b7e9a6e060dddb8df9b3f360be" [label=""];
  "sha256:6ff52db9efe0392d7aa6f59b5d979f8ec4b0b0b7e9a6e060dddb8df9b3f360be" -> "sha256:def3f02c73b7a70dbbb3b8f8ff283de896b2d2512fcd468df0d36fe31656562d" [label=""];
  "sha256:def3f02c73b7a70dbbb3b8f8ff283de896b2d2512fcd468df0d36fe31656562d" -> "sha256:47a9c8f139c3fb5796520a415495a5050937863f61609e4f041fc79ba4d21074" [label=""];
  "sha256:47a9c8f139c3fb5796520a415495a5050937863f61609e4f041fc79ba4d21074" -> "sha256:c8d8f2a4d25f3d1af284df1841f7ce9047fcd6c098e88884d6a623c861ab1b48" [label=""];
  "sha256:c8d8f2a4d25f3d1af284df1841f7ce9047fcd6c098e88884d6a623c861ab1b48" -> "sha256:d7990b9ce45ff4e6fea8f973f7ad9c724d4488c8cc95bd08de710505006180df" [label=""];
  "sha256:d7990b9ce45ff4e6fea8f973f7ad9c724d4488c8cc95bd08de710505006180df" -> "sha256:91a8add7a73addf20b403f5608cf4892ab34f02487b602e9d87903f8dce3d02d" [label=""];
  "sha256:91a8add7a73addf20b403f5608cf4892ab34f02487b602e9d87903f8dce3d02d" -> "sha256:0a8fbf20d9b02463679764d851890f80462475817da8a929ba4f779d2b53b89f" [label=""];
}

