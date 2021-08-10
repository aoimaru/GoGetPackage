[app/sources/306825527.Dockerfile]
digraph {
  "sha256:83ef39eb6646d5ef86a33004c0c49b4ab8385fb6556af21f908ca967649cb2cb" [label="docker-image://docker.io/arm32v7/ubuntu:rolling" shape="ellipse"];
  "sha256:bec9d24c7b4ef0bb40a276f84e94b6221dc1378f40833d6af0d6c28227166d2b" [label="local://context" shape="ellipse"];
  "sha256:ecc32facd49af9f305b9596c0a57b24d8b3103e4c2bed7547114bfebab3fe4bc" [label="copy{src=/bin, dest=/usr/bin/}" shape="note"];
  "sha256:bf0c57e1039ee5134247bb3a9b56dc0d41433c9a05bba46479d30cc92927bb6b" [label="mkdir{path=/var/lib/boinc}" shape="note"];
  "sha256:443d7ec2ce676cf9b65ebb52c5f79b1cddaab11f9e89eade4f6b2329cef10685" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     boinc-client &&     apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2b6bb1b4e3d69436b6c250e912114e9a1bd03e4efbca80500094ac5957384ba7" [label="sha256:2b6bb1b4e3d69436b6c250e912114e9a1bd03e4efbca80500094ac5957384ba7" shape="plaintext"];
  "sha256:83ef39eb6646d5ef86a33004c0c49b4ab8385fb6556af21f908ca967649cb2cb" -> "sha256:ecc32facd49af9f305b9596c0a57b24d8b3103e4c2bed7547114bfebab3fe4bc" [label=""];
  "sha256:bec9d24c7b4ef0bb40a276f84e94b6221dc1378f40833d6af0d6c28227166d2b" -> "sha256:ecc32facd49af9f305b9596c0a57b24d8b3103e4c2bed7547114bfebab3fe4bc" [label=""];
  "sha256:ecc32facd49af9f305b9596c0a57b24d8b3103e4c2bed7547114bfebab3fe4bc" -> "sha256:bf0c57e1039ee5134247bb3a9b56dc0d41433c9a05bba46479d30cc92927bb6b" [label=""];
  "sha256:bf0c57e1039ee5134247bb3a9b56dc0d41433c9a05bba46479d30cc92927bb6b" -> "sha256:443d7ec2ce676cf9b65ebb52c5f79b1cddaab11f9e89eade4f6b2329cef10685" [label=""];
  "sha256:443d7ec2ce676cf9b65ebb52c5f79b1cddaab11f9e89eade4f6b2329cef10685" -> "sha256:2b6bb1b4e3d69436b6c250e912114e9a1bd03e4efbca80500094ac5957384ba7" [label=""];
}

