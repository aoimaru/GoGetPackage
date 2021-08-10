[app/sources/247350486.Dockerfile]
digraph {
  "sha256:0c83f0afc3c09777ccb8c17399547fdd777ca6f30a1951f188e1bb1cab210787" [label="docker-image://docker.io/library/buildpack-deps:jessie-curl@sha256:3fc3400256f1e951e08bd68ac43f1f7b5d02668c494c59ef55d50398b8741d1a" shape="ellipse"];
  "sha256:b8bdfd6fa21dbc782f7053f0e0f3a99db15af436dc4e734efd6695f2480c75aa" [label="/bin/sh -c apt-get update     && apt-get install -y           file           git           graphviz           libcurl3           libfreetype6           libgraphviz-dev           liblapack3           libopenblas-base           libpng12-0           libxft2           python-dev           python-mock           python-pip           python2.7           zlib1g-dev     && apt-get clean     && (rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true)" shape="box"];
  "sha256:463b379f3e57e85b7f1923a137a59270e0ddfe4c90d3820034b764ba56180eab" [label="/bin/sh -c pip install --ignore-installed pip     && python -m pip install numpy     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:195d1660d8d739b2d74cec6201b1cceacd35120ab826a8fdcaba5c743e6d7ec4" [label="/bin/sh -c python -m pip install           asciitree           ipykernel           jupyter           matplotlib           pandas           protobuf           scipy           sklearn     && python -m ipykernel.kernelspec     && python -m pip install pygraphviz           --install-option=\"--include-path=/usr/include/graphviz\"           --install-option=\"--library-path=/usr/lib/graphviz/\"     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:69776a5279fe155773f33edaaae8d5bbe5d1426009b3f316b534bc970c366d2e" [label="local://context" shape="ellipse"];
  "sha256:13aaee059605bfb3a8009bc0d81796857614e0a4c7bc45b4d25c8284a8ae8a07" [label="copy{src=/syntaxnet_with_tensorflow-0.2-cp27-none-linux_x86_64.whl, dest=/opt/tensorflow/}" shape="note"];
  "sha256:9d23b8e47f7161a2ed530e27c90089f548b523032f340862b02bf183750406db" [label="/bin/sh -c python -m pip install         $SYNTAXNETDIR/syntaxnet_with_tensorflow-0.2-cp27-none-linux_x86_64.whl     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:fda7f939088c7d67ae57c55eb83460e0a841d39c917103f30a6c9d34dca39533" [label="copy{src=/tensorflow/tensorflow/tools/docker/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:94770dca1c6d15feb6c7e88629a45f0fa2509f5e13fa9e0818455cc9991e043a" [label="copy{src=/examples, dest=/opt/tensorflow/syntaxnet/examples}" shape="note"];
  "sha256:e260190636fd4b2b1bf01937065d20d0aaf4dd6ce0fee261e77748180c668a92" [label="sha256:e260190636fd4b2b1bf01937065d20d0aaf4dd6ce0fee261e77748180c668a92" shape="plaintext"];
  "sha256:0c83f0afc3c09777ccb8c17399547fdd777ca6f30a1951f188e1bb1cab210787" -> "sha256:b8bdfd6fa21dbc782f7053f0e0f3a99db15af436dc4e734efd6695f2480c75aa" [label=""];
  "sha256:b8bdfd6fa21dbc782f7053f0e0f3a99db15af436dc4e734efd6695f2480c75aa" -> "sha256:463b379f3e57e85b7f1923a137a59270e0ddfe4c90d3820034b764ba56180eab" [label=""];
  "sha256:463b379f3e57e85b7f1923a137a59270e0ddfe4c90d3820034b764ba56180eab" -> "sha256:195d1660d8d739b2d74cec6201b1cceacd35120ab826a8fdcaba5c743e6d7ec4" [label=""];
  "sha256:195d1660d8d739b2d74cec6201b1cceacd35120ab826a8fdcaba5c743e6d7ec4" -> "sha256:13aaee059605bfb3a8009bc0d81796857614e0a4c7bc45b4d25c8284a8ae8a07" [label=""];
  "sha256:69776a5279fe155773f33edaaae8d5bbe5d1426009b3f316b534bc970c366d2e" -> "sha256:13aaee059605bfb3a8009bc0d81796857614e0a4c7bc45b4d25c8284a8ae8a07" [label=""];
  "sha256:13aaee059605bfb3a8009bc0d81796857614e0a4c7bc45b4d25c8284a8ae8a07" -> "sha256:9d23b8e47f7161a2ed530e27c90089f548b523032f340862b02bf183750406db" [label=""];
  "sha256:9d23b8e47f7161a2ed530e27c90089f548b523032f340862b02bf183750406db" -> "sha256:fda7f939088c7d67ae57c55eb83460e0a841d39c917103f30a6c9d34dca39533" [label=""];
  "sha256:69776a5279fe155773f33edaaae8d5bbe5d1426009b3f316b534bc970c366d2e" -> "sha256:fda7f939088c7d67ae57c55eb83460e0a841d39c917103f30a6c9d34dca39533" [label=""];
  "sha256:fda7f939088c7d67ae57c55eb83460e0a841d39c917103f30a6c9d34dca39533" -> "sha256:94770dca1c6d15feb6c7e88629a45f0fa2509f5e13fa9e0818455cc9991e043a" [label=""];
  "sha256:69776a5279fe155773f33edaaae8d5bbe5d1426009b3f316b534bc970c366d2e" -> "sha256:94770dca1c6d15feb6c7e88629a45f0fa2509f5e13fa9e0818455cc9991e043a" [label=""];
  "sha256:94770dca1c6d15feb6c7e88629a45f0fa2509f5e13fa9e0818455cc9991e043a" -> "sha256:e260190636fd4b2b1bf01937065d20d0aaf4dd6ce0fee261e77748180c668a92" [label=""];
}

