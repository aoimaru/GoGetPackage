[app/sources/245074897.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9e384c7c3c42900339cdafcae49099c11c61ebfca2acfa50c9b54dfd146aac4f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-dev         python-numpy         python-pip         rsync         software-properties-common         swig         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c763e0b85903744eeb4718a7900bbbbf681486e048caa42b62484f02278ca44d" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:84f8bafb1878e0a5c6ffd694d011cb3d8917fe35557041778bf8dab9a408db3e" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:a69089dbdd33120bd7dfb667cb50c49cbe846fdf751e374be1c3f68137ec6607" [label="local://context" shape="ellipse"];
  "sha256:3e47e094ab1940643ef96feef0ef615d2d957815ceab74df8559b63c206106b6" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:2e68894a00ed0de92efd415dfa5d96d7c7c3b77fa7303630c856f94ef1d2ff52" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:93cdb9b1dfd3ee1e123d0cf4b19041c7759537d93007858fdab040ce1031d1bf" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1012813160d255eb87b760e70317398c5f9ed7cd1ed87b59349ab4a265bf2b43" [label="/bin/sh -c echo \"startup --batch\" >>/root/.bazelrc" shape="box"];
  "sha256:177b5a2d8e3b3011799cc193ce800083829f6022c227e99573054b8326fbd397" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:69af8bc548e383785912f2088c61156ce5aaa7bc1ca36f478ee6f4dad4c165c3" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:0f7dfed5721f619c70e3829f574b775a281e5991c170846f3d8126433caf3e8e" [label="/bin/sh -c git clone --recursive https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r0.10" shape="box"];
  "sha256:b98b479234feabd622bc2ba94f67b545a66850a7ba813b43840f2b1835956b27" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:4c78ad0d0d60343be496753fbf40ce88ab4e24d014d83f9d76b605c949432d2e" [label="/bin/sh -c ./configure &&     bazel build -c opt tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip install --upgrade /tmp/pip/tensorflow-*.whl" shape="box"];
  "sha256:03b0c42eaa0538be09c8d345ec6e04a7143a4d58b9210a8ae438196aeca213f4" [label="mkdir{path=/root}" shape="note"];
  "sha256:e97ee4802d989ddb7164cc6273beb80f39485fb66aa0fb15d9caf1e8942aa30a" [label="sha256:e97ee4802d989ddb7164cc6273beb80f39485fb66aa0fb15d9caf1e8942aa30a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9e384c7c3c42900339cdafcae49099c11c61ebfca2acfa50c9b54dfd146aac4f" [label=""];
  "sha256:9e384c7c3c42900339cdafcae49099c11c61ebfca2acfa50c9b54dfd146aac4f" -> "sha256:c763e0b85903744eeb4718a7900bbbbf681486e048caa42b62484f02278ca44d" [label=""];
  "sha256:c763e0b85903744eeb4718a7900bbbbf681486e048caa42b62484f02278ca44d" -> "sha256:84f8bafb1878e0a5c6ffd694d011cb3d8917fe35557041778bf8dab9a408db3e" [label=""];
  "sha256:84f8bafb1878e0a5c6ffd694d011cb3d8917fe35557041778bf8dab9a408db3e" -> "sha256:3e47e094ab1940643ef96feef0ef615d2d957815ceab74df8559b63c206106b6" [label=""];
  "sha256:a69089dbdd33120bd7dfb667cb50c49cbe846fdf751e374be1c3f68137ec6607" -> "sha256:3e47e094ab1940643ef96feef0ef615d2d957815ceab74df8559b63c206106b6" [label=""];
  "sha256:3e47e094ab1940643ef96feef0ef615d2d957815ceab74df8559b63c206106b6" -> "sha256:2e68894a00ed0de92efd415dfa5d96d7c7c3b77fa7303630c856f94ef1d2ff52" [label=""];
  "sha256:a69089dbdd33120bd7dfb667cb50c49cbe846fdf751e374be1c3f68137ec6607" -> "sha256:2e68894a00ed0de92efd415dfa5d96d7c7c3b77fa7303630c856f94ef1d2ff52" [label=""];
  "sha256:2e68894a00ed0de92efd415dfa5d96d7c7c3b77fa7303630c856f94ef1d2ff52" -> "sha256:93cdb9b1dfd3ee1e123d0cf4b19041c7759537d93007858fdab040ce1031d1bf" [label=""];
  "sha256:93cdb9b1dfd3ee1e123d0cf4b19041c7759537d93007858fdab040ce1031d1bf" -> "sha256:1012813160d255eb87b760e70317398c5f9ed7cd1ed87b59349ab4a265bf2b43" [label=""];
  "sha256:1012813160d255eb87b760e70317398c5f9ed7cd1ed87b59349ab4a265bf2b43" -> "sha256:177b5a2d8e3b3011799cc193ce800083829f6022c227e99573054b8326fbd397" [label=""];
  "sha256:177b5a2d8e3b3011799cc193ce800083829f6022c227e99573054b8326fbd397" -> "sha256:69af8bc548e383785912f2088c61156ce5aaa7bc1ca36f478ee6f4dad4c165c3" [label=""];
  "sha256:69af8bc548e383785912f2088c61156ce5aaa7bc1ca36f478ee6f4dad4c165c3" -> "sha256:0f7dfed5721f619c70e3829f574b775a281e5991c170846f3d8126433caf3e8e" [label=""];
  "sha256:0f7dfed5721f619c70e3829f574b775a281e5991c170846f3d8126433caf3e8e" -> "sha256:b98b479234feabd622bc2ba94f67b545a66850a7ba813b43840f2b1835956b27" [label=""];
  "sha256:b98b479234feabd622bc2ba94f67b545a66850a7ba813b43840f2b1835956b27" -> "sha256:4c78ad0d0d60343be496753fbf40ce88ab4e24d014d83f9d76b605c949432d2e" [label=""];
  "sha256:4c78ad0d0d60343be496753fbf40ce88ab4e24d014d83f9d76b605c949432d2e" -> "sha256:03b0c42eaa0538be09c8d345ec6e04a7143a4d58b9210a8ae438196aeca213f4" [label=""];
  "sha256:03b0c42eaa0538be09c8d345ec6e04a7143a4d58b9210a8ae438196aeca213f4" -> "sha256:e97ee4802d989ddb7164cc6273beb80f39485fb66aa0fb15d9caf1e8942aa30a" [label=""];
}

