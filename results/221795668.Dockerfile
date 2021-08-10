[app/sources/221795668.Dockerfile]
digraph {
  "sha256:42b57a54d1d4cd4ed273c601cb02a77dcaf725def0912f63cd3ad02b21f1fcf7" [label="docker-image://docker.io/bitnami/minideb-extras:stretch-r401@sha256:344fbee55cfdcc836caa6db9b94e98485435ca5cbe0629e15a0fb666653ed209" shape="ellipse"];
  "sha256:b50087baa8f3926ce50b70bb7401288e5839daa3bf70a11cd313a3ba2bb2c65a" [label="/bin/sh -c install_packages libbz2-1.0 libc6 libgcc1 libjemalloc1 libncurses5 libreadline7 libsqlite3-0 libssl1.1 libtinfo5 zlib1g" shape="box"];
  "sha256:9c9160a87963dba2cc0f5bfbdefa2552262663b19eefc5ffd285121e3341d23b" [label="/bin/sh -c bitnami-pkg install python-2.7.16-0 --checksum 1bd6ac396615c99f639a1b4755425accd03e0ec500e52bf068491cc0cac6d385" shape="box"];
  "sha256:ce7d1f327759017351b63730025194380976a05a69f024812117ef514f9d89ee" [label="/bin/sh -c bitnami-pkg install java-1.8.212-0 --checksum 54a18672c8b4c1a44324c607a6bc616f614a062005d5e3384f91f10ff6f6edea" shape="box"];
  "sha256:b895d06169e186c46950c552c26b0da3107bb9dd106cacc13eafd8df0eaaddef" [label="/bin/sh -c bitnami-pkg unpack cassandra-3.11.4-2 --checksum f7f4f21085263e26895ade45078a6a4c01fd48014f0ce9ea73b7be44db4f6366" shape="box"];
  "sha256:7bfdc9a677496464f3e6cf1cf5729351a7b307d3ab86ff8cfd230de78d865e36" [label="/bin/sh -c mkdir -p /docker-entrypoint-initdb.d /opt/bitnami/cassandra/conf/" shape="box"];
  "sha256:990179d7106ef717211ff8e120c62ad050dd2384e3b9724e719d51a9b13c6c0b" [label="/bin/sh -c chmod -R g+rwX /opt/bitnami/cassandra/conf/" shape="box"];
  "sha256:7227c673a18cd2f017eeb4f089deed4951d209d75cf0e1154a60b92f0c141abb" [label="local://context" shape="ellipse"];
  "sha256:f1701916804c7e6a1aca94505bbf2710e67b99f343a35b3e3ad93822a97a2fa5" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:b37859b902ce88c82ac084eaab2dafdfb74061316c28af5af37c071a0f7a2488" [label="sha256:b37859b902ce88c82ac084eaab2dafdfb74061316c28af5af37c071a0f7a2488" shape="plaintext"];
  "sha256:42b57a54d1d4cd4ed273c601cb02a77dcaf725def0912f63cd3ad02b21f1fcf7" -> "sha256:b50087baa8f3926ce50b70bb7401288e5839daa3bf70a11cd313a3ba2bb2c65a" [label=""];
  "sha256:b50087baa8f3926ce50b70bb7401288e5839daa3bf70a11cd313a3ba2bb2c65a" -> "sha256:9c9160a87963dba2cc0f5bfbdefa2552262663b19eefc5ffd285121e3341d23b" [label=""];
  "sha256:9c9160a87963dba2cc0f5bfbdefa2552262663b19eefc5ffd285121e3341d23b" -> "sha256:ce7d1f327759017351b63730025194380976a05a69f024812117ef514f9d89ee" [label=""];
  "sha256:ce7d1f327759017351b63730025194380976a05a69f024812117ef514f9d89ee" -> "sha256:b895d06169e186c46950c552c26b0da3107bb9dd106cacc13eafd8df0eaaddef" [label=""];
  "sha256:b895d06169e186c46950c552c26b0da3107bb9dd106cacc13eafd8df0eaaddef" -> "sha256:7bfdc9a677496464f3e6cf1cf5729351a7b307d3ab86ff8cfd230de78d865e36" [label=""];
  "sha256:7bfdc9a677496464f3e6cf1cf5729351a7b307d3ab86ff8cfd230de78d865e36" -> "sha256:990179d7106ef717211ff8e120c62ad050dd2384e3b9724e719d51a9b13c6c0b" [label=""];
  "sha256:990179d7106ef717211ff8e120c62ad050dd2384e3b9724e719d51a9b13c6c0b" -> "sha256:f1701916804c7e6a1aca94505bbf2710e67b99f343a35b3e3ad93822a97a2fa5" [label=""];
  "sha256:7227c673a18cd2f017eeb4f089deed4951d209d75cf0e1154a60b92f0c141abb" -> "sha256:f1701916804c7e6a1aca94505bbf2710e67b99f343a35b3e3ad93822a97a2fa5" [label=""];
  "sha256:f1701916804c7e6a1aca94505bbf2710e67b99f343a35b3e3ad93822a97a2fa5" -> "sha256:b37859b902ce88c82ac084eaab2dafdfb74061316c28af5af37c071a0f7a2488" [label=""];
}

