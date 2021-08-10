[app/sources/473740644.Dockerfile]
digraph {
  "sha256:c99a6c70b106e0ed712ed3916a1eb7179b75448a002861b5c3c2054fc9b9ea3c" [label="docker-image://docker.io/library/cassandra:3.11.2" shape="ellipse"];
  "sha256:e042b92275a6f2cd0544000a05001f261639bf251e5a6eba0fdcd29952c66431" [label="local://context" shape="ellipse"];
  "sha256:cd09dcb05393090caefdfa809dd4d3e62d897957673775d5f691fd3d64aeaf20" [label="copy{src=/ready-probe.sh, dest=/ready-probe.sh}" shape="note"];
  "sha256:f99a3c2c2a6afe205665f92c4484d487467d84d2e7fe4f0dd8987c8d9c89931d" [label="/bin/sh -c chmod +x /ready-probe.sh" shape="box"];
  "sha256:10709e08bcacdf7879106c530a5cf5f2ad274b61a998692be4376cdbe6b46f38" [label="sha256:10709e08bcacdf7879106c530a5cf5f2ad274b61a998692be4376cdbe6b46f38" shape="plaintext"];
  "sha256:c99a6c70b106e0ed712ed3916a1eb7179b75448a002861b5c3c2054fc9b9ea3c" -> "sha256:cd09dcb05393090caefdfa809dd4d3e62d897957673775d5f691fd3d64aeaf20" [label=""];
  "sha256:e042b92275a6f2cd0544000a05001f261639bf251e5a6eba0fdcd29952c66431" -> "sha256:cd09dcb05393090caefdfa809dd4d3e62d897957673775d5f691fd3d64aeaf20" [label=""];
  "sha256:cd09dcb05393090caefdfa809dd4d3e62d897957673775d5f691fd3d64aeaf20" -> "sha256:f99a3c2c2a6afe205665f92c4484d487467d84d2e7fe4f0dd8987c8d9c89931d" [label=""];
  "sha256:f99a3c2c2a6afe205665f92c4484d487467d84d2e7fe4f0dd8987c8d9c89931d" -> "sha256:10709e08bcacdf7879106c530a5cf5f2ad274b61a998692be4376cdbe6b46f38" [label=""];
}

