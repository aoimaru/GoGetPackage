[app/sources/311983630.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:d07bfa5ba1774e34b98f697619d5d5bc3d7c894d55deaa69eefd502dad340ec7" [label="/bin/sh -c apk add --no-cache python3 python3-tkinter py3-numpy py3-numpy-f2py freetype libpng libjpeg-turbo imagemagick graphviz git" shape="box"];
  "sha256:a460bcd8997b3a9b70b50134895589d287868419fb40f41801a4161e1299e0eb" [label="/bin/sh -c apk add --no-cache --virtual=.build-deps         bash         cmake         curl         freetype-dev         g++         libjpeg-turbo-dev         libpng-dev         linux-headers         make         musl-dev         openblas-dev         openjdk8         patch         perl         python3-dev         py-numpy-dev         rsync         sed         swig         zip     && cd /tmp     && pip3 install --no-cache-dir wheel     && $(cd /usr/bin && ln -s python3 python)" shape="box"];
  "sha256:cdd0ba0e62e81ba972940f331fff157592e393e3994e7166c990dca96c07d851" [label="/bin/sh -c curl -SLO https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-dist.zip     && mkdir bazel-${BAZEL_VERSION}     && unzip -qd bazel-${BAZEL_VERSION} bazel-${BAZEL_VERSION}-dist.zip" shape="box"];
  "sha256:69fd0fa5ad3b8c92074d3c4287367d11cc038826146298193200eb2e21b9197f" [label="/bin/sh -c cd bazel-${BAZEL_VERSION}     && sed -i -e 's/-classpath/-J-Xmx8192m -J-Xms128m -classpath/g' scripts/bootstrap/compile.sh     && bash compile.sh     && cp -p output/bazel /usr/bin/" shape="box"];
  "sha256:f1755f5301954283e192311f0957bcac200a18a6aad9200dda46299b8be75b2b" [label="/bin/sh -c cd /tmp     && curl -SL https://github.com/tensorflow/tensorflow/archive/v${TENSORFLOW_VERSION}.tar.gz         | tar xzf -" shape="box"];
  "sha256:65cfe445f3bf4b223fae985f29c502bece999afe4b5c45f7babb5e7eb8abb9a8" [label="/bin/sh -c cd /tmp/tensorflow-${TENSORFLOW_VERSION}     && : musl-libc does not have \"secure_getenv\" function     && sed -i -e '/JEMALLOC_HAVE_SECURE_GETENV/d' third_party/jemalloc.BUILD     && sed -i -e '/define TF_GENERATE_BACKTRACE/d' tensorflow/core/platform/default/stacktrace.h     && sed -i -e '/define TF_GENERATE_STACKTRACE/d' tensorflow/core/platform/stacktrace_handler.cc     && PYTHON_BIN_PATH=/usr/bin/python         PYTHON_LIB_PATH=/usr/lib/python3.6/site-packages         CC_OPT_FLAGS=\"-march=native\"         TF_NEED_JEMALLOC=1         TF_NEED_GCP=0         TF_NEED_HDFS=0         TF_NEED_S3=0         TF_ENABLE_XLA=0         TF_NEED_GDR=0         TF_NEED_VERBS=0         TF_NEED_OPENCL=0         TF_NEED_CUDA=0         TF_NEED_MPI=0         bash configure" shape="box"];
  "sha256:84b06874f609408f12f4bfd41d85281575caa4683f11c5657a282af5a10a29a1" [label="/bin/sh -c cd /tmp/tensorflow-${TENSORFLOW_VERSION}     && bazel build -c opt --local_resources ${LOCAL_RESOURCES} //tensorflow/tools/pip_package:build_pip_package" shape="box"];
  "sha256:4014a53b688051bf3c8f4d932a180ccd3a0ad8181b77b55ffae76d228470fa46" [label="/bin/sh -c cd /tmp/tensorflow-${TENSORFLOW_VERSION}     && ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg" shape="box"];
  "sha256:979b12c7059d127166fa9cfdf852fc4889a3526beb4a85ae67cdc21b7ddf71be" [label="/bin/sh -c cp /tmp/tensorflow_pkg/tensorflow-${TENSORFLOW_VERSION}-cp36-cp36m-linux_x86_64.whl /root" shape="box"];
  "sha256:4dad553d0cc5c9435c7658466f53f1bd1882b9784d26dd6609373125df2ee8a3" [label="/bin/sh -c pip3 install --no-cache-dir /root/tensorflow-${TENSORFLOW_VERSION}-cp36-cp36m-linux_x86_64.whl     && python3 -c 'import tensorflow'" shape="box"];
  "sha256:3c7a59d6103b501ae355824eb8fcfa52991b720976fcd876661cee2931803d1c" [label="sha256:3c7a59d6103b501ae355824eb8fcfa52991b720976fcd876661cee2931803d1c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:d07bfa5ba1774e34b98f697619d5d5bc3d7c894d55deaa69eefd502dad340ec7" [label=""];
  "sha256:d07bfa5ba1774e34b98f697619d5d5bc3d7c894d55deaa69eefd502dad340ec7" -> "sha256:a460bcd8997b3a9b70b50134895589d287868419fb40f41801a4161e1299e0eb" [label=""];
  "sha256:a460bcd8997b3a9b70b50134895589d287868419fb40f41801a4161e1299e0eb" -> "sha256:cdd0ba0e62e81ba972940f331fff157592e393e3994e7166c990dca96c07d851" [label=""];
  "sha256:cdd0ba0e62e81ba972940f331fff157592e393e3994e7166c990dca96c07d851" -> "sha256:69fd0fa5ad3b8c92074d3c4287367d11cc038826146298193200eb2e21b9197f" [label=""];
  "sha256:69fd0fa5ad3b8c92074d3c4287367d11cc038826146298193200eb2e21b9197f" -> "sha256:f1755f5301954283e192311f0957bcac200a18a6aad9200dda46299b8be75b2b" [label=""];
  "sha256:f1755f5301954283e192311f0957bcac200a18a6aad9200dda46299b8be75b2b" -> "sha256:65cfe445f3bf4b223fae985f29c502bece999afe4b5c45f7babb5e7eb8abb9a8" [label=""];
  "sha256:65cfe445f3bf4b223fae985f29c502bece999afe4b5c45f7babb5e7eb8abb9a8" -> "sha256:84b06874f609408f12f4bfd41d85281575caa4683f11c5657a282af5a10a29a1" [label=""];
  "sha256:84b06874f609408f12f4bfd41d85281575caa4683f11c5657a282af5a10a29a1" -> "sha256:4014a53b688051bf3c8f4d932a180ccd3a0ad8181b77b55ffae76d228470fa46" [label=""];
  "sha256:4014a53b688051bf3c8f4d932a180ccd3a0ad8181b77b55ffae76d228470fa46" -> "sha256:979b12c7059d127166fa9cfdf852fc4889a3526beb4a85ae67cdc21b7ddf71be" [label=""];
  "sha256:979b12c7059d127166fa9cfdf852fc4889a3526beb4a85ae67cdc21b7ddf71be" -> "sha256:4dad553d0cc5c9435c7658466f53f1bd1882b9784d26dd6609373125df2ee8a3" [label=""];
  "sha256:4dad553d0cc5c9435c7658466f53f1bd1882b9784d26dd6609373125df2ee8a3" -> "sha256:3c7a59d6103b501ae355824eb8fcfa52991b720976fcd876661cee2931803d1c" [label=""];
}
