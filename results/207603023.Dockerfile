[app/sources/207603023.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:97bc968f30baa4b51375405272e0909f8d013b5a6ee4a8be8b2476b8b66cec39" [label="local://context" shape="ellipse"];
  "sha256:cc7eeb260ac68b7e106c039c5d6c00c82b894f5970ed182289ba6567673e9567" [label="copy{src=/build-asterisk.sh, dest=/}" shape="note"];
  "sha256:08170419d0eb13a1033305a37764e0a6aa03185c052fcd4e374f4c5efdcd3071" [label="/bin/sh -c /build-asterisk.sh" shape="box"];
  "sha256:69863ee0ab9ce8ad338e63ad4b47160a623d58a0d518de2ca377d8b2055860ba" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:e0f99dd0c334c567c625ef0803055fbcd9c1bd6dba213122910a6166c100a526" [label="sha256:e0f99dd0c334c567c625ef0803055fbcd9c1bd6dba213122910a6166c100a526" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:cc7eeb260ac68b7e106c039c5d6c00c82b894f5970ed182289ba6567673e9567" [label=""];
  "sha256:97bc968f30baa4b51375405272e0909f8d013b5a6ee4a8be8b2476b8b66cec39" -> "sha256:cc7eeb260ac68b7e106c039c5d6c00c82b894f5970ed182289ba6567673e9567" [label=""];
  "sha256:cc7eeb260ac68b7e106c039c5d6c00c82b894f5970ed182289ba6567673e9567" -> "sha256:08170419d0eb13a1033305a37764e0a6aa03185c052fcd4e374f4c5efdcd3071" [label=""];
  "sha256:08170419d0eb13a1033305a37764e0a6aa03185c052fcd4e374f4c5efdcd3071" -> "sha256:69863ee0ab9ce8ad338e63ad4b47160a623d58a0d518de2ca377d8b2055860ba" [label=""];
  "sha256:97bc968f30baa4b51375405272e0909f8d013b5a6ee4a8be8b2476b8b66cec39" -> "sha256:69863ee0ab9ce8ad338e63ad4b47160a623d58a0d518de2ca377d8b2055860ba" [label=""];
  "sha256:69863ee0ab9ce8ad338e63ad4b47160a623d58a0d518de2ca377d8b2055860ba" -> "sha256:e0f99dd0c334c567c625ef0803055fbcd9c1bd6dba213122910a6166c100a526" [label=""];
}

