[app/sources/292345373.Dockerfile]
digraph {
  "sha256:8136c1683c82c584873dc7559fff03869c2bcac3f69e0eb7cdff1f3b94ec978a" [label="docker-image://docker.io/library/haproxy:1.6-alpine" shape="ellipse"];
  "sha256:f2532730aabd5153091ca1006caddb7f322e63b7642488521e6ea4850bb387bd" [label="local://context" shape="ellipse"];
  "sha256:4742877e4d4e6308e48eeb01c8392c876838e2f09c2d4c79bb8ad67989454b22" [label="copy{src=/haproxy.cfg, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:b3263d0ce518e2b850dabde3a7eab4b2d3889c75ebbc8b1715480af5a791588b" [label="sha256:b3263d0ce518e2b850dabde3a7eab4b2d3889c75ebbc8b1715480af5a791588b" shape="plaintext"];
  "sha256:8136c1683c82c584873dc7559fff03869c2bcac3f69e0eb7cdff1f3b94ec978a" -> "sha256:4742877e4d4e6308e48eeb01c8392c876838e2f09c2d4c79bb8ad67989454b22" [label=""];
  "sha256:f2532730aabd5153091ca1006caddb7f322e63b7642488521e6ea4850bb387bd" -> "sha256:4742877e4d4e6308e48eeb01c8392c876838e2f09c2d4c79bb8ad67989454b22" [label=""];
  "sha256:4742877e4d4e6308e48eeb01c8392c876838e2f09c2d4c79bb8ad67989454b22" -> "sha256:b3263d0ce518e2b850dabde3a7eab4b2d3889c75ebbc8b1715480af5a791588b" [label=""];
}

