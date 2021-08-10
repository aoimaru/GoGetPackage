[app/sources/252783708.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:e0a9185498f2c640e54f938f39639f80311fe8b1ab9710415ad4d1cc8cbb6c3f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f042d9423cc33593e5a0c14cdcf5b2a6d325fdef05c21b1e1cfc317b9b3c0b8d" [label="/bin/sh -c apt-get install --assume-yes vim microcom" shape="box"];
  "sha256:75bb4cef7ec0d2305a0ffad72e3aec0c30fb206fc8023d73e2385d9b7e577c61" [label="/bin/sh -c pip3 install filemagic" shape="box"];
  "sha256:26c224a31e7db13a4d680fd71b4ec2c01e38c70094bc1fe47132588bfeff2254" [label="/bin/sh -c git clone https://github.com/labgrid-project/labgrid /opt/labgrid" shape="box"];
  "sha256:05c90237baddadd92e8dfb7b04439d83d8a5bd0e2dd6bb543ea18ff9e48f07cd" [label="/bin/sh -c cd /opt/labgrid && python3 setup.py install" shape="box"];
  "sha256:8c01498647b6b7589f5100283b109356c44379fdf2115abdb30d11c45094f696" [label="/bin/sh -c echo '#!/bin/bash' > /opt/entry_script.sh" shape="box"];
  "sha256:cc5d512b1e32b3459ebf82f95100ec77671be62920ad8c531a993ae6d5e6b42b" [label="/bin/sh -c echo '/bin/bash' >> /opt/entry_script.sh" shape="box"];
  "sha256:56972be87b77a681db5d1e293ae1eee8ea234287f45badefb755913e07f2186b" [label="/bin/sh -c chmod a+x /opt/entry_script.sh" shape="box"];
  "sha256:dcccfc905957efec81f1c46f8859038b5db797394e82f729da73f480982a44dd" [label="sha256:dcccfc905957efec81f1c46f8859038b5db797394e82f729da73f480982a44dd" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:e0a9185498f2c640e54f938f39639f80311fe8b1ab9710415ad4d1cc8cbb6c3f" [label=""];
  "sha256:e0a9185498f2c640e54f938f39639f80311fe8b1ab9710415ad4d1cc8cbb6c3f" -> "sha256:f042d9423cc33593e5a0c14cdcf5b2a6d325fdef05c21b1e1cfc317b9b3c0b8d" [label=""];
  "sha256:f042d9423cc33593e5a0c14cdcf5b2a6d325fdef05c21b1e1cfc317b9b3c0b8d" -> "sha256:75bb4cef7ec0d2305a0ffad72e3aec0c30fb206fc8023d73e2385d9b7e577c61" [label=""];
  "sha256:75bb4cef7ec0d2305a0ffad72e3aec0c30fb206fc8023d73e2385d9b7e577c61" -> "sha256:26c224a31e7db13a4d680fd71b4ec2c01e38c70094bc1fe47132588bfeff2254" [label=""];
  "sha256:26c224a31e7db13a4d680fd71b4ec2c01e38c70094bc1fe47132588bfeff2254" -> "sha256:05c90237baddadd92e8dfb7b04439d83d8a5bd0e2dd6bb543ea18ff9e48f07cd" [label=""];
  "sha256:05c90237baddadd92e8dfb7b04439d83d8a5bd0e2dd6bb543ea18ff9e48f07cd" -> "sha256:8c01498647b6b7589f5100283b109356c44379fdf2115abdb30d11c45094f696" [label=""];
  "sha256:8c01498647b6b7589f5100283b109356c44379fdf2115abdb30d11c45094f696" -> "sha256:cc5d512b1e32b3459ebf82f95100ec77671be62920ad8c531a993ae6d5e6b42b" [label=""];
  "sha256:cc5d512b1e32b3459ebf82f95100ec77671be62920ad8c531a993ae6d5e6b42b" -> "sha256:56972be87b77a681db5d1e293ae1eee8ea234287f45badefb755913e07f2186b" [label=""];
  "sha256:56972be87b77a681db5d1e293ae1eee8ea234287f45badefb755913e07f2186b" -> "sha256:dcccfc905957efec81f1c46f8859038b5db797394e82f729da73f480982a44dd" [label=""];
}

