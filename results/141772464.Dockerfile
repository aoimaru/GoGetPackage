[app/sources/141772464.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f90ab4c13797496f342e9fab89c673eee68df2aad1834015e6e6c289d9c1601c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:63e948fde2adfa9ec41d31ca6a7d2a040daa04b774111926643e2f38224d4b1f" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:5a74185162486fe54230abe1275811e6c7e32b1da20e3fd1a9ea45e69c5ad9c3" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         pandas         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:af0c29945298971de416b6d51369ce3458d54175de3ac822e481af865bb52259" [label="local://context" shape="ellipse"];
  "sha256:7cc86e4b9a2385c39b46ffb23a71ea1b611af95c028f0bab47fdaabc2b5efaa2" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:90327efd96b41c7b0573d7b5e9fa209cb0e749aeb70e6cbe9aa18d4bfd53f9a0" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:db4a4bc8c8eb214f49c1bb1b10b9ef1b1e23d44333c21f9012e2a6dfa57634e9" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:690b5298f0bcd2e73d739e397e49633e28310ec8b4b53677c609bb24d0b4618e" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:1bdae8d73dcd72fe522a5cfff30c184652454abb3451afe2a0e735263b2dfc30" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/etc/bazel.bazelrc" shape="box"];
  "sha256:76b72ab2a0794b5d96dee26698812a6d01eea925f5fd950b90c20dea2f224034" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:06d40f9920d8ffc66fece53cc01a73da27a3d282ef1debdf60eb25205df322e2" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r1.1" shape="box"];
  "sha256:bdfe183cd29fe895e46c848c98e85b2c24718e5e989f5e59e440afa4e889771c" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:0b8af793dd5078f49b236f9cb15730b91e1ef714b2f382a81d874f74c6ef04ba" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured CPU     bazel build -c opt tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:8d5bc7a646e4ffc5cc6cd65905cb99bb42ac6f6116749fb53d435e4f602c7c89" [label="mkdir{path=/root}" shape="note"];
  "sha256:88d00a91d9763259dbc212956235df0cc61c6b9f2dc1630d54cf2302c71f333d" [label="sha256:88d00a91d9763259dbc212956235df0cc61c6b9f2dc1630d54cf2302c71f333d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f90ab4c13797496f342e9fab89c673eee68df2aad1834015e6e6c289d9c1601c" [label=""];
  "sha256:f90ab4c13797496f342e9fab89c673eee68df2aad1834015e6e6c289d9c1601c" -> "sha256:63e948fde2adfa9ec41d31ca6a7d2a040daa04b774111926643e2f38224d4b1f" [label=""];
  "sha256:63e948fde2adfa9ec41d31ca6a7d2a040daa04b774111926643e2f38224d4b1f" -> "sha256:5a74185162486fe54230abe1275811e6c7e32b1da20e3fd1a9ea45e69c5ad9c3" [label=""];
  "sha256:5a74185162486fe54230abe1275811e6c7e32b1da20e3fd1a9ea45e69c5ad9c3" -> "sha256:7cc86e4b9a2385c39b46ffb23a71ea1b611af95c028f0bab47fdaabc2b5efaa2" [label=""];
  "sha256:af0c29945298971de416b6d51369ce3458d54175de3ac822e481af865bb52259" -> "sha256:7cc86e4b9a2385c39b46ffb23a71ea1b611af95c028f0bab47fdaabc2b5efaa2" [label=""];
  "sha256:7cc86e4b9a2385c39b46ffb23a71ea1b611af95c028f0bab47fdaabc2b5efaa2" -> "sha256:90327efd96b41c7b0573d7b5e9fa209cb0e749aeb70e6cbe9aa18d4bfd53f9a0" [label=""];
  "sha256:af0c29945298971de416b6d51369ce3458d54175de3ac822e481af865bb52259" -> "sha256:90327efd96b41c7b0573d7b5e9fa209cb0e749aeb70e6cbe9aa18d4bfd53f9a0" [label=""];
  "sha256:90327efd96b41c7b0573d7b5e9fa209cb0e749aeb70e6cbe9aa18d4bfd53f9a0" -> "sha256:db4a4bc8c8eb214f49c1bb1b10b9ef1b1e23d44333c21f9012e2a6dfa57634e9" [label=""];
  "sha256:db4a4bc8c8eb214f49c1bb1b10b9ef1b1e23d44333c21f9012e2a6dfa57634e9" -> "sha256:690b5298f0bcd2e73d739e397e49633e28310ec8b4b53677c609bb24d0b4618e" [label=""];
  "sha256:690b5298f0bcd2e73d739e397e49633e28310ec8b4b53677c609bb24d0b4618e" -> "sha256:1bdae8d73dcd72fe522a5cfff30c184652454abb3451afe2a0e735263b2dfc30" [label=""];
  "sha256:1bdae8d73dcd72fe522a5cfff30c184652454abb3451afe2a0e735263b2dfc30" -> "sha256:76b72ab2a0794b5d96dee26698812a6d01eea925f5fd950b90c20dea2f224034" [label=""];
  "sha256:76b72ab2a0794b5d96dee26698812a6d01eea925f5fd950b90c20dea2f224034" -> "sha256:06d40f9920d8ffc66fece53cc01a73da27a3d282ef1debdf60eb25205df322e2" [label=""];
  "sha256:06d40f9920d8ffc66fece53cc01a73da27a3d282ef1debdf60eb25205df322e2" -> "sha256:bdfe183cd29fe895e46c848c98e85b2c24718e5e989f5e59e440afa4e889771c" [label=""];
  "sha256:bdfe183cd29fe895e46c848c98e85b2c24718e5e989f5e59e440afa4e889771c" -> "sha256:0b8af793dd5078f49b236f9cb15730b91e1ef714b2f382a81d874f74c6ef04ba" [label=""];
  "sha256:0b8af793dd5078f49b236f9cb15730b91e1ef714b2f382a81d874f74c6ef04ba" -> "sha256:8d5bc7a646e4ffc5cc6cd65905cb99bb42ac6f6116749fb53d435e4f602c7c89" [label=""];
  "sha256:8d5bc7a646e4ffc5cc6cd65905cb99bb42ac6f6116749fb53d435e4f602c7c89" -> "sha256:88d00a91d9763259dbc212956235df0cc61c6b9f2dc1630d54cf2302c71f333d" [label=""];
}

