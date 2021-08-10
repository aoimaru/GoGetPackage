[app/sources/289830862.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:bb4e77f19b785d7d405ba881bfe3204794e414f375ee5328f2d43664dae3fbf1" [label="/bin/sh -c yum -y install openssl-devel openssl-static wget pkg-config ca-certificates make gcc-c++ pkgconfig git rpm-build         && (mkdir -p /cmake && wget --no-verbose --output-document=- https://cmake.org/files/v3.12/cmake-3.12.3-Linux-x86_64.tar.gz | tar xvz -C /cmake --strip 1)         && yum -y clean all" shape="box"];
  "sha256:8c7b7e6eb281d9329e4b0bc1ae63e05d5234911b25261b95b2971fc94edd4cf7" [label="local://context" shape="ellipse"];
  "sha256:a8a488e82ac368010285d50886ea9dfd4d9b98c04ba3904c04df0aa1eaa13937" [label="copy{src=/, dest=/tmp/seabolt}" shape="note"];
  "sha256:58b997cf14a6d0c81358d8ce8e4de576f8e79594240b2572d334672555beef8b" [label="mkdir{path=/tmp/seabolt/build-docker}" shape="note"];
  "sha256:33fa525a42a55939809a8b39af5fb218371e666408fe8674b87b2427bb8ae057" [label="/bin/sh -c /cmake/bin/cmake -D CMAKE_BUILD_TYPE=Release /tmp/seabolt     && /cmake/bin/cmake --build . --target package" shape="box"];
  "sha256:365df1c78339a66b58d697bf65040536566cb4e4f1a6e7348fd7d35e46c4333c" [label="sha256:365df1c78339a66b58d697bf65040536566cb4e4f1a6e7348fd7d35e46c4333c" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:bb4e77f19b785d7d405ba881bfe3204794e414f375ee5328f2d43664dae3fbf1" [label=""];
  "sha256:bb4e77f19b785d7d405ba881bfe3204794e414f375ee5328f2d43664dae3fbf1" -> "sha256:a8a488e82ac368010285d50886ea9dfd4d9b98c04ba3904c04df0aa1eaa13937" [label=""];
  "sha256:8c7b7e6eb281d9329e4b0bc1ae63e05d5234911b25261b95b2971fc94edd4cf7" -> "sha256:a8a488e82ac368010285d50886ea9dfd4d9b98c04ba3904c04df0aa1eaa13937" [label=""];
  "sha256:a8a488e82ac368010285d50886ea9dfd4d9b98c04ba3904c04df0aa1eaa13937" -> "sha256:58b997cf14a6d0c81358d8ce8e4de576f8e79594240b2572d334672555beef8b" [label=""];
  "sha256:58b997cf14a6d0c81358d8ce8e4de576f8e79594240b2572d334672555beef8b" -> "sha256:33fa525a42a55939809a8b39af5fb218371e666408fe8674b87b2427bb8ae057" [label=""];
  "sha256:33fa525a42a55939809a8b39af5fb218371e666408fe8674b87b2427bb8ae057" -> "sha256:365df1c78339a66b58d697bf65040536566cb4e4f1a6e7348fd7d35e46c4333c" [label=""];
}

