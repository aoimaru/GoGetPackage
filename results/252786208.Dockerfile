[app/sources/252786208.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a21a3759206ed9bdfd1783002a33eb41f4752ff218e29076a1610375dfdf1cb4" [label="/bin/sh -c apt-get -y install supervisor postfix sasl2-bin opendkim opendkim-tools" shape="box"];
  "sha256:4ccd01a8df1ef3725a659c2ec6dce76d2419771fb1e271200e5cc731f1c283a7" [label="local://context" shape="ellipse"];
  "sha256:d0e11cee9f26e1918e6a57272f672894bd382b847bababae8325d1be1804a46b" [label="copy{src=/assets/install.sh, dest=/opt/install.sh}" shape="note"];
  "sha256:f1cc78ad44c9f259fcf90dcd8beef07f8e12a73519f00901fe97b9323b8a9d96" [label="sha256:f1cc78ad44c9f259fcf90dcd8beef07f8e12a73519f00901fe97b9323b8a9d96" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" [label=""];
  "sha256:7836ac1dd27088507a3f7cfa91b8733ecc5342a02e1f4b354ce259a71963ad61" -> "sha256:a21a3759206ed9bdfd1783002a33eb41f4752ff218e29076a1610375dfdf1cb4" [label=""];
  "sha256:a21a3759206ed9bdfd1783002a33eb41f4752ff218e29076a1610375dfdf1cb4" -> "sha256:d0e11cee9f26e1918e6a57272f672894bd382b847bababae8325d1be1804a46b" [label=""];
  "sha256:4ccd01a8df1ef3725a659c2ec6dce76d2419771fb1e271200e5cc731f1c283a7" -> "sha256:d0e11cee9f26e1918e6a57272f672894bd382b847bababae8325d1be1804a46b" [label=""];
  "sha256:d0e11cee9f26e1918e6a57272f672894bd382b847bababae8325d1be1804a46b" -> "sha256:f1cc78ad44c9f259fcf90dcd8beef07f8e12a73519f00901fe97b9323b8a9d96" [label=""];
}

