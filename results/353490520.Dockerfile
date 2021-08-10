[app/sources/353490520.Dockerfile]
digraph {
  "sha256:aa1765c01d2694cad3c4ab0534e686443cc47ce01dbc52bc58060791e540d336" [label="docker-image://docker.io/bitnami/oraclelinux-extras-base:7-r328@sha256:f6e05ddc1b3fb02d4acda93944bc5503ba22a9f58df26d5303726e0be370305d" shape="ellipse"];
  "sha256:3663edf22190edde3dbd8964ae20854264f82cc804390c20dde3b93f7e7221ae" [label="/bin/sh -c install_packages glibc keyutils-libs krb5-libs libcom_err libedit libgcc libicu libselinux libstdc++ libxml2 libxslt ncurses-libs openssl-libs pcre xz-libs zlib" shape="box"];
  "sha256:5b5cab75b81ed2889d3011c99843913aa2199603ce04c066c4b2cf7291182f90" [label="/bin/sh -c . ./libcomponent.sh && component_unpack \"postgresql\" \"11.4.0-0\" --checksum 9dd5ef580acb72255727ff73377ea2f97fdc8e91c249ec5398500a29e0ffa58d" shape="box"];
  "sha256:bbdff96eff9d86a377643a10418ff1418fcafc80534632a472dcf234d33087d5" [label="local://context" shape="ellipse"];
  "sha256:785c12f088717a2ea049134a740c7db14cc7e3fa7323a53d47f757989d91f0fc" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:3543de899f0ca3d96726d24b9baef48cdf2c3f028a05ddfd83126e5c6f7e9e13" [label="/bin/sh -c rpm -Uvh --nodeps $(repoquery --location nss_wrapper)" shape="box"];
  "sha256:56e6cd11ae039e4089aaec831bfe5aba9e5034b47c99d6d00d8f99d56b9778bf" [label="/bin/sh -c /postunpack.sh" shape="box"];
  "sha256:07a45645d273924646ea25980669f65c59e0b1d4c125398f50721917fb88437a" [label="sha256:07a45645d273924646ea25980669f65c59e0b1d4c125398f50721917fb88437a" shape="plaintext"];
  "sha256:aa1765c01d2694cad3c4ab0534e686443cc47ce01dbc52bc58060791e540d336" -> "sha256:3663edf22190edde3dbd8964ae20854264f82cc804390c20dde3b93f7e7221ae" [label=""];
  "sha256:3663edf22190edde3dbd8964ae20854264f82cc804390c20dde3b93f7e7221ae" -> "sha256:5b5cab75b81ed2889d3011c99843913aa2199603ce04c066c4b2cf7291182f90" [label=""];
  "sha256:5b5cab75b81ed2889d3011c99843913aa2199603ce04c066c4b2cf7291182f90" -> "sha256:785c12f088717a2ea049134a740c7db14cc7e3fa7323a53d47f757989d91f0fc" [label=""];
  "sha256:bbdff96eff9d86a377643a10418ff1418fcafc80534632a472dcf234d33087d5" -> "sha256:785c12f088717a2ea049134a740c7db14cc7e3fa7323a53d47f757989d91f0fc" [label=""];
  "sha256:785c12f088717a2ea049134a740c7db14cc7e3fa7323a53d47f757989d91f0fc" -> "sha256:3543de899f0ca3d96726d24b9baef48cdf2c3f028a05ddfd83126e5c6f7e9e13" [label=""];
  "sha256:3543de899f0ca3d96726d24b9baef48cdf2c3f028a05ddfd83126e5c6f7e9e13" -> "sha256:56e6cd11ae039e4089aaec831bfe5aba9e5034b47c99d6d00d8f99d56b9778bf" [label=""];
  "sha256:56e6cd11ae039e4089aaec831bfe5aba9e5034b47c99d6d00d8f99d56b9778bf" -> "sha256:07a45645d273924646ea25980669f65c59e0b1d4c125398f50721917fb88437a" [label=""];
}

