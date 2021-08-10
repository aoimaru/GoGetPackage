[app/sources/252784331.Dockerfile]
digraph {
  "sha256:7479a0eaa72d06eab57a1899e1183b02cfe98a80e5df00f7bd24ec9f5f54783d" [label="docker-image://docker.io/bitnami/node:8-prod@sha256:6c6240803f7d11d9b24fd316d6242a7fb00c9fdf9fdd5fd32bb7c120d4d799d4" shape="ellipse"];
  "sha256:6578d927899090a233aa714fca4a851ce12ea6a21d7e2ac91e1300b992085fa3" [label="mkdir{path=/app}" shape="note"];
  "sha256:13d3c5e130dce18e229701100139b12e6c9650de0685b2ee0e83456d40c77715" [label="local://context" shape="ellipse"];
  "sha256:f1ec71f2dc6b05b6cf9682784ffdbaabe5cf189345d7e8d56b0351953658eaa3" [label="copy{src=/--from=builder, dest=/app},copy{src=/app, dest=/app}" shape="note"];
  "sha256:bcc1b8264698472a6c058511cd9bcb6f4aa7a5329a61dccb9aae011e6b29911b" [label="/bin/sh -c npm install yarn --global" shape="box"];
  "sha256:0ae2a665f7e9a606bdc129b36e1c0461ea4796890f9cec233d028355e17572b3" [label="sha256:0ae2a665f7e9a606bdc129b36e1c0461ea4796890f9cec233d028355e17572b3" shape="plaintext"];
  "sha256:7479a0eaa72d06eab57a1899e1183b02cfe98a80e5df00f7bd24ec9f5f54783d" -> "sha256:6578d927899090a233aa714fca4a851ce12ea6a21d7e2ac91e1300b992085fa3" [label=""];
  "sha256:6578d927899090a233aa714fca4a851ce12ea6a21d7e2ac91e1300b992085fa3" -> "sha256:f1ec71f2dc6b05b6cf9682784ffdbaabe5cf189345d7e8d56b0351953658eaa3" [label=""];
  "sha256:13d3c5e130dce18e229701100139b12e6c9650de0685b2ee0e83456d40c77715" -> "sha256:f1ec71f2dc6b05b6cf9682784ffdbaabe5cf189345d7e8d56b0351953658eaa3" [label=""];
  "sha256:f1ec71f2dc6b05b6cf9682784ffdbaabe5cf189345d7e8d56b0351953658eaa3" -> "sha256:bcc1b8264698472a6c058511cd9bcb6f4aa7a5329a61dccb9aae011e6b29911b" [label=""];
  "sha256:bcc1b8264698472a6c058511cd9bcb6f4aa7a5329a61dccb9aae011e6b29911b" -> "sha256:0ae2a665f7e9a606bdc129b36e1c0461ea4796890f9cec233d028355e17572b3" [label=""];
}

