[app/sources/233369693.Dockerfile]
digraph {
  "sha256:d738df7cc23295998dde471cfa2ef7b236d98f7cc169a32ccc8ac9d8018864bc" [label="local://context" shape="ellipse"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:870afc623bd761531293a10aefdc40c84e58f9ad67218c3058b8796627157ce5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f4799a98be4e47b27a0311d814e0595606d2b06be64fe4a61152f8fa4462980d" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:7c80ee7a59c7a002823b5eea4ed85c8049315686ed74082b017a6690d4137c17" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:2a8dababa15c422c70478e860af0a2d5335d1ff9e10a8f12eac002773ff10099" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:f2d194cda1e0381b92be76896c010dc73033801cbb0615333232b16e9e724afd" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:d7f4f13cbd705eb0fa3196b37a1581ad0306f10492c9aa474961ec17e7b773f7" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e614e81cc7436c7031a62c881fe5aa7d557d4b655df23a735f79b2b345af9c5e" [label="/bin/sh -c echo \"startup --batch\" >>/root/.bazelrc" shape="box"];
  "sha256:5d3c8af0da6edea03bb0409423a5ae353da2bbd346a5c05a0a9526e95206719e" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:43fee860e582a08feb95ded8854ebd3ffb5aace339f881449eca23bb5d36388c" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:235b2ef4919e53fa43cfbcfbe8a5c072da944ddd7fd4a1c63a70f3ac0d4038b1" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r0.11" shape="box"];
  "sha256:141a9b40eeebfb2556624a371a2433c25b21d5124a6f02dc90e9d27ae05ac24a" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:83cf358e181f0f6d49338da1bd50e1e3606bcdbee94b26c9fdf9a6163f6a341d" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured GPU     bazel build -c opt --config=cuda tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:acb5fa13c64ff0bf133adfcac8c3fb4b64689ae5c2b268d858bc05b09ccb6454" [label="mkdir{path=/root}" shape="note"];
  "sha256:15109590487b6bcc06fe20efb24ac7bbc08051b6475fa306dbcd2be33d2b2466" [label="/bin/bash" shape="box"];
  "sha256:6dd33d5e289cbc552432e206fb69b1560ae5d5290c860d63526271f8bbfd3a09" [label="sha256:6dd33d5e289cbc552432e206fb69b1560ae5d5290c860d63526271f8bbfd3a09" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:870afc623bd761531293a10aefdc40c84e58f9ad67218c3058b8796627157ce5" [label=""];
  "sha256:870afc623bd761531293a10aefdc40c84e58f9ad67218c3058b8796627157ce5" -> "sha256:f4799a98be4e47b27a0311d814e0595606d2b06be64fe4a61152f8fa4462980d" [label=""];
  "sha256:f4799a98be4e47b27a0311d814e0595606d2b06be64fe4a61152f8fa4462980d" -> "sha256:7c80ee7a59c7a002823b5eea4ed85c8049315686ed74082b017a6690d4137c17" [label=""];
  "sha256:7c80ee7a59c7a002823b5eea4ed85c8049315686ed74082b017a6690d4137c17" -> "sha256:2a8dababa15c422c70478e860af0a2d5335d1ff9e10a8f12eac002773ff10099" [label=""];
  "sha256:d738df7cc23295998dde471cfa2ef7b236d98f7cc169a32ccc8ac9d8018864bc" -> "sha256:2a8dababa15c422c70478e860af0a2d5335d1ff9e10a8f12eac002773ff10099" [label=""];
  "sha256:2a8dababa15c422c70478e860af0a2d5335d1ff9e10a8f12eac002773ff10099" -> "sha256:f2d194cda1e0381b92be76896c010dc73033801cbb0615333232b16e9e724afd" [label=""];
  "sha256:d738df7cc23295998dde471cfa2ef7b236d98f7cc169a32ccc8ac9d8018864bc" -> "sha256:f2d194cda1e0381b92be76896c010dc73033801cbb0615333232b16e9e724afd" [label=""];
  "sha256:f2d194cda1e0381b92be76896c010dc73033801cbb0615333232b16e9e724afd" -> "sha256:d7f4f13cbd705eb0fa3196b37a1581ad0306f10492c9aa474961ec17e7b773f7" [label=""];
  "sha256:d7f4f13cbd705eb0fa3196b37a1581ad0306f10492c9aa474961ec17e7b773f7" -> "sha256:e614e81cc7436c7031a62c881fe5aa7d557d4b655df23a735f79b2b345af9c5e" [label=""];
  "sha256:e614e81cc7436c7031a62c881fe5aa7d557d4b655df23a735f79b2b345af9c5e" -> "sha256:5d3c8af0da6edea03bb0409423a5ae353da2bbd346a5c05a0a9526e95206719e" [label=""];
  "sha256:5d3c8af0da6edea03bb0409423a5ae353da2bbd346a5c05a0a9526e95206719e" -> "sha256:43fee860e582a08feb95ded8854ebd3ffb5aace339f881449eca23bb5d36388c" [label=""];
  "sha256:43fee860e582a08feb95ded8854ebd3ffb5aace339f881449eca23bb5d36388c" -> "sha256:235b2ef4919e53fa43cfbcfbe8a5c072da944ddd7fd4a1c63a70f3ac0d4038b1" [label=""];
  "sha256:235b2ef4919e53fa43cfbcfbe8a5c072da944ddd7fd4a1c63a70f3ac0d4038b1" -> "sha256:141a9b40eeebfb2556624a371a2433c25b21d5124a6f02dc90e9d27ae05ac24a" [label=""];
  "sha256:141a9b40eeebfb2556624a371a2433c25b21d5124a6f02dc90e9d27ae05ac24a" -> "sha256:83cf358e181f0f6d49338da1bd50e1e3606bcdbee94b26c9fdf9a6163f6a341d" [label=""];
  "sha256:83cf358e181f0f6d49338da1bd50e1e3606bcdbee94b26c9fdf9a6163f6a341d" -> "sha256:acb5fa13c64ff0bf133adfcac8c3fb4b64689ae5c2b268d858bc05b09ccb6454" [label=""];
  "sha256:acb5fa13c64ff0bf133adfcac8c3fb4b64689ae5c2b268d858bc05b09ccb6454" -> "sha256:15109590487b6bcc06fe20efb24ac7bbc08051b6475fa306dbcd2be33d2b2466" [label=""];
  "sha256:15109590487b6bcc06fe20efb24ac7bbc08051b6475fa306dbcd2be33d2b2466" -> "sha256:6dd33d5e289cbc552432e206fb69b1560ae5d5290c860d63526271f8bbfd3a09" [label=""];
}

