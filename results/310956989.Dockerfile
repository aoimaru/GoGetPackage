[app/sources/310956989.Dockerfile]
digraph {
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" [label="docker-image://docker.io/library/python:alpine" shape="ellipse"];
  "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:b288996eb0fc136efaa8aa18c2e2a0ae0e2265188cc9d681414dfa68a71fef9a" [label="local://context" shape="ellipse"];
  "sha256:ce3d57835d4506516b90584d6c9bca7ed5ace08c6a9d9fb7a9a81d8a715af22d" [label="copy{src=/rng.py, dest=/}" shape="note"];
  "sha256:c5ef95fa620b0dde6416f2887505b37660ffba9c6741d5adef6f241c9bbdb122" [label="sha256:c5ef95fa620b0dde6416f2887505b37660ffba9c6741d5adef6f241c9bbdb122" shape="plaintext"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" -> "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" [label=""];
  "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" -> "sha256:ce3d57835d4506516b90584d6c9bca7ed5ace08c6a9d9fb7a9a81d8a715af22d" [label=""];
  "sha256:b288996eb0fc136efaa8aa18c2e2a0ae0e2265188cc9d681414dfa68a71fef9a" -> "sha256:ce3d57835d4506516b90584d6c9bca7ed5ace08c6a9d9fb7a9a81d8a715af22d" [label=""];
  "sha256:ce3d57835d4506516b90584d6c9bca7ed5ace08c6a9d9fb7a9a81d8a715af22d" -> "sha256:c5ef95fa620b0dde6416f2887505b37660ffba9c6741d5adef6f241c9bbdb122" [label=""];
}

