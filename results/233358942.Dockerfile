[app/sources/233358942.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:692fc75735ebfcca9c48ae1f5bbe0940cd1b5218e95da798cba9287ff714b3fe" [label="/bin/sh -c apt-get update && apt-get install -y         curl         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b390f0a748ae5f50b8257ce9654f870ba70c1b9b426c4d13ea3a7fc39f3f51b9" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:04f9a23f320d803c2483b94f6b87c3ca467eaff33179694ac60daaa4495ce8b0" [label="/bin/sh -c pip --no-cache-dir install     http://ci.tensorflow.org/view/Nightly/job/nightly-matrix-cpu/TF_BUILD_CONTAINER_TYPE=CPU,TF_BUILD_IS_OPT=OPT,TF_BUILD_IS_PIP=PIP,TF_BUILD_PYTHON_VERSION=PYTHON2,label=cpu-slave/lastSuccessfulBuild/artifact/pip_test/whl/tensorflow-0.10.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:072289071d0b8761139a162cf0af3e4a0a6a12e087345030403a387b5925e5d9" [label="local://context" shape="ellipse"];
  "sha256:15de38f817ae4765e02a13d8a9a508b680c451c3280aed00270022d21b177c80" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:f4b48949c384e08c25dbc0eb5d4dcea987a469698686c02c38c090b1d6f6ab69" [label="sha256:f4b48949c384e08c25dbc0eb5d4dcea987a469698686c02c38c090b1d6f6ab69" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:692fc75735ebfcca9c48ae1f5bbe0940cd1b5218e95da798cba9287ff714b3fe" [label=""];
  "sha256:692fc75735ebfcca9c48ae1f5bbe0940cd1b5218e95da798cba9287ff714b3fe" -> "sha256:b390f0a748ae5f50b8257ce9654f870ba70c1b9b426c4d13ea3a7fc39f3f51b9" [label=""];
  "sha256:b390f0a748ae5f50b8257ce9654f870ba70c1b9b426c4d13ea3a7fc39f3f51b9" -> "sha256:04f9a23f320d803c2483b94f6b87c3ca467eaff33179694ac60daaa4495ce8b0" [label=""];
  "sha256:04f9a23f320d803c2483b94f6b87c3ca467eaff33179694ac60daaa4495ce8b0" -> "sha256:15de38f817ae4765e02a13d8a9a508b680c451c3280aed00270022d21b177c80" [label=""];
  "sha256:072289071d0b8761139a162cf0af3e4a0a6a12e087345030403a387b5925e5d9" -> "sha256:15de38f817ae4765e02a13d8a9a508b680c451c3280aed00270022d21b177c80" [label=""];
  "sha256:15de38f817ae4765e02a13d8a9a508b680c451c3280aed00270022d21b177c80" -> "sha256:f4b48949c384e08c25dbc0eb5d4dcea987a469698686c02c38c090b1d6f6ab69" [label=""];
}

