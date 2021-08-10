[app/sources/263717836.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:95c185399b769d320e2bbd3f291416dd9bad9a25b9bfb225f6197191d92af45f" [label="local://context" shape="ellipse"];
  "sha256:e2109448088e7ca739bfae03c9c531bcb67c8937074567befbbf7a0cec8da972" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:63ef80feef1b2cda14c5489a951776e2962f4cde1cc9ae3f1b90f4d7e162cdcf" [label="sha256:63ef80feef1b2cda14c5489a951776e2962f4cde1cc9ae3f1b90f4d7e162cdcf" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:e2109448088e7ca739bfae03c9c531bcb67c8937074567befbbf7a0cec8da972" [label=""];
  "sha256:95c185399b769d320e2bbd3f291416dd9bad9a25b9bfb225f6197191d92af45f" -> "sha256:e2109448088e7ca739bfae03c9c531bcb67c8937074567befbbf7a0cec8da972" [label=""];
  "sha256:e2109448088e7ca739bfae03c9c531bcb67c8937074567befbbf7a0cec8da972" -> "sha256:63ef80feef1b2cda14c5489a951776e2962f4cde1cc9ae3f1b90f4d7e162cdcf" [label=""];
}

