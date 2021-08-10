[app/sources/451802942.Dockerfile]
digraph {
  "sha256:7912b197187b03b65bd3365adb49e5891af3a2ab2b85ec638f8040c56fa287f8" [label="docker-image://docker.io/library/fedora:30" shape="ellipse"];
  "sha256:6940f0e1371fd5b7d91a0c676e3bebcd862bf24be5ca4ccc602d3123ed57a3cb" [label="/bin/sh -c dnf -y install make cmake gcc gcc-c++ kernel-devel automake libtool bison sharutils pkgconf libacl-devel libasan librichacl-devel bzip2-devel libzip-devel zlib-devel xz-devel lz4-devel libzstd-devel openssl-devel groff ghostscript" shape="box"];
  "sha256:baa15a49cf93c11d55e9835850b732e3d1cd786005c89bc09d9952af5b3baa11" [label="sha256:baa15a49cf93c11d55e9835850b732e3d1cd786005c89bc09d9952af5b3baa11" shape="plaintext"];
  "sha256:7912b197187b03b65bd3365adb49e5891af3a2ab2b85ec638f8040c56fa287f8" -> "sha256:6940f0e1371fd5b7d91a0c676e3bebcd862bf24be5ca4ccc602d3123ed57a3cb" [label=""];
  "sha256:6940f0e1371fd5b7d91a0c676e3bebcd862bf24be5ca4ccc602d3123ed57a3cb" -> "sha256:baa15a49cf93c11d55e9835850b732e3d1cd786005c89bc09d9952af5b3baa11" [label=""];
}

