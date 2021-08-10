[app/sources/254830992.Dockerfile]
digraph {
  "sha256:26d3f206d352de01072d8ee31ec9d7e9f63fc1292e2904380b7a6f8ee7ffde99" [label="docker-image://docker.io/snapcraft/ubuntu-base:arm64-16.04.1" shape="ellipse"];
  "sha256:3b4c565245eeb44ce06c798c92fe96f0bb01b0f4a6e80f65cbbb4f27f4e0d027" [label="local://context" shape="ellipse"];
  "sha256:fde137562a4b403abc3e6d959c571d1d2a6298bd22e6d59bdf82feafd2d3ae04" [label="copy{src=/qemu-aarch64-static, dest=/usr/bin/qemu-aarch64-static}" shape="note"];
  "sha256:31e8b4566031c1c644cff1052240edac19b76c736187a1c869c83f0ed1d10e37" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:fb65748a7eb6e79c564bd6566135b3f585a530b4d29af0bf147c361ed9ca249b" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:ad16b6d2eb1dd137043945382a482c45949612746bd33ae9db81a1777b479e90" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:48241a42096fd522dc313965d312aee9679deb698ebba74c161a3702988596a9" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:09f73bbb744968a27cf7dcbe55bb1125637fa2d49a97ea25aa941ad3f405e4d8" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git \tca-certificates \tcurl" shape="box"];
  "sha256:2b6533b6260d02952a3e5c96c708b0d8c27d43e838a40da7efa0d50a239362e1" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft" shape="box"];
  "sha256:889b12dd2dd56c2c4ae164a897aa6813c72d6bd5925e1cfe1df00c699741d389" [label="/bin/sh -c cd snapcraft  && echo \"override_dh_auto_test:\" >> debian/rules  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc" shape="box"];
  "sha256:39e182a664595e690c72c3dbb377a267b4af189125121f5463f96126c1e18ce8" [label="/bin/sh -c apt-get install -y ./*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:c6a759e52ef36fb4b3eb51bde5b7eaaa1b867b990f08ff324107a89d2a1d91eb" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:22c6bbb4c6f876653904f99a726a4995ad87c2644dcc040fe888d9905721b686" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:7f4a8b83ff383577351164b01182f434d65342487b5d6f9c0764cfd46d9ce23e" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:9cc44fe0d5c38aa4e532189e62c0999379b1704afd99d8f32d9d0d5959af8802" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:0b205ce6fdf50dc6de1b4128244173a187105718a33240e1e22727ef1b45fd1a" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:5390b47aa1c205978e0e66ed356b09a8cb71b8489d428ad0f105d01a5c4f11fe" [label="mkdir{path=/build}" shape="note"];
  "sha256:c99a59ce9b4188814dca6336835f4544206357c730910a922f8662f79ddafba7" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:409597ae1d63c413dd202c82c5b34c46740cc979d06c3e1057e29ed2b93e4a8d" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:8678b7ca0aad5ee629690f6470e3401da46ac3eb00078677e5907e2e122fbec9" [label="sha256:8678b7ca0aad5ee629690f6470e3401da46ac3eb00078677e5907e2e122fbec9" shape="plaintext"];
  "sha256:26d3f206d352de01072d8ee31ec9d7e9f63fc1292e2904380b7a6f8ee7ffde99" -> "sha256:fde137562a4b403abc3e6d959c571d1d2a6298bd22e6d59bdf82feafd2d3ae04" [label=""];
  "sha256:3b4c565245eeb44ce06c798c92fe96f0bb01b0f4a6e80f65cbbb4f27f4e0d027" -> "sha256:fde137562a4b403abc3e6d959c571d1d2a6298bd22e6d59bdf82feafd2d3ae04" [label=""];
  "sha256:fde137562a4b403abc3e6d959c571d1d2a6298bd22e6d59bdf82feafd2d3ae04" -> "sha256:31e8b4566031c1c644cff1052240edac19b76c736187a1c869c83f0ed1d10e37" [label=""];
  "sha256:31e8b4566031c1c644cff1052240edac19b76c736187a1c869c83f0ed1d10e37" -> "sha256:fb65748a7eb6e79c564bd6566135b3f585a530b4d29af0bf147c361ed9ca249b" [label=""];
  "sha256:fb65748a7eb6e79c564bd6566135b3f585a530b4d29af0bf147c361ed9ca249b" -> "sha256:ad16b6d2eb1dd137043945382a482c45949612746bd33ae9db81a1777b479e90" [label=""];
  "sha256:ad16b6d2eb1dd137043945382a482c45949612746bd33ae9db81a1777b479e90" -> "sha256:48241a42096fd522dc313965d312aee9679deb698ebba74c161a3702988596a9" [label=""];
  "sha256:48241a42096fd522dc313965d312aee9679deb698ebba74c161a3702988596a9" -> "sha256:09f73bbb744968a27cf7dcbe55bb1125637fa2d49a97ea25aa941ad3f405e4d8" [label=""];
  "sha256:09f73bbb744968a27cf7dcbe55bb1125637fa2d49a97ea25aa941ad3f405e4d8" -> "sha256:2b6533b6260d02952a3e5c96c708b0d8c27d43e838a40da7efa0d50a239362e1" [label=""];
  "sha256:2b6533b6260d02952a3e5c96c708b0d8c27d43e838a40da7efa0d50a239362e1" -> "sha256:889b12dd2dd56c2c4ae164a897aa6813c72d6bd5925e1cfe1df00c699741d389" [label=""];
  "sha256:889b12dd2dd56c2c4ae164a897aa6813c72d6bd5925e1cfe1df00c699741d389" -> "sha256:39e182a664595e690c72c3dbb377a267b4af189125121f5463f96126c1e18ce8" [label=""];
  "sha256:39e182a664595e690c72c3dbb377a267b4af189125121f5463f96126c1e18ce8" -> "sha256:c6a759e52ef36fb4b3eb51bde5b7eaaa1b867b990f08ff324107a89d2a1d91eb" [label=""];
  "sha256:c6a759e52ef36fb4b3eb51bde5b7eaaa1b867b990f08ff324107a89d2a1d91eb" -> "sha256:22c6bbb4c6f876653904f99a726a4995ad87c2644dcc040fe888d9905721b686" [label=""];
  "sha256:22c6bbb4c6f876653904f99a726a4995ad87c2644dcc040fe888d9905721b686" -> "sha256:7f4a8b83ff383577351164b01182f434d65342487b5d6f9c0764cfd46d9ce23e" [label=""];
  "sha256:7f4a8b83ff383577351164b01182f434d65342487b5d6f9c0764cfd46d9ce23e" -> "sha256:9cc44fe0d5c38aa4e532189e62c0999379b1704afd99d8f32d9d0d5959af8802" [label=""];
  "sha256:9cc44fe0d5c38aa4e532189e62c0999379b1704afd99d8f32d9d0d5959af8802" -> "sha256:0b205ce6fdf50dc6de1b4128244173a187105718a33240e1e22727ef1b45fd1a" [label=""];
  "sha256:0b205ce6fdf50dc6de1b4128244173a187105718a33240e1e22727ef1b45fd1a" -> "sha256:5390b47aa1c205978e0e66ed356b09a8cb71b8489d428ad0f105d01a5c4f11fe" [label=""];
  "sha256:5390b47aa1c205978e0e66ed356b09a8cb71b8489d428ad0f105d01a5c4f11fe" -> "sha256:c99a59ce9b4188814dca6336835f4544206357c730910a922f8662f79ddafba7" [label=""];
  "sha256:3b4c565245eeb44ce06c798c92fe96f0bb01b0f4a6e80f65cbbb4f27f4e0d027" -> "sha256:c99a59ce9b4188814dca6336835f4544206357c730910a922f8662f79ddafba7" [label=""];
  "sha256:c99a59ce9b4188814dca6336835f4544206357c730910a922f8662f79ddafba7" -> "sha256:409597ae1d63c413dd202c82c5b34c46740cc979d06c3e1057e29ed2b93e4a8d" [label=""];
  "sha256:409597ae1d63c413dd202c82c5b34c46740cc979d06c3e1057e29ed2b93e4a8d" -> "sha256:8678b7ca0aad5ee629690f6470e3401da46ac3eb00078677e5907e2e122fbec9" [label=""];
}

