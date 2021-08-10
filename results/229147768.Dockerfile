[app/sources/229147768.Dockerfile]
digraph {
  "sha256:247fd45f9cfab78d39a22689672fad4e6b068cd026f7fa78241d0efff24d9867" [label="docker-image://docker.io/floydhub/dl-base:2.1.0-py3.13" shape="ellipse"];
  "sha256:03682dc1f3091322e53780ddd141cddc5151912f8efefd3e38b56a521468b836" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git --branch ${TENSORFLOW_VERSION} --single-branch" shape="box"];
  "sha256:b7a14144a9e24a2ccf64de9204b3fd75d588cc23d4dfded447bc3326cb1d0a42" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:e6d7bc1a7456622454874ccbb94a0f68c0107b06bd76af7f6d0936edd25cd681" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured CPU     && bazel build -c opt --copt=-msse3 --copt=-msse4.1 --copt=-msse4.2         --copt=-mavx --copt=-mavx2         --copt=-mfma         tensorflow/tools/pip_package:build_pip_package     && bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip     && pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache     && cd / && rm -rf tensorflow" shape="box"];
  "sha256:1021fa6b30a706c522a38c233549c890a048e07990f864ad93cd941cd4fbed91" [label="/bin/sh -c apt-get update && apt-get install -y supervisor   && apt-get clean   && apt-get autoremove   && rm -rf /var/cache/apt/archives/*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1a2a4258afad11670c567ec5eb3bb8e1d2e5adc498237f9cba25d670c72b93b3" [label="local://context" shape="ellipse"];
  "sha256:f8e15e0df3ce55f6720ac124fb5f7ff5e35d09d0c60fbb1b2244473182637d28" [label="copy{src=/tensorboard/tensorboard.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:290ee1dbd7d46ea2af1b7f473db1ad1fa9a70ab7f8c6309273bf7abbd7283b60" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/fchollet/keras.git@${KERAS_VERSION}         tflearn==0.3.2     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache" shape="box"];
  "sha256:c072c8845324b30931379bb3fdf8fb84829c34175590489a02ffa883d41cc926" [label="sha256:c072c8845324b30931379bb3fdf8fb84829c34175590489a02ffa883d41cc926" shape="plaintext"];
  "sha256:247fd45f9cfab78d39a22689672fad4e6b068cd026f7fa78241d0efff24d9867" -> "sha256:03682dc1f3091322e53780ddd141cddc5151912f8efefd3e38b56a521468b836" [label=""];
  "sha256:03682dc1f3091322e53780ddd141cddc5151912f8efefd3e38b56a521468b836" -> "sha256:b7a14144a9e24a2ccf64de9204b3fd75d588cc23d4dfded447bc3326cb1d0a42" [label=""];
  "sha256:b7a14144a9e24a2ccf64de9204b3fd75d588cc23d4dfded447bc3326cb1d0a42" -> "sha256:e6d7bc1a7456622454874ccbb94a0f68c0107b06bd76af7f6d0936edd25cd681" [label=""];
  "sha256:e6d7bc1a7456622454874ccbb94a0f68c0107b06bd76af7f6d0936edd25cd681" -> "sha256:1021fa6b30a706c522a38c233549c890a048e07990f864ad93cd941cd4fbed91" [label=""];
  "sha256:1021fa6b30a706c522a38c233549c890a048e07990f864ad93cd941cd4fbed91" -> "sha256:f8e15e0df3ce55f6720ac124fb5f7ff5e35d09d0c60fbb1b2244473182637d28" [label=""];
  "sha256:1a2a4258afad11670c567ec5eb3bb8e1d2e5adc498237f9cba25d670c72b93b3" -> "sha256:f8e15e0df3ce55f6720ac124fb5f7ff5e35d09d0c60fbb1b2244473182637d28" [label=""];
  "sha256:f8e15e0df3ce55f6720ac124fb5f7ff5e35d09d0c60fbb1b2244473182637d28" -> "sha256:290ee1dbd7d46ea2af1b7f473db1ad1fa9a70ab7f8c6309273bf7abbd7283b60" [label=""];
  "sha256:290ee1dbd7d46ea2af1b7f473db1ad1fa9a70ab7f8c6309273bf7abbd7283b60" -> "sha256:c072c8845324b30931379bb3fdf8fb84829c34175590489a02ffa883d41cc926" [label=""];
}

