[app/sources/192538408.Dockerfile]
digraph {
  "sha256:e2a775baaaf0facb88f1b287cbf8a1e76c676819fa5f8c5475badc3379570f5b" [label="docker-image://docker.io/apcera/kurmaos-stage4:latest" shape="ellipse"];
  "sha256:4d2dcc8cd40e3f8a8440cdf4cdc05af70ec4b2285e0920d7f434533a7f09f523" [label="local://context" shape="ellipse"];
  "sha256:a56eb209caef51f845f89d1a9db6ae10bd559be0f57fef3a5c55699ace0304b0" [label="copy{src=/build.sh, dest=/tmp/},copy{src=/kernel.defconfig, dest=/tmp/},copy{src=/patches, dest=/tmp/}" shape="note"];
  "sha256:ea77c3552481b3dedecc4bf1db38e03596fc7bbae7c980a9e00e19291e986156" [label="/bin/sh -c /tmp/build.sh && rm /tmp/build.sh" shape="box"];
  "sha256:088176d32ef5ea3b8193fb25a81886c80ac77f638c0a01e6a948e21fdec84e00" [label="sha256:088176d32ef5ea3b8193fb25a81886c80ac77f638c0a01e6a948e21fdec84e00" shape="plaintext"];
  "sha256:e2a775baaaf0facb88f1b287cbf8a1e76c676819fa5f8c5475badc3379570f5b" -> "sha256:a56eb209caef51f845f89d1a9db6ae10bd559be0f57fef3a5c55699ace0304b0" [label=""];
  "sha256:4d2dcc8cd40e3f8a8440cdf4cdc05af70ec4b2285e0920d7f434533a7f09f523" -> "sha256:a56eb209caef51f845f89d1a9db6ae10bd559be0f57fef3a5c55699ace0304b0" [label=""];
  "sha256:a56eb209caef51f845f89d1a9db6ae10bd559be0f57fef3a5c55699ace0304b0" -> "sha256:ea77c3552481b3dedecc4bf1db38e03596fc7bbae7c980a9e00e19291e986156" [label=""];
  "sha256:ea77c3552481b3dedecc4bf1db38e03596fc7bbae7c980a9e00e19291e986156" -> "sha256:088176d32ef5ea3b8193fb25a81886c80ac77f638c0a01e6a948e21fdec84e00" [label=""];
}

