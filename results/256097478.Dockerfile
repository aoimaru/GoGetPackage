[app/sources/256097478.Dockerfile]
digraph {
  "sha256:587281e637405dd855e6f9033070ca93c62e8900c0536dcad5dda118fd63f326" [label="docker-image://docker.io/flynn/busybox:latest" shape="ellipse"];
  "sha256:93a7b4911082438b3d5e4fe933f4a3185c0390e119770436de84bd39df7b0169" [label="local://context" shape="ellipse"];
  "sha256:3fc4babaef2a92ca220acd53cc3f729dc6d080329e013e96a3e0584f3bd3589e" [label="copy{src=/app, dest=/bin/app}" shape="note"];
  "sha256:d1ed7681a98fcebf5acbf9b690a759219709cda0ef0b04f89f4ea30e1ecb7a5d" [label="sha256:d1ed7681a98fcebf5acbf9b690a759219709cda0ef0b04f89f4ea30e1ecb7a5d" shape="plaintext"];
  "sha256:587281e637405dd855e6f9033070ca93c62e8900c0536dcad5dda118fd63f326" -> "sha256:3fc4babaef2a92ca220acd53cc3f729dc6d080329e013e96a3e0584f3bd3589e" [label=""];
  "sha256:93a7b4911082438b3d5e4fe933f4a3185c0390e119770436de84bd39df7b0169" -> "sha256:3fc4babaef2a92ca220acd53cc3f729dc6d080329e013e96a3e0584f3bd3589e" [label=""];
  "sha256:3fc4babaef2a92ca220acd53cc3f729dc6d080329e013e96a3e0584f3bd3589e" -> "sha256:d1ed7681a98fcebf5acbf9b690a759219709cda0ef0b04f89f4ea30e1ecb7a5d" [label=""];
}

