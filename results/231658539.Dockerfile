[app/sources/231658539.Dockerfile]
digraph {
  "sha256:20fd0f57032ffdcc3a8c8d0a0504b02ee2a2a7f278ce084851b21c0fe75408b7" [label="docker-image://docker.io/library/mariadb:10.3" shape="ellipse"];
  "sha256:bbaafcda4c973292f3cc0b0fdca297e92df8832aee5e171adfeafd35fee1f625" [label="/bin/sh -c rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:2e515139d73a851af227f134510023e14c23165dee2e9d298e1542d4afe5818f" [label="sha256:2e515139d73a851af227f134510023e14c23165dee2e9d298e1542d4afe5818f" shape="plaintext"];
  "sha256:20fd0f57032ffdcc3a8c8d0a0504b02ee2a2a7f278ce084851b21c0fe75408b7" -> "sha256:bbaafcda4c973292f3cc0b0fdca297e92df8832aee5e171adfeafd35fee1f625" [label=""];
  "sha256:bbaafcda4c973292f3cc0b0fdca297e92df8832aee5e171adfeafd35fee1f625" -> "sha256:2e515139d73a851af227f134510023e14c23165dee2e9d298e1542d4afe5818f" [label=""];
}

