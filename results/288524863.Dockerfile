[app/sources/288524863.Dockerfile]
digraph {
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" [label="docker-image://docker.io/library/nginx:1.11" shape="ellipse"];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label="/bin/sh -c apt-get update \t&& apt-get install -y \t\tcurl \t\t--no-install-recommends \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc" shape="box"];
  "sha256:6f495775d772d8d7d9724b27736c1fb130b603946689bd18afbdaf6965151ade" [label="local://context" shape="ellipse"];
  "sha256:bb3d3676fdb6194848ede1d8944783853e4d708786e2185f3fe12b59462d4bbe" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:1b301c569a425778b76d823444d02e3fe0a38a7fbf107530f553ed0a7cd91720" [label="sha256:1b301c569a425778b76d823444d02e3fe0a38a7fbf107530f553ed0a7cd91720" shape="plaintext"];
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" -> "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label=""];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" -> "sha256:bb3d3676fdb6194848ede1d8944783853e4d708786e2185f3fe12b59462d4bbe" [label=""];
  "sha256:6f495775d772d8d7d9724b27736c1fb130b603946689bd18afbdaf6965151ade" -> "sha256:bb3d3676fdb6194848ede1d8944783853e4d708786e2185f3fe12b59462d4bbe" [label=""];
  "sha256:bb3d3676fdb6194848ede1d8944783853e4d708786e2185f3fe12b59462d4bbe" -> "sha256:1b301c569a425778b76d823444d02e3fe0a38a7fbf107530f553ed0a7cd91720" [label=""];
}

