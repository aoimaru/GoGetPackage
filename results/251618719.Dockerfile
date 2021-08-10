[app/sources/251618719.Dockerfile]
digraph {
  "sha256:8857ab46b262b380b23e03a5d563dfb0e45500b5c1496659627c964f8bab4895" [label="docker-image://docker.io/clearlinux/os-core:latest@sha256:9c7d37c10d48b5d9d4e1e24aa1a9ab9401a5ffa38649787ed32439afc9b51321" shape="ellipse"];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" [label="docker-image://docker.io/clearlinux/os-core:latest" shape="ellipse"];
  "sha256:b7127dda91934d1ae74453bd9194b39ba93de8a47d850a0a590e4098dd66f4bc" [label="docker-image://docker.io/library/clearlinux:latest@sha256:58de2647bf5466d2c27ddf212a834fe088fb403d88122dc796d122c20bc1339a" shape="ellipse"];
  "sha256:cab26a0d7c7f883340a382da3d32c6cf9a32ec88a58f4bf7b805709b9759f83e" [label="/bin/sh -c swupd update --no-boot-update $swupd_args" shape="box"];
  "sha256:95b9a9de6979ee1955e32233ee6c9ed5b3e3b54bfe7970d2f2168e91a93f710f" [label="copy{src=/usr/lib/os-release, dest=/}" shape="note"];
  "sha256:a111b8afd3e8de26ba40370d0816cbb450530534ecde403ecc087735a97e633e" [label="/bin/sh -c source /os-release &&     mkdir /install_root     && swupd os-install -V ${VERSION_ID}     --path /install_root --statedir /swupd-state     --bundles=redis-native,findutils --no-scripts     && rm -rf /install_root/var/lib/swupd/*" shape="box"];
  "sha256:aada0d19a30f6146d3b0303f447a9e9e72f17c93c7f86b1180f06078d4e5af8c" [label="/bin/sh -c mkdir /os_core_install" shape="box"];
  "sha256:6d9eedccf7a716143c5142ea24f7ad28e4636877fe9a69c77001e5cb1e8cdd7e" [label="copy{src=/, dest=/os_core_install/}" shape="note"];
  "sha256:9eb1789cfc36de2d44ee65d4bff295285a83eb207fc6adc7483f61ea3ab8a022" [label="/bin/sh -c cd / &&     find os_core_install | sed -e 's/os_core_install/install_root/' | xargs rm -d || true" shape="box"];
  "sha256:b1edbcc96127c2b1eda99f4961aebd48828a43f601d5a81de5ae878c38e842bc" [label="copy{src=/install_root, dest=/}" shape="note"];
  "sha256:b1ca86b5c828d23ebbafb9c60128884791ef2814116c64b0ca1dab54af40ab01" [label="/bin/sh -c mkdir /data && chown redis:redis /data" shape="box"];
  "sha256:ff0054183c64406f783c9c76bb7855c43a0a488f02d6ba296ef07bd4f7bef3fe" [label="mkdir{path=/data}" shape="note"];
  "sha256:c7a83a0697ccd464bf6bfbe55a41a04b47248deb43e7a42802d55fd6c907e9c9" [label="local://context" shape="ellipse"];
  "sha256:6e20bd5f42f7bd3ed39e556d68acae915bd11c806360ebe07fc1ab46b60bf318" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9e0ce996c254cffb5e121c74eaf28e603a8fff388a3fd9b08d54e424785682bf" [label="/bin/sh -c chmod +x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:106857e1572b400a8b8cd82c209bd866e0b59f19e85410b701329d691033619f" [label="sha256:106857e1572b400a8b8cd82c209bd866e0b59f19e85410b701329d691033619f" shape="plaintext"];
  "sha256:b7127dda91934d1ae74453bd9194b39ba93de8a47d850a0a590e4098dd66f4bc" -> "sha256:cab26a0d7c7f883340a382da3d32c6cf9a32ec88a58f4bf7b805709b9759f83e" [label=""];
  "sha256:cab26a0d7c7f883340a382da3d32c6cf9a32ec88a58f4bf7b805709b9759f83e" -> "sha256:95b9a9de6979ee1955e32233ee6c9ed5b3e3b54bfe7970d2f2168e91a93f710f" [label=""];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" -> "sha256:95b9a9de6979ee1955e32233ee6c9ed5b3e3b54bfe7970d2f2168e91a93f710f" [label=""];
  "sha256:95b9a9de6979ee1955e32233ee6c9ed5b3e3b54bfe7970d2f2168e91a93f710f" -> "sha256:a111b8afd3e8de26ba40370d0816cbb450530534ecde403ecc087735a97e633e" [label=""];
  "sha256:a111b8afd3e8de26ba40370d0816cbb450530534ecde403ecc087735a97e633e" -> "sha256:aada0d19a30f6146d3b0303f447a9e9e72f17c93c7f86b1180f06078d4e5af8c" [label=""];
  "sha256:aada0d19a30f6146d3b0303f447a9e9e72f17c93c7f86b1180f06078d4e5af8c" -> "sha256:6d9eedccf7a716143c5142ea24f7ad28e4636877fe9a69c77001e5cb1e8cdd7e" [label=""];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" -> "sha256:6d9eedccf7a716143c5142ea24f7ad28e4636877fe9a69c77001e5cb1e8cdd7e" [label=""];
  "sha256:6d9eedccf7a716143c5142ea24f7ad28e4636877fe9a69c77001e5cb1e8cdd7e" -> "sha256:9eb1789cfc36de2d44ee65d4bff295285a83eb207fc6adc7483f61ea3ab8a022" [label=""];
  "sha256:8857ab46b262b380b23e03a5d563dfb0e45500b5c1496659627c964f8bab4895" -> "sha256:b1edbcc96127c2b1eda99f4961aebd48828a43f601d5a81de5ae878c38e842bc" [label=""];
  "sha256:9eb1789cfc36de2d44ee65d4bff295285a83eb207fc6adc7483f61ea3ab8a022" -> "sha256:b1edbcc96127c2b1eda99f4961aebd48828a43f601d5a81de5ae878c38e842bc" [label=""];
  "sha256:b1edbcc96127c2b1eda99f4961aebd48828a43f601d5a81de5ae878c38e842bc" -> "sha256:b1ca86b5c828d23ebbafb9c60128884791ef2814116c64b0ca1dab54af40ab01" [label=""];
  "sha256:b1ca86b5c828d23ebbafb9c60128884791ef2814116c64b0ca1dab54af40ab01" -> "sha256:ff0054183c64406f783c9c76bb7855c43a0a488f02d6ba296ef07bd4f7bef3fe" [label=""];
  "sha256:ff0054183c64406f783c9c76bb7855c43a0a488f02d6ba296ef07bd4f7bef3fe" -> "sha256:6e20bd5f42f7bd3ed39e556d68acae915bd11c806360ebe07fc1ab46b60bf318" [label=""];
  "sha256:c7a83a0697ccd464bf6bfbe55a41a04b47248deb43e7a42802d55fd6c907e9c9" -> "sha256:6e20bd5f42f7bd3ed39e556d68acae915bd11c806360ebe07fc1ab46b60bf318" [label=""];
  "sha256:6e20bd5f42f7bd3ed39e556d68acae915bd11c806360ebe07fc1ab46b60bf318" -> "sha256:9e0ce996c254cffb5e121c74eaf28e603a8fff388a3fd9b08d54e424785682bf" [label=""];
  "sha256:9e0ce996c254cffb5e121c74eaf28e603a8fff388a3fd9b08d54e424785682bf" -> "sha256:106857e1572b400a8b8cd82c209bd866e0b59f19e85410b701329d691033619f" [label=""];
}

