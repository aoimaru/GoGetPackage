[app/sources/382085423.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:480e0b735c2c7ff1d9bf076c2ab5067bd5c4f31474b56afbdce887a8f237d679" [label="local://context" shape="ellipse"];
  "sha256:cb6c17616f4ac6584066609180a883eff63f6257246622c81f1649a1ee845f25" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:4b2015898d53286bfdbc5194d73d17cf8c5c0572aa60f61067bc05f64e01fc38" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:8c65f4a5c0774d14269fea60c091e2c3836c7adebf80540ee5167083774b8b64" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:19038647b9957bd1095741f34d2473cf589e2cc0c4b5b9aa7421975068b99a56" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:4ef419d97f4b4165fa18369855ead74c5679a1781eb61f2e9182b3e1aff029eb" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:b1f77189d876451eedeac2392cd5b2a207a911a094f016845645f0d00b126372" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:8bdcfff8742fa017aad52d2e2b36cfcf86fe3350f7984106871d0e77c82d52d3" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:d1d6babb7cde8043a0d3c1bcc716051ac3a3371a8db1f2fefa15b239b39f98ac" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:17b91b44f522089f3eac7d14033c5e28430818ef23dfdf16c7b1be623bfed221" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:a5d3fbee7a8717e22e1cae9ba2d1fd4aa3b0b0b31911eed03d07069a17284ce4" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:c3bbf862148b321189564c30efcf2b9f756b853c6a49bc5167933e4d7736ab0d" [label="/bin/sh -c /install/install_pi_toolchain.sh" shape="box"];
  "sha256:b0b87cf3260ad01d03da2c4c10404a8795f5edba2fd53fc32d670a5dad7a16e8" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:5a816a19492942f52049135e5ee6afa615abbcea53bd9f5c32f017e80311a7a3" [label="sha256:5a816a19492942f52049135e5ee6afa615abbcea53bd9f5c32f017e80311a7a3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:cb6c17616f4ac6584066609180a883eff63f6257246622c81f1649a1ee845f25" [label=""];
  "sha256:480e0b735c2c7ff1d9bf076c2ab5067bd5c4f31474b56afbdce887a8f237d679" -> "sha256:cb6c17616f4ac6584066609180a883eff63f6257246622c81f1649a1ee845f25" [label=""];
  "sha256:cb6c17616f4ac6584066609180a883eff63f6257246622c81f1649a1ee845f25" -> "sha256:4b2015898d53286bfdbc5194d73d17cf8c5c0572aa60f61067bc05f64e01fc38" [label=""];
  "sha256:4b2015898d53286bfdbc5194d73d17cf8c5c0572aa60f61067bc05f64e01fc38" -> "sha256:8c65f4a5c0774d14269fea60c091e2c3836c7adebf80540ee5167083774b8b64" [label=""];
  "sha256:8c65f4a5c0774d14269fea60c091e2c3836c7adebf80540ee5167083774b8b64" -> "sha256:19038647b9957bd1095741f34d2473cf589e2cc0c4b5b9aa7421975068b99a56" [label=""];
  "sha256:19038647b9957bd1095741f34d2473cf589e2cc0c4b5b9aa7421975068b99a56" -> "sha256:4ef419d97f4b4165fa18369855ead74c5679a1781eb61f2e9182b3e1aff029eb" [label=""];
  "sha256:4ef419d97f4b4165fa18369855ead74c5679a1781eb61f2e9182b3e1aff029eb" -> "sha256:b1f77189d876451eedeac2392cd5b2a207a911a094f016845645f0d00b126372" [label=""];
  "sha256:b1f77189d876451eedeac2392cd5b2a207a911a094f016845645f0d00b126372" -> "sha256:8bdcfff8742fa017aad52d2e2b36cfcf86fe3350f7984106871d0e77c82d52d3" [label=""];
  "sha256:8bdcfff8742fa017aad52d2e2b36cfcf86fe3350f7984106871d0e77c82d52d3" -> "sha256:d1d6babb7cde8043a0d3c1bcc716051ac3a3371a8db1f2fefa15b239b39f98ac" [label=""];
  "sha256:d1d6babb7cde8043a0d3c1bcc716051ac3a3371a8db1f2fefa15b239b39f98ac" -> "sha256:17b91b44f522089f3eac7d14033c5e28430818ef23dfdf16c7b1be623bfed221" [label=""];
  "sha256:17b91b44f522089f3eac7d14033c5e28430818ef23dfdf16c7b1be623bfed221" -> "sha256:a5d3fbee7a8717e22e1cae9ba2d1fd4aa3b0b0b31911eed03d07069a17284ce4" [label=""];
  "sha256:a5d3fbee7a8717e22e1cae9ba2d1fd4aa3b0b0b31911eed03d07069a17284ce4" -> "sha256:c3bbf862148b321189564c30efcf2b9f756b853c6a49bc5167933e4d7736ab0d" [label=""];
  "sha256:c3bbf862148b321189564c30efcf2b9f756b853c6a49bc5167933e4d7736ab0d" -> "sha256:b0b87cf3260ad01d03da2c4c10404a8795f5edba2fd53fc32d670a5dad7a16e8" [label=""];
  "sha256:480e0b735c2c7ff1d9bf076c2ab5067bd5c4f31474b56afbdce887a8f237d679" -> "sha256:b0b87cf3260ad01d03da2c4c10404a8795f5edba2fd53fc32d670a5dad7a16e8" [label=""];
  "sha256:b0b87cf3260ad01d03da2c4c10404a8795f5edba2fd53fc32d670a5dad7a16e8" -> "sha256:5a816a19492942f52049135e5ee6afa615abbcea53bd9f5c32f017e80311a7a3" [label=""];
}

