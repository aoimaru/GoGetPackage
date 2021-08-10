[app/sources/308671575.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:6a09b9b070efc1cf7bd93caccfdb5af008678cc1f7b72c8fc11baa0bd0d4f820" [label="/bin/sh -c dnf -y install gcc gcc-c++ gcc-gfortran cmake git make curl file patch         zlib-devel bzip2-devel openmpi-devel hdf5-openmpi-devel vim valgrind         python3-devel python3-numpy python3-mpi4py-openmpi zeromq-devel         libubsan" shape="box"];
  "sha256:96cd9ab9471347e532a5e94ae1ffc39a9ef2ccb9d52fbcd3aa5fd8366d74b0f6" [label="/bin/sh -c curl https://github.com/TACC/Lmod/commit/516a986322ac462876218ce140214824f47f5887.patch | patch -p 2 /usr/share/lmod/7.5.16/libexec/tcl2lua.tcl" shape="box"];
  "sha256:0ac6f26d4e8972418ca3d919bd47b33427fdc0fc2bee43c6de561650f3b693f6" [label="/bin/sh -c dnf clean all" shape="box"];
  "sha256:79d39f6f0735c55b6a0cc3045488d69f6227b177dd4f4602d7b672d584ce0ebb" [label="/bin/sh -c export uid=1001 gid=1001 &&     mkdir -p /home/adios2 &&     echo \"adios2:x:${uid}:${gid}:adios2,,,:/home/adios2:/bin/bash\" >> /etc/passwd &&     echo \"adios2:x:${uid}:\" >> /etc/group &&     chown ${uid}:${gid} -R /home/adios2" shape="box"];
  "sha256:b2fe9bd03abff2cfeecb18946b87adc8b89323186b02fd20a0e557ca3120d10b" [label="/bin/sh -c curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | bash &&     dnf install -y git-lfs &&     runuser -l adios2 -c 'git lfs install'" shape="box"];
  "sha256:67ee99a2eed4d7c1e272cbfe86930324aa382356acefd23ce8291f70d3498e79" [label="/bin/sh -c rm -rfv /tmp/* /var/cache/dnf" shape="box"];
  "sha256:7e08b31844cfc369f051bffa6b2857439c0154df420f5dd2c5f2c302591f51af" [label="mkdir{path=/home/adios2}" shape="note"];
  "sha256:f9764c2572c76d37012c7ee953a9129654d44a65f9c6966f9dd2a724c1f6c362" [label="sha256:f9764c2572c76d37012c7ee953a9129654d44a65f9c6966f9dd2a724c1f6c362" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:6a09b9b070efc1cf7bd93caccfdb5af008678cc1f7b72c8fc11baa0bd0d4f820" [label=""];
  "sha256:6a09b9b070efc1cf7bd93caccfdb5af008678cc1f7b72c8fc11baa0bd0d4f820" -> "sha256:96cd9ab9471347e532a5e94ae1ffc39a9ef2ccb9d52fbcd3aa5fd8366d74b0f6" [label=""];
  "sha256:96cd9ab9471347e532a5e94ae1ffc39a9ef2ccb9d52fbcd3aa5fd8366d74b0f6" -> "sha256:0ac6f26d4e8972418ca3d919bd47b33427fdc0fc2bee43c6de561650f3b693f6" [label=""];
  "sha256:0ac6f26d4e8972418ca3d919bd47b33427fdc0fc2bee43c6de561650f3b693f6" -> "sha256:79d39f6f0735c55b6a0cc3045488d69f6227b177dd4f4602d7b672d584ce0ebb" [label=""];
  "sha256:79d39f6f0735c55b6a0cc3045488d69f6227b177dd4f4602d7b672d584ce0ebb" -> "sha256:b2fe9bd03abff2cfeecb18946b87adc8b89323186b02fd20a0e557ca3120d10b" [label=""];
  "sha256:b2fe9bd03abff2cfeecb18946b87adc8b89323186b02fd20a0e557ca3120d10b" -> "sha256:67ee99a2eed4d7c1e272cbfe86930324aa382356acefd23ce8291f70d3498e79" [label=""];
  "sha256:67ee99a2eed4d7c1e272cbfe86930324aa382356acefd23ce8291f70d3498e79" -> "sha256:7e08b31844cfc369f051bffa6b2857439c0154df420f5dd2c5f2c302591f51af" [label=""];
  "sha256:7e08b31844cfc369f051bffa6b2857439c0154df420f5dd2c5f2c302591f51af" -> "sha256:f9764c2572c76d37012c7ee953a9129654d44a65f9c6966f9dd2a724c1f6c362" [label=""];
}

