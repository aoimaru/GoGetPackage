[app/sources/252794269.Dockerfile]
digraph {
  "sha256:7605996e8c739b4dc40eb0bcc26f43a126d87462eac214024bb0a57a39504a7b" [label="docker-image://docker.io/library/ubuntu-upstart:14.04" shape="ellipse"];
  "sha256:6474d5aefcbc859ba1112e10fcacc8e28e9256b8354baa6e0c0ef16ac4838ef4" [label="/bin/sh -c apt-get update; apt-get -y upgrade" shape="box"];
  "sha256:dedf7c2f09b1bd9556046a36136af26ab3acad8c1acfaacfa53609ceddd63236" [label="/bin/sh -c apt-get -y purge openssh-server openssh-client ; apt-get -y autoremove" shape="box"];
  "sha256:d2c2193cff3f27f20b313964a7eb413e70a806089b89c5c750d7545eda4abf6f" [label="/bin/sh -c apt-get -y install vim ufw bind9" shape="box"];
  "sha256:43c6b1a2458f58fd8d37976e97132fcb5cff244c1fe33191ea6b9af0eedc0c1b" [label="local://context" shape="ellipse"];
  "sha256:519a017a4cb1a1d99e6b5c24ee3c01964fac9e3acefcf7aaf180a8914977614c" [label="copy{src=/, dest=/data/}" shape="note"];
  "sha256:e14e911bce4bdb6a6d2997ee3f8c3854c021dffc186813439848cc813bb7a841" [label="/data/config.sh" shape="box"];
  "sha256:8deaf7c2871226012fd39c106dd35df88dd560184ed532ed319bf0aca3754a45" [label="sha256:8deaf7c2871226012fd39c106dd35df88dd560184ed532ed319bf0aca3754a45" shape="plaintext"];
  "sha256:7605996e8c739b4dc40eb0bcc26f43a126d87462eac214024bb0a57a39504a7b" -> "sha256:6474d5aefcbc859ba1112e10fcacc8e28e9256b8354baa6e0c0ef16ac4838ef4" [label=""];
  "sha256:6474d5aefcbc859ba1112e10fcacc8e28e9256b8354baa6e0c0ef16ac4838ef4" -> "sha256:dedf7c2f09b1bd9556046a36136af26ab3acad8c1acfaacfa53609ceddd63236" [label=""];
  "sha256:dedf7c2f09b1bd9556046a36136af26ab3acad8c1acfaacfa53609ceddd63236" -> "sha256:d2c2193cff3f27f20b313964a7eb413e70a806089b89c5c750d7545eda4abf6f" [label=""];
  "sha256:d2c2193cff3f27f20b313964a7eb413e70a806089b89c5c750d7545eda4abf6f" -> "sha256:519a017a4cb1a1d99e6b5c24ee3c01964fac9e3acefcf7aaf180a8914977614c" [label=""];
  "sha256:43c6b1a2458f58fd8d37976e97132fcb5cff244c1fe33191ea6b9af0eedc0c1b" -> "sha256:519a017a4cb1a1d99e6b5c24ee3c01964fac9e3acefcf7aaf180a8914977614c" [label=""];
  "sha256:519a017a4cb1a1d99e6b5c24ee3c01964fac9e3acefcf7aaf180a8914977614c" -> "sha256:e14e911bce4bdb6a6d2997ee3f8c3854c021dffc186813439848cc813bb7a841" [label=""];
  "sha256:e14e911bce4bdb6a6d2997ee3f8c3854c021dffc186813439848cc813bb7a841" -> "sha256:8deaf7c2871226012fd39c106dd35df88dd560184ed532ed319bf0aca3754a45" [label=""];
}

