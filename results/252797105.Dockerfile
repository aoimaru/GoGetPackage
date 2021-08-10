[app/sources/252797105.Dockerfile]
digraph {
  "sha256:2c68bde543037eacd18a8470bf3dab61c90ebe2c046908bfbf8cdd55dd0a0624" [label="local://context" shape="ellipse"];
  "sha256:3c5d1f4f3b80288cef74bfe5c6168302c888da80994dda945637ae06d66ec952" [label="copy{src=/web-server, dest=/}" shape="note"];
  "sha256:d27ee58e1e347edc13633f3febcda2a06e535472f24f3779df7c3092ef0041a8" [label="sha256:d27ee58e1e347edc13633f3febcda2a06e535472f24f3779df7c3092ef0041a8" shape="plaintext"];
  "sha256:2c68bde543037eacd18a8470bf3dab61c90ebe2c046908bfbf8cdd55dd0a0624" -> "sha256:3c5d1f4f3b80288cef74bfe5c6168302c888da80994dda945637ae06d66ec952" [label=""];
  "sha256:3c5d1f4f3b80288cef74bfe5c6168302c888da80994dda945637ae06d66ec952" -> "sha256:d27ee58e1e347edc13633f3febcda2a06e535472f24f3779df7c3092ef0041a8" [label=""];
}

