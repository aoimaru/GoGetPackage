[app/sources/229147774.Dockerfile]
digraph {
  "sha256:f8f531e73d92ab6c0046247246cd08338ff2c1be5008fc4cfe698b8829319c0b" [label="docker-image://docker.io/floydhub/dl-base:3.1.0-py3.33" shape="ellipse"];
  "sha256:a8d4241002525b89e02e49bb3d87b5db2bf22723feedc5ea60907e83a6dde4bd" [label="/bin/sh -c pip --no-cache-dir install         funcsigs         pbr         mock         wheel         keras_applications         keras_preprocessing         --no-deps     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache" shape="box"];
  "sha256:0e46a2b6b4c08813e3d6610aeadd014875c4695132d28ad231405ea540660a95" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git         --branch ${TENSORFLOW_VERSION}         --single-branch     && cd tensorflow     && tensorflow/tools/ci_build/builds/configured CPU         bazel build -c opt --copt=-msse3 --copt=-msse4.1 --copt=-msse4.2             --copt=-mavx --copt=-mavx2             --copt=-mfma             --cxxopt=\"-D_GLIBCXX_USE_CXX11_ABI=0\"                          --verbose_failures             tensorflow/tools/pip_package:build_pip_package     && bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip     && pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache     && cd .. && rm -rf tensorflow" shape="box"];
  "sha256:b8f7aad21ae5f886228c1e66dd7ca4ece1d5156d9d6ffaed30ae3cf09227fea5" [label="/bin/sh -c pip --no-cache-dir install         git+git://github.com/fchollet/keras.git@${KERAS_VERSION}         tflearn==0.3.2     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache" shape="box"];
  "sha256:61b7839b123d4087abf75b527a6d9d944063e42a503a1bce76e0d52774f2ffae" [label="sha256:61b7839b123d4087abf75b527a6d9d944063e42a503a1bce76e0d52774f2ffae" shape="plaintext"];
  "sha256:f8f531e73d92ab6c0046247246cd08338ff2c1be5008fc4cfe698b8829319c0b" -> "sha256:a8d4241002525b89e02e49bb3d87b5db2bf22723feedc5ea60907e83a6dde4bd" [label=""];
  "sha256:a8d4241002525b89e02e49bb3d87b5db2bf22723feedc5ea60907e83a6dde4bd" -> "sha256:0e46a2b6b4c08813e3d6610aeadd014875c4695132d28ad231405ea540660a95" [label=""];
  "sha256:0e46a2b6b4c08813e3d6610aeadd014875c4695132d28ad231405ea540660a95" -> "sha256:b8f7aad21ae5f886228c1e66dd7ca4ece1d5156d9d6ffaed30ae3cf09227fea5" [label=""];
  "sha256:b8f7aad21ae5f886228c1e66dd7ca4ece1d5156d9d6ffaed30ae3cf09227fea5" -> "sha256:61b7839b123d4087abf75b527a6d9d944063e42a503a1bce76e0d52774f2ffae" [label=""];
}

