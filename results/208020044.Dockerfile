[app/sources/208020044.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a3f848897231bf9db50b5ecd4fc768594094d1a7d006f51aaf74df1619694c1d" [label="/bin/sh -c apt-get update && apt-get install -y         curl         dnsutils         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2aa822e932c9ec735b127961404bbcec0f6ffee958e79850d2301f5404970862" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:6b55aaf6a8b8f418d232236112731ee70c802dbbd22d2c0ba2fd3e985a3555f1" [label="/bin/sh -c pip --no-cache-dir install     http://ci.tensorflow.org/view/Nightly/job/nightly-matrix-cpu/TF_BUILD_CONTAINER_TYPE=CPU,TF_BUILD_IS_OPT=OPT,TF_BUILD_IS_PIP=PIP,TF_BUILD_PYTHON_VERSION=PYTHON2,label=cpu-slave/lastSuccessfulBuild/artifact/pip_test/whl/tensorflow-0.8.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:05fdfe463ef1be2ed6e28b5c02c822bfe52b1e13c0dd3a8fb890942e9a599fcd" [label="local://context" shape="ellipse"];
  "sha256:6ae018c504743efabecc8d9a08d04bbb7af8bdc9ea8d57ba18315e7b48cb3382" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:8a26a368fd67dad9d7ea2d8fd078196417eed83cdfd769058f24cb1197adc0a7" [label="/bin/sh -c mkdir -p /tmp/mnist-data" shape="box"];
  "sha256:9421da350f14c86f8525015b61d01070cfa1c923b402233aa9aa8c8e56057257" [label="/bin/sh -c curl -o /tmp/mnist-data/train-labels-idx1-ubyte.gz     http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz" shape="box"];
  "sha256:a5f3a611885225c7a5157215e49ab667e26be1d85977b28db9b5e1cfe0961f65" [label="/bin/sh -c curl -o /tmp/mnist-data/train-images-idx3-ubyte.gz     http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz" shape="box"];
  "sha256:c9fd66fa482f94b75cf3b55314c6995436470fc1669d82bc020505feeff5fea2" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-labels-idx1-ubyte.gz     http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz" shape="box"];
  "sha256:4ab2957aaa1ed5a99c041c1680b2f3845873af60c286d48d48d0614941b437b4" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-images-idx3-ubyte.gz     http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz" shape="box"];
  "sha256:951fef26f7d8d3686ef1370daf9a186043b33d2b9ad799399c585edbf02ab9d2" [label="sha256:951fef26f7d8d3686ef1370daf9a186043b33d2b9ad799399c585edbf02ab9d2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a3f848897231bf9db50b5ecd4fc768594094d1a7d006f51aaf74df1619694c1d" [label=""];
  "sha256:a3f848897231bf9db50b5ecd4fc768594094d1a7d006f51aaf74df1619694c1d" -> "sha256:2aa822e932c9ec735b127961404bbcec0f6ffee958e79850d2301f5404970862" [label=""];
  "sha256:2aa822e932c9ec735b127961404bbcec0f6ffee958e79850d2301f5404970862" -> "sha256:6b55aaf6a8b8f418d232236112731ee70c802dbbd22d2c0ba2fd3e985a3555f1" [label=""];
  "sha256:6b55aaf6a8b8f418d232236112731ee70c802dbbd22d2c0ba2fd3e985a3555f1" -> "sha256:6ae018c504743efabecc8d9a08d04bbb7af8bdc9ea8d57ba18315e7b48cb3382" [label=""];
  "sha256:05fdfe463ef1be2ed6e28b5c02c822bfe52b1e13c0dd3a8fb890942e9a599fcd" -> "sha256:6ae018c504743efabecc8d9a08d04bbb7af8bdc9ea8d57ba18315e7b48cb3382" [label=""];
  "sha256:6ae018c504743efabecc8d9a08d04bbb7af8bdc9ea8d57ba18315e7b48cb3382" -> "sha256:8a26a368fd67dad9d7ea2d8fd078196417eed83cdfd769058f24cb1197adc0a7" [label=""];
  "sha256:8a26a368fd67dad9d7ea2d8fd078196417eed83cdfd769058f24cb1197adc0a7" -> "sha256:9421da350f14c86f8525015b61d01070cfa1c923b402233aa9aa8c8e56057257" [label=""];
  "sha256:9421da350f14c86f8525015b61d01070cfa1c923b402233aa9aa8c8e56057257" -> "sha256:a5f3a611885225c7a5157215e49ab667e26be1d85977b28db9b5e1cfe0961f65" [label=""];
  "sha256:a5f3a611885225c7a5157215e49ab667e26be1d85977b28db9b5e1cfe0961f65" -> "sha256:c9fd66fa482f94b75cf3b55314c6995436470fc1669d82bc020505feeff5fea2" [label=""];
  "sha256:c9fd66fa482f94b75cf3b55314c6995436470fc1669d82bc020505feeff5fea2" -> "sha256:4ab2957aaa1ed5a99c041c1680b2f3845873af60c286d48d48d0614941b437b4" [label=""];
  "sha256:4ab2957aaa1ed5a99c041c1680b2f3845873af60c286d48d48d0614941b437b4" -> "sha256:951fef26f7d8d3686ef1370daf9a186043b33d2b9ad799399c585edbf02ab9d2" [label=""];
}

