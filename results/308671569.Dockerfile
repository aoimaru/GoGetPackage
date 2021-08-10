[app/sources/308671569.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:45cdb20f0108bd07e9c2053e032ae259d867aae7f0b5e8c757fd8119b8830510" [label="/bin/sh -c yum -y install make curl file git gcc pkg-config valgrind vim         gdb zlib zlib-devel bzip2 bzip2-libs bzip2-devel" shape="box"];
  "sha256:c782f02b2fafeeefe11295bd3cebe2ad63e801176195a4e63881919f143ba3a0" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:f29c10509798865ee41eb90caa27572e1a29c01ed379fa2e491a54cc6d67c13d" [label="/bin/sh -c yum -y install zeromq-devel python34-devel libfabric-devel" shape="box"];
  "sha256:8ffd87445e83d692d6c7b87803156fe54ec20ac874fb55ba34d2a3438f824799" [label="/bin/sh -c yum -y install https://github.com/openhpc/ohpc/releases/download/v1.3.GA/ohpc-release-1.3-1.el7.x86_64.rpm" shape="box"];
  "sha256:6a2c1ce667d41af51976ab9985b0d760272517329e16f16581822088a296048e" [label="/bin/sh -c yum -y install lmod-ohpc   gnu8-compilers-ohpc python34-numpy-gnu8-ohpc openmpi-gnu8-ohpc   python34-mpi4py-gnu8-openmpi3-ohpc   phdf5-gnu8-openmpi3-ohpc netcdf-gnu8-openmpi3-ohpc adios-gnu8-openmpi3-ohpc" shape="box"];
  "sha256:7c29ead5f7d97aa8dbf2dfc9cad557f1113f4b0cd5eff555d968800b581573bf" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:b824468491bbb0ccf7f19d32ddf00fab96cfb7c176e4959db553e114a152aa09" [label="mkdir{path=/opt/cmake/3.6.3}" shape="note"];
  "sha256:2cec9d5ac012531819f6b2239693f490ce39498dcda8acf95a60f3177d7c72b3" [label="/bin/sh -c curl -L https://cmake.org/files/v3.6/cmake-3.6.3-Linux-x86_64.tar.gz |   tar --strip-components=1 -xz" shape="box"];
  "sha256:f4fabc2c9020baba91f945c11cb9452d04942238dd9c38a6cca5f73a05b96aea" [label="/bin/sh -c export uid=1001 gid=1001 &&     mkdir -p /home/adios2 &&     echo \"adios2:x:${uid}:${gid}:adios2,,,:/home/adios2:/bin/bash\" >> /etc/passwd &&     echo \"adios2:x:${uid}:\" >> /etc/group &&     chown ${uid}:${gid} -R /home/adios2" shape="box"];
  "sha256:4a2a757677901006831231da967d6341ae5346803fe719fd343b02c1519246f0" [label="/bin/sh -c curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | bash &&     yum install -y git-lfs &&     runuser -l adios2 -c 'git lfs install'" shape="box"];
  "sha256:67be6ef1f373a99bba187bff5eaa2877a766386a4a94a30489a31b9af89a07e0" [label="/bin/sh -c rm -rfv /tmp/* /var/cache/yum" shape="box"];
  "sha256:e6a55331a31370c328ed73ee91c8b8cdd4356f792185483bd50c007e92177809" [label="mkdir{path=/home/adios2}" shape="note"];
  "sha256:25e62955258e4f637a6e95b506da5fead0cf083eb7137e6b0e0f2546ca0f55e8" [label="sha256:25e62955258e4f637a6e95b506da5fead0cf083eb7137e6b0e0f2546ca0f55e8" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:45cdb20f0108bd07e9c2053e032ae259d867aae7f0b5e8c757fd8119b8830510" [label=""];
  "sha256:45cdb20f0108bd07e9c2053e032ae259d867aae7f0b5e8c757fd8119b8830510" -> "sha256:c782f02b2fafeeefe11295bd3cebe2ad63e801176195a4e63881919f143ba3a0" [label=""];
  "sha256:c782f02b2fafeeefe11295bd3cebe2ad63e801176195a4e63881919f143ba3a0" -> "sha256:f29c10509798865ee41eb90caa27572e1a29c01ed379fa2e491a54cc6d67c13d" [label=""];
  "sha256:f29c10509798865ee41eb90caa27572e1a29c01ed379fa2e491a54cc6d67c13d" -> "sha256:8ffd87445e83d692d6c7b87803156fe54ec20ac874fb55ba34d2a3438f824799" [label=""];
  "sha256:8ffd87445e83d692d6c7b87803156fe54ec20ac874fb55ba34d2a3438f824799" -> "sha256:6a2c1ce667d41af51976ab9985b0d760272517329e16f16581822088a296048e" [label=""];
  "sha256:6a2c1ce667d41af51976ab9985b0d760272517329e16f16581822088a296048e" -> "sha256:7c29ead5f7d97aa8dbf2dfc9cad557f1113f4b0cd5eff555d968800b581573bf" [label=""];
  "sha256:7c29ead5f7d97aa8dbf2dfc9cad557f1113f4b0cd5eff555d968800b581573bf" -> "sha256:b824468491bbb0ccf7f19d32ddf00fab96cfb7c176e4959db553e114a152aa09" [label=""];
  "sha256:b824468491bbb0ccf7f19d32ddf00fab96cfb7c176e4959db553e114a152aa09" -> "sha256:2cec9d5ac012531819f6b2239693f490ce39498dcda8acf95a60f3177d7c72b3" [label=""];
  "sha256:2cec9d5ac012531819f6b2239693f490ce39498dcda8acf95a60f3177d7c72b3" -> "sha256:f4fabc2c9020baba91f945c11cb9452d04942238dd9c38a6cca5f73a05b96aea" [label=""];
  "sha256:f4fabc2c9020baba91f945c11cb9452d04942238dd9c38a6cca5f73a05b96aea" -> "sha256:4a2a757677901006831231da967d6341ae5346803fe719fd343b02c1519246f0" [label=""];
  "sha256:4a2a757677901006831231da967d6341ae5346803fe719fd343b02c1519246f0" -> "sha256:67be6ef1f373a99bba187bff5eaa2877a766386a4a94a30489a31b9af89a07e0" [label=""];
  "sha256:67be6ef1f373a99bba187bff5eaa2877a766386a4a94a30489a31b9af89a07e0" -> "sha256:e6a55331a31370c328ed73ee91c8b8cdd4356f792185483bd50c007e92177809" [label=""];
  "sha256:e6a55331a31370c328ed73ee91c8b8cdd4356f792185483bd50c007e92177809" -> "sha256:25e62955258e4f637a6e95b506da5fead0cf083eb7137e6b0e0f2546ca0f55e8" [label=""];
}

