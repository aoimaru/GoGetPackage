[app/sources/286620573.Dockerfile]
digraph {
  "sha256:a071512cf05006ebee7fecc0de3a04e5dd178edd497e9f71884a574f0e0b5f06" [label="docker-image://docker.io/kanisterio/kanister-tools:0.20.0" shape="ellipse"];
  "sha256:4165b1fc96b4ef8276c8650b298e39150eb9dbc1dcf1924feb9653fea3def17b" [label="local://context" shape="ellipse"];
  "sha256:f96571589fd537c8c2688bafc7b87e77ab37631dc91ecbb213b0464a057f2f3d" [label="copy{src=/esdump-setup.sh, dest=/esdump-setup.sh}" shape="note"];
  "sha256:a2090a51afb131fbec4e944bc6f1d891c57df1a0e5f1ef68ecf5f51bceea3dbd" [label="/bin/sh -c chmod +x /esdump-setup.sh &&    /esdump-setup.sh" shape="box"];
  "sha256:fdbdcef5ee6e1d8ee4593793aff886b1ff1d4c4bef8d447f31381de26aa20ec0" [label="sha256:fdbdcef5ee6e1d8ee4593793aff886b1ff1d4c4bef8d447f31381de26aa20ec0" shape="plaintext"];
  "sha256:a071512cf05006ebee7fecc0de3a04e5dd178edd497e9f71884a574f0e0b5f06" -> "sha256:f96571589fd537c8c2688bafc7b87e77ab37631dc91ecbb213b0464a057f2f3d" [label=""];
  "sha256:4165b1fc96b4ef8276c8650b298e39150eb9dbc1dcf1924feb9653fea3def17b" -> "sha256:f96571589fd537c8c2688bafc7b87e77ab37631dc91ecbb213b0464a057f2f3d" [label=""];
  "sha256:f96571589fd537c8c2688bafc7b87e77ab37631dc91ecbb213b0464a057f2f3d" -> "sha256:a2090a51afb131fbec4e944bc6f1d891c57df1a0e5f1ef68ecf5f51bceea3dbd" [label=""];
  "sha256:a2090a51afb131fbec4e944bc6f1d891c57df1a0e5f1ef68ecf5f51bceea3dbd" -> "sha256:fdbdcef5ee6e1d8ee4593793aff886b1ff1d4c4bef8d447f31381de26aa20ec0" [label=""];
}

