[app/sources/216654058.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label="/bin/sh -c yum -y install /usr/bin/ps nfs-utils && yum clean all" shape="box"];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label="/bin/sh -c mkdir -p /exports" shape="box"];
  "sha256:2f1a188ce20ef77b792f16743d733ccd90ffc67d538a6f77e64184e13efba688" [label="local://context" shape="ellipse"];
  "sha256:f58743cd61d95261ef360f634ef7f43da8fe561c1fd15f1d36e894570074df92" [label="copy{src=/run_nfs.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:5448bd42e25798d2dab15527dddd6947aadacf3653a82112d7a26eb1b21c1f25" [label="copy{src=/index.html, dest=/tmp/index.html}" shape="note"];
  "sha256:8d9bec512a980a680a2667ead37c569ee7a42f0f37331a5a1a8fd1cf25b45e0c" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:3b35bd1288eb0774fce0c62596fdae3a8741405371c1ee8a6eb7365b377ad008" [label="sha256:3b35bd1288eb0774fce0c62596fdae3a8741405371c1ee8a6eb7365b377ad008" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label=""];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" -> "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label=""];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" -> "sha256:f58743cd61d95261ef360f634ef7f43da8fe561c1fd15f1d36e894570074df92" [label=""];
  "sha256:2f1a188ce20ef77b792f16743d733ccd90ffc67d538a6f77e64184e13efba688" -> "sha256:f58743cd61d95261ef360f634ef7f43da8fe561c1fd15f1d36e894570074df92" [label=""];
  "sha256:f58743cd61d95261ef360f634ef7f43da8fe561c1fd15f1d36e894570074df92" -> "sha256:5448bd42e25798d2dab15527dddd6947aadacf3653a82112d7a26eb1b21c1f25" [label=""];
  "sha256:2f1a188ce20ef77b792f16743d733ccd90ffc67d538a6f77e64184e13efba688" -> "sha256:5448bd42e25798d2dab15527dddd6947aadacf3653a82112d7a26eb1b21c1f25" [label=""];
  "sha256:5448bd42e25798d2dab15527dddd6947aadacf3653a82112d7a26eb1b21c1f25" -> "sha256:8d9bec512a980a680a2667ead37c569ee7a42f0f37331a5a1a8fd1cf25b45e0c" [label=""];
  "sha256:8d9bec512a980a680a2667ead37c569ee7a42f0f37331a5a1a8fd1cf25b45e0c" -> "sha256:3b35bd1288eb0774fce0c62596fdae3a8741405371c1ee8a6eb7365b377ad008" [label=""];
}

