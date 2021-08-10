[app/sources/430633881.Dockerfile]
digraph {
  "sha256:d4bc244d9d0e30df868c6f589cd2ae12e5d7aa5a9b12d3fcf6b8e5a7d14abf45" [label="docker-image://docker.io/msopentechcn/mono:latest" shape="ellipse"];
  "sha256:e1152ac002214d282cf1e5b411c186c5172c94ad98d59962c08531f74430150f" [label="/bin/sh -c apt-get install openssh-server -y" shape="box"];
  "sha256:e6c3da2626314872167fc46935d802889a4ebb562efc83e8d384019eb149205d" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:a9ec545ec18f8c5264a22224f6a76211f6b3046d18652bfb934b4874bf14c39b" [label="/bin/sh -c echo 'root:acoman' | chpasswd" shape="box"];
  "sha256:cc0b08bc550f7d002a0aec65fe147ab525649fd1ccba5cd30c11222108108120" [label="/bin/sh -c sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config" shape="box"];
  "sha256:2d1c1f8ffa385b775d826dc7896888baf5f7b3bc9f5f0cb282c6f6646c7e163e" [label="sha256:2d1c1f8ffa385b775d826dc7896888baf5f7b3bc9f5f0cb282c6f6646c7e163e" shape="plaintext"];
  "sha256:d4bc244d9d0e30df868c6f589cd2ae12e5d7aa5a9b12d3fcf6b8e5a7d14abf45" -> "sha256:e1152ac002214d282cf1e5b411c186c5172c94ad98d59962c08531f74430150f" [label=""];
  "sha256:e1152ac002214d282cf1e5b411c186c5172c94ad98d59962c08531f74430150f" -> "sha256:e6c3da2626314872167fc46935d802889a4ebb562efc83e8d384019eb149205d" [label=""];
  "sha256:e6c3da2626314872167fc46935d802889a4ebb562efc83e8d384019eb149205d" -> "sha256:a9ec545ec18f8c5264a22224f6a76211f6b3046d18652bfb934b4874bf14c39b" [label=""];
  "sha256:a9ec545ec18f8c5264a22224f6a76211f6b3046d18652bfb934b4874bf14c39b" -> "sha256:cc0b08bc550f7d002a0aec65fe147ab525649fd1ccba5cd30c11222108108120" [label=""];
  "sha256:cc0b08bc550f7d002a0aec65fe147ab525649fd1ccba5cd30c11222108108120" -> "sha256:2d1c1f8ffa385b775d826dc7896888baf5f7b3bc9f5f0cb282c6f6646c7e163e" [label=""];
}

