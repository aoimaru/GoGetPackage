[app/sources/457373763.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8a9e5c3b1e6fd89deeefb20bc8b91c5794f58f37c4e1b57a1c4749fc894a8e6a" [label="/bin/sh -c apt-get update && apt-get install -y         curl         dnsutils         python         python-dev         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:899e34c14d0a803f9c2befa203f960d03d3fc3c097521a1bc1f3c365044f219f" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:c9d9aa64b9963a10039ecd9a76dc5a64a33521b20da72e2dc3487396ff460623" [label="/bin/sh -c pip install --upgrade pandas==0.18.1" shape="box"];
  "sha256:0c1744c9feaa5df7da88e4c56ec2b612feba4fc0fc9eae5e8d17066574de2c92" [label="/bin/sh -c pip --no-cache-dir install     https://ci.tensorflow.org/view/Nightly/job/nightly-matrix-cpu/TF_BUILD_IS_OPT=OPT,TF_BUILD_IS_PIP=PIP,TF_BUILD_PYTHON_VERSION=PYTHON2,label=cpu-slave/lastSuccessfulBuild/artifact/pip_test/whl/tensorflow-0.11.0rc0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:567bc9d66485ade878cd6b29fe6cb26f436c570616f03cec3e869df272d8d3b9" [label="local://context" shape="ellipse"];
  "sha256:56113513d5e9203b762efff164eb11156fcd555ee3bb056af8ca569246048ae1" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:bd477126bad59f531b438e24d7f253afa39558c2e416a39ef234e503a26fd250" [label="/bin/sh -c mkdir -p /tmp/mnist-data" shape="box"];
  "sha256:3869ee6cf5ea0f58668326da3bb6e2cf893d39d14dcdd87c68f0d44414ccf894" [label="/bin/sh -c curl -o /tmp/mnist-data/train-labels-idx1-ubyte.gz     http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz" shape="box"];
  "sha256:2f5cce4dd847ddc639dff5ae885866502734142a0e83d59e96d9c7daf7c232f4" [label="/bin/sh -c curl -o /tmp/mnist-data/train-images-idx3-ubyte.gz     http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz" shape="box"];
  "sha256:c277e548d84863cd159a132a97e21bdcf97fc021ad376b3a1ecd872e814c88ce" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-labels-idx1-ubyte.gz     http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz" shape="box"];
  "sha256:c67ab690ccab40824b0adebfe79fd8707cfdbde153d55232f736c4a9610efda2" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-images-idx3-ubyte.gz     http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz" shape="box"];
  "sha256:8ca420ff873fc61c3cf39b96924bfacecdaf7c16586b1337a7c14d06d52d0303" [label="/bin/sh -c mkdir -p /tmp/census-data" shape="box"];
  "sha256:d53af8e127df6378015bb6242dfcf4c5ba1a755b6b1036ab717552a1396d711a" [label="/bin/sh -c curl -o /tmp/census-data/adult.data     https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data" shape="box"];
  "sha256:facfdd539f2c5d2612f13815ca5a2a58987511874e4a02a1427c0c641a4b6465" [label="/bin/sh -c curl -o /tmp/census-data/adult.test     https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.test" shape="box"];
  "sha256:56dff775ee5b8cd0e7753bb089fd3ac3aa7d399b23e681ce79bd0930208f194b" [label="sha256:56dff775ee5b8cd0e7753bb089fd3ac3aa7d399b23e681ce79bd0930208f194b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8a9e5c3b1e6fd89deeefb20bc8b91c5794f58f37c4e1b57a1c4749fc894a8e6a" [label=""];
  "sha256:8a9e5c3b1e6fd89deeefb20bc8b91c5794f58f37c4e1b57a1c4749fc894a8e6a" -> "sha256:899e34c14d0a803f9c2befa203f960d03d3fc3c097521a1bc1f3c365044f219f" [label=""];
  "sha256:899e34c14d0a803f9c2befa203f960d03d3fc3c097521a1bc1f3c365044f219f" -> "sha256:c9d9aa64b9963a10039ecd9a76dc5a64a33521b20da72e2dc3487396ff460623" [label=""];
  "sha256:c9d9aa64b9963a10039ecd9a76dc5a64a33521b20da72e2dc3487396ff460623" -> "sha256:0c1744c9feaa5df7da88e4c56ec2b612feba4fc0fc9eae5e8d17066574de2c92" [label=""];
  "sha256:0c1744c9feaa5df7da88e4c56ec2b612feba4fc0fc9eae5e8d17066574de2c92" -> "sha256:56113513d5e9203b762efff164eb11156fcd555ee3bb056af8ca569246048ae1" [label=""];
  "sha256:567bc9d66485ade878cd6b29fe6cb26f436c570616f03cec3e869df272d8d3b9" -> "sha256:56113513d5e9203b762efff164eb11156fcd555ee3bb056af8ca569246048ae1" [label=""];
  "sha256:56113513d5e9203b762efff164eb11156fcd555ee3bb056af8ca569246048ae1" -> "sha256:bd477126bad59f531b438e24d7f253afa39558c2e416a39ef234e503a26fd250" [label=""];
  "sha256:bd477126bad59f531b438e24d7f253afa39558c2e416a39ef234e503a26fd250" -> "sha256:3869ee6cf5ea0f58668326da3bb6e2cf893d39d14dcdd87c68f0d44414ccf894" [label=""];
  "sha256:3869ee6cf5ea0f58668326da3bb6e2cf893d39d14dcdd87c68f0d44414ccf894" -> "sha256:2f5cce4dd847ddc639dff5ae885866502734142a0e83d59e96d9c7daf7c232f4" [label=""];
  "sha256:2f5cce4dd847ddc639dff5ae885866502734142a0e83d59e96d9c7daf7c232f4" -> "sha256:c277e548d84863cd159a132a97e21bdcf97fc021ad376b3a1ecd872e814c88ce" [label=""];
  "sha256:c277e548d84863cd159a132a97e21bdcf97fc021ad376b3a1ecd872e814c88ce" -> "sha256:c67ab690ccab40824b0adebfe79fd8707cfdbde153d55232f736c4a9610efda2" [label=""];
  "sha256:c67ab690ccab40824b0adebfe79fd8707cfdbde153d55232f736c4a9610efda2" -> "sha256:8ca420ff873fc61c3cf39b96924bfacecdaf7c16586b1337a7c14d06d52d0303" [label=""];
  "sha256:8ca420ff873fc61c3cf39b96924bfacecdaf7c16586b1337a7c14d06d52d0303" -> "sha256:d53af8e127df6378015bb6242dfcf4c5ba1a755b6b1036ab717552a1396d711a" [label=""];
  "sha256:d53af8e127df6378015bb6242dfcf4c5ba1a755b6b1036ab717552a1396d711a" -> "sha256:facfdd539f2c5d2612f13815ca5a2a58987511874e4a02a1427c0c641a4b6465" [label=""];
  "sha256:facfdd539f2c5d2612f13815ca5a2a58987511874e4a02a1427c0c641a4b6465" -> "sha256:56dff775ee5b8cd0e7753bb089fd3ac3aa7d399b23e681ce79bd0930208f194b" [label=""];
}

