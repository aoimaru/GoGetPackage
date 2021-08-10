[app/sources/280160644.Dockerfile]
digraph {
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" [label="docker-image://docker.io/nvidia/cuda:7.5-cudnn5-devel" shape="ellipse"];
  "sha256:30f828147db4d057cf89103a6a1f71b9c8a3d5c3de5be8180eb63f0029925a99" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         python-numpy         python-pip         rsync         software-properties-common         swig         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:600906f8c0584d2fe72e9003f6521af305d48efca97d67a711c01f64aa53ba50" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:f94cf7e54f0c0d4bbdb13768f08d66dbcc7ea49ff5b7db530c53d513b9ad0504" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:af32174c0d044c3e9af876d18f2588cfa6dd27a1a7793bd9883770a26b194c13" [label="local://context" shape="ellipse"];
  "sha256:8a8dfaf85f36f70b30f82c03cf3c3ff901efe5eba3048fbb74fe7040692463d0" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:4b83a4b8a0e1e8d602272776120e6c37b6dd38699e7af2232712d17ab0613680" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:3f85f63d43cac0757c3be6206d7072227b59a3b099da29718bf373553db2c7fb" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:32e6e9cc7342bb65e478c090fb8fc579399b52b4d96e24bf2cfd251029ab2be9" [label="/bin/sh -c echo \"startup --batch\" >>/root/.bazelrc" shape="box"];
  "sha256:5d5e90dd20e4ba59a94a8456e6aacd19039f670c4f1edecb1df7717339b713b1" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:b28aee528925f4a066a7f5bf192ac16f18c51a4117b509551797b3c11820852f" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:2bb33ade8a0a69435becfbaafea0153ea6c49346e4f2974acae86ea7ad5388a2" [label="/bin/sh -c git clone -b r0.10 --recursive --recurse-submodules https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r0.10" shape="box"];
  "sha256:a7b8780f99e88dd37b7228bc98289aca5d232fcf5f05901abf06d42c907e00f5" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:5455a6c4c2d042f22ee984bb6062182b497b097ffbcda3ce081645f228f2a502" [label="/bin/sh -c ./configure &&     bazel build -c opt --config=cuda tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip install --upgrade /tmp/pip/tensorflow-*.whl" shape="box"];
  "sha256:0b82a44fb9ccbd4a8e465cf537841ff837188010a3d5fd52c242ee633eb64d37" [label="mkdir{path=/root}" shape="note"];
  "sha256:c0229a8b158aff2455ae401e578cf339c4d96bd93663043454e05913c27ee9d0" [label="/bin/bash" shape="box"];
  "sha256:0fb465ddfb112c140a98ebe9d57db19512d49349225774cab6f63f97da9a343e" [label="sha256:0fb465ddfb112c140a98ebe9d57db19512d49349225774cab6f63f97da9a343e" shape="plaintext"];
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" -> "sha256:30f828147db4d057cf89103a6a1f71b9c8a3d5c3de5be8180eb63f0029925a99" [label=""];
  "sha256:30f828147db4d057cf89103a6a1f71b9c8a3d5c3de5be8180eb63f0029925a99" -> "sha256:600906f8c0584d2fe72e9003f6521af305d48efca97d67a711c01f64aa53ba50" [label=""];
  "sha256:600906f8c0584d2fe72e9003f6521af305d48efca97d67a711c01f64aa53ba50" -> "sha256:f94cf7e54f0c0d4bbdb13768f08d66dbcc7ea49ff5b7db530c53d513b9ad0504" [label=""];
  "sha256:f94cf7e54f0c0d4bbdb13768f08d66dbcc7ea49ff5b7db530c53d513b9ad0504" -> "sha256:8a8dfaf85f36f70b30f82c03cf3c3ff901efe5eba3048fbb74fe7040692463d0" [label=""];
  "sha256:af32174c0d044c3e9af876d18f2588cfa6dd27a1a7793bd9883770a26b194c13" -> "sha256:8a8dfaf85f36f70b30f82c03cf3c3ff901efe5eba3048fbb74fe7040692463d0" [label=""];
  "sha256:8a8dfaf85f36f70b30f82c03cf3c3ff901efe5eba3048fbb74fe7040692463d0" -> "sha256:4b83a4b8a0e1e8d602272776120e6c37b6dd38699e7af2232712d17ab0613680" [label=""];
  "sha256:af32174c0d044c3e9af876d18f2588cfa6dd27a1a7793bd9883770a26b194c13" -> "sha256:4b83a4b8a0e1e8d602272776120e6c37b6dd38699e7af2232712d17ab0613680" [label=""];
  "sha256:4b83a4b8a0e1e8d602272776120e6c37b6dd38699e7af2232712d17ab0613680" -> "sha256:3f85f63d43cac0757c3be6206d7072227b59a3b099da29718bf373553db2c7fb" [label=""];
  "sha256:3f85f63d43cac0757c3be6206d7072227b59a3b099da29718bf373553db2c7fb" -> "sha256:32e6e9cc7342bb65e478c090fb8fc579399b52b4d96e24bf2cfd251029ab2be9" [label=""];
  "sha256:32e6e9cc7342bb65e478c090fb8fc579399b52b4d96e24bf2cfd251029ab2be9" -> "sha256:5d5e90dd20e4ba59a94a8456e6aacd19039f670c4f1edecb1df7717339b713b1" [label=""];
  "sha256:5d5e90dd20e4ba59a94a8456e6aacd19039f670c4f1edecb1df7717339b713b1" -> "sha256:b28aee528925f4a066a7f5bf192ac16f18c51a4117b509551797b3c11820852f" [label=""];
  "sha256:b28aee528925f4a066a7f5bf192ac16f18c51a4117b509551797b3c11820852f" -> "sha256:2bb33ade8a0a69435becfbaafea0153ea6c49346e4f2974acae86ea7ad5388a2" [label=""];
  "sha256:2bb33ade8a0a69435becfbaafea0153ea6c49346e4f2974acae86ea7ad5388a2" -> "sha256:a7b8780f99e88dd37b7228bc98289aca5d232fcf5f05901abf06d42c907e00f5" [label=""];
  "sha256:a7b8780f99e88dd37b7228bc98289aca5d232fcf5f05901abf06d42c907e00f5" -> "sha256:5455a6c4c2d042f22ee984bb6062182b497b097ffbcda3ce081645f228f2a502" [label=""];
  "sha256:5455a6c4c2d042f22ee984bb6062182b497b097ffbcda3ce081645f228f2a502" -> "sha256:0b82a44fb9ccbd4a8e465cf537841ff837188010a3d5fd52c242ee633eb64d37" [label=""];
  "sha256:0b82a44fb9ccbd4a8e465cf537841ff837188010a3d5fd52c242ee633eb64d37" -> "sha256:c0229a8b158aff2455ae401e578cf339c4d96bd93663043454e05913c27ee9d0" [label=""];
  "sha256:c0229a8b158aff2455ae401e578cf339c4d96bd93663043454e05913c27ee9d0" -> "sha256:0fb465ddfb112c140a98ebe9d57db19512d49349225774cab6f63f97da9a343e" [label=""];
}

