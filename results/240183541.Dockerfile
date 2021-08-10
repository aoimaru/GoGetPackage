[app/sources/240183541.Dockerfile]
digraph {
  "sha256:78470e0cedace95289a7b8d924b1d3fb35deeaf1e81df9915ff6a7b25954da32" [label="docker-image://docker.io/yandex/rep:0.6.6" shape="ellipse"];
  "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" [label="/bin/sh -c sudo apt-get install -y graphviz" shape="box"];
  "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install pydot-ng" shape="box"];
  "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install keras==1.2.0" shape="box"];
  "sha256:23e9fcbaa589f6d82cf0e0dd1127deb16d7dce3671a2721c1ad4eb266fef577e" [label="sha256:23e9fcbaa589f6d82cf0e0dd1127deb16d7dce3671a2721c1ad4eb266fef577e" shape="plaintext"];
  "sha256:78470e0cedace95289a7b8d924b1d3fb35deeaf1e81df9915ff6a7b25954da32" -> "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" [label=""];
  "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" -> "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" [label=""];
  "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" -> "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" [label=""];
  "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" -> "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" [label=""];
  "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" -> "sha256:23e9fcbaa589f6d82cf0e0dd1127deb16d7dce3671a2721c1ad4eb266fef577e" [label=""];
}

