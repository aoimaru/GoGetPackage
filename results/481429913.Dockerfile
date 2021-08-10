[app/sources/481429913.Dockerfile]
digraph {
  "sha256:782657ae9a4fc9b34b0087130d7abc00d8925c5260fe907379cd66e164762078" [label="docker-image://docker.io/minoruta/pjsip-node-alpine:latest" shape="ellipse"];
  "sha256:d788a033d80e72858961d2f59b9ad9e2397c8fd7f1e3237ffaf7566131e8c2bf" [label="mkdir{path=/root}" shape="note"];
  "sha256:e295161755e07c92d31e6725cf7581e58982db09cb9b163caec71f76c09e78bf" [label="/bin/sh -c apk add --no-cache     python     pkgconf     alpine-sdk     && npm install -g node-gyp" shape="box"];
  "sha256:b1e9fdda37bb4fa26a98582cd9479430ae1be1872257c9a892e75f3c40cdd57d" [label="sha256:b1e9fdda37bb4fa26a98582cd9479430ae1be1872257c9a892e75f3c40cdd57d" shape="plaintext"];
  "sha256:782657ae9a4fc9b34b0087130d7abc00d8925c5260fe907379cd66e164762078" -> "sha256:d788a033d80e72858961d2f59b9ad9e2397c8fd7f1e3237ffaf7566131e8c2bf" [label=""];
  "sha256:d788a033d80e72858961d2f59b9ad9e2397c8fd7f1e3237ffaf7566131e8c2bf" -> "sha256:e295161755e07c92d31e6725cf7581e58982db09cb9b163caec71f76c09e78bf" [label=""];
  "sha256:e295161755e07c92d31e6725cf7581e58982db09cb9b163caec71f76c09e78bf" -> "sha256:b1e9fdda37bb4fa26a98582cd9479430ae1be1872257c9a892e75f3c40cdd57d" [label=""];
}

