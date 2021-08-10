[app/sources/274849897.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:bb626f3d36a9bdc0cb5be4c45ed9a8fe4510b826a683f4a6a1d4a01ec3458714" [label="/bin/sh -c apt-get update -y && apt-get install -y python python-pip" shape="box"];
  "sha256:4aa7bf8c47524ff1c7d9898ffd5554c7fe1d8fa492d781ab1d07ab6013516716" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:90a1ae87a6785595a2e0d98363cdcf8e80320dd17de0378680efb909fae64e2f" [label="sha256:90a1ae87a6785595a2e0d98363cdcf8e80320dd17de0378680efb909fae64e2f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:bb626f3d36a9bdc0cb5be4c45ed9a8fe4510b826a683f4a6a1d4a01ec3458714" [label=""];
  "sha256:bb626f3d36a9bdc0cb5be4c45ed9a8fe4510b826a683f4a6a1d4a01ec3458714" -> "sha256:4aa7bf8c47524ff1c7d9898ffd5554c7fe1d8fa492d781ab1d07ab6013516716" [label=""];
  "sha256:4aa7bf8c47524ff1c7d9898ffd5554c7fe1d8fa492d781ab1d07ab6013516716" -> "sha256:90a1ae87a6785595a2e0d98363cdcf8e80320dd17de0378680efb909fae64e2f" [label=""];
}

