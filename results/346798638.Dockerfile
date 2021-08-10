[app/sources/346798638.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:91ec5500327f17263b364e448cc7e8c2804dccd2312e5153be9894b03311e13f" [label="/bin/sh -c apt-get update && \tapt-get install -y \tbuild-essential \tgit \tg++ \tlibgtk-3-dev \tgtk-doc-tools \tgnutls-bin \tvalac \tintltool \tlibpcre2-dev \tlibglib3.0-cil-dev \tlibgnutls28-dev \tlibgirepository1.0-dev \tlibxml2-utils \tgperf" shape="box"];
  "sha256:ce898430158e4a993a9b5e6b8e177dad50feb25830825b8d93a32459d47309bd" [label="/bin/sh -c git clone https://github.com/thestinger/termite.git && \trm -rf termite/util && \tgit clone https://github.com/thestinger/util.git termite/util" shape="box"];
  "sha256:959c7f6c74be4ec9599122c710e02670fd3af780af98791d6911e87daf06e78b" [label="/bin/sh -c git clone https://github.com/thestinger/vte-ng.git" shape="box"];
  "sha256:15a20fbcd8d83aedda01d1ef6ac69a1d30844c0ed668560a67388003a109af3c" [label="/bin/sh -c cd vte-ng && ./autogen.sh && make && make install" shape="box"];
  "sha256:3bdb7d0ba7f68fdfbeaa96195295c4b4fd6b463397fc6d6310d169183ff22532" [label="/bin/sh -c cd ../termite && make" shape="box"];
  "sha256:06552235a0f6b1e387c855b1852be4de4e49e3ba1536f53726f3f4d074c84bcc" [label="sha256:06552235a0f6b1e387c855b1852be4de4e49e3ba1536f53726f3f4d074c84bcc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:91ec5500327f17263b364e448cc7e8c2804dccd2312e5153be9894b03311e13f" [label=""];
  "sha256:91ec5500327f17263b364e448cc7e8c2804dccd2312e5153be9894b03311e13f" -> "sha256:ce898430158e4a993a9b5e6b8e177dad50feb25830825b8d93a32459d47309bd" [label=""];
  "sha256:ce898430158e4a993a9b5e6b8e177dad50feb25830825b8d93a32459d47309bd" -> "sha256:959c7f6c74be4ec9599122c710e02670fd3af780af98791d6911e87daf06e78b" [label=""];
  "sha256:959c7f6c74be4ec9599122c710e02670fd3af780af98791d6911e87daf06e78b" -> "sha256:15a20fbcd8d83aedda01d1ef6ac69a1d30844c0ed668560a67388003a109af3c" [label=""];
  "sha256:15a20fbcd8d83aedda01d1ef6ac69a1d30844c0ed668560a67388003a109af3c" -> "sha256:3bdb7d0ba7f68fdfbeaa96195295c4b4fd6b463397fc6d6310d169183ff22532" [label=""];
  "sha256:3bdb7d0ba7f68fdfbeaa96195295c4b4fd6b463397fc6d6310d169183ff22532" -> "sha256:06552235a0f6b1e387c855b1852be4de4e49e3ba1536f53726f3f4d074c84bcc" [label=""];
}

