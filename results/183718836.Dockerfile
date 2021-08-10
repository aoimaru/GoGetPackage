[app/sources/183718836.Dockerfile]
digraph {
  "sha256:88b2787f4e0ac8e9a9f33ea92fb55876dd0777d6a0fc2d9eca3bf1ad3dcf95e1" [label="docker-image://docker.io/seldonio/td-agent:1.0" shape="ellipse"];
  "sha256:b7782813bbe0c12eb6df4a253837b159b79b11d2781f0f7a595a1f4dec10daa9" [label="local://context" shape="ellipse"];
  "sha256:6523da7274907d2e1d1003658ce4ea5a2a535c3ae8f430737cc9e46237ac162b" [label="copy{src=/td-agent.conf, dest=/etc/td-agent/td-agent.conf}" shape="note"];
  "sha256:1ff94c4fb9f012bd58214ac54a1e56269e5fd2bab1c852ee5e33cdd8d95c1aba" [label="sha256:1ff94c4fb9f012bd58214ac54a1e56269e5fd2bab1c852ee5e33cdd8d95c1aba" shape="plaintext"];
  "sha256:88b2787f4e0ac8e9a9f33ea92fb55876dd0777d6a0fc2d9eca3bf1ad3dcf95e1" -> "sha256:6523da7274907d2e1d1003658ce4ea5a2a535c3ae8f430737cc9e46237ac162b" [label=""];
  "sha256:b7782813bbe0c12eb6df4a253837b159b79b11d2781f0f7a595a1f4dec10daa9" -> "sha256:6523da7274907d2e1d1003658ce4ea5a2a535c3ae8f430737cc9e46237ac162b" [label=""];
  "sha256:6523da7274907d2e1d1003658ce4ea5a2a535c3ae8f430737cc9e46237ac162b" -> "sha256:1ff94c4fb9f012bd58214ac54a1e56269e5fd2bab1c852ee5e33cdd8d95c1aba" [label=""];
}

