[app/sources/252782541.Dockerfile]
digraph {
  "sha256:32fad9c646c7649bc166c52c902e676303d0eec098ad68eae01fdbc323d6108f" [label="docker-image://docker.io/fstehle/rpi-homebridge@sha256:5d1a2a1a0ab35d07d07bdd8216d49e64e9e3e4c0af52804fb5dc9e4ff8c8ff0f" shape="ellipse"];
  "sha256:09aa099b9671a898b3740ff69778798dff71ee2071ee5e9b8a9e293a646a9565" [label="cross-build-start" shape="box"];
  "sha256:8bacf0535fb8b2fdb06dce0d67c9aa02fdd2f60e5974a85e4e9802a399fddf9e" [label="local://context" shape="ellipse"];
  "sha256:9bd937066c99754d06154bbe6c540c4ec85f5cd87fb664b126cb3487228b8f37" [label="copy{src=/docker-run.sh, dest=/usr/bin/docker-run}" shape="note"];
  "sha256:5fd6533f3a56f34d3324fd5b4ff291f688092d148d76cc1ad0784c5c9cf8b566" [label="/bin/sh -c npm install -g --unsafe-perm homebridge-particle" shape="box"];
  "sha256:0fd0b81ecb777c4bca554e37be528a988a441e535a42f74ac3b69853bdb881b4" [label="cross-build-end" shape="box"];
  "sha256:b23845862b52f2496a488f4c4f76714b10fe4e5516e028204aa002e6b5e99417" [label="sha256:b23845862b52f2496a488f4c4f76714b10fe4e5516e028204aa002e6b5e99417" shape="plaintext"];
  "sha256:32fad9c646c7649bc166c52c902e676303d0eec098ad68eae01fdbc323d6108f" -> "sha256:09aa099b9671a898b3740ff69778798dff71ee2071ee5e9b8a9e293a646a9565" [label=""];
  "sha256:09aa099b9671a898b3740ff69778798dff71ee2071ee5e9b8a9e293a646a9565" -> "sha256:9bd937066c99754d06154bbe6c540c4ec85f5cd87fb664b126cb3487228b8f37" [label=""];
  "sha256:8bacf0535fb8b2fdb06dce0d67c9aa02fdd2f60e5974a85e4e9802a399fddf9e" -> "sha256:9bd937066c99754d06154bbe6c540c4ec85f5cd87fb664b126cb3487228b8f37" [label=""];
  "sha256:9bd937066c99754d06154bbe6c540c4ec85f5cd87fb664b126cb3487228b8f37" -> "sha256:5fd6533f3a56f34d3324fd5b4ff291f688092d148d76cc1ad0784c5c9cf8b566" [label=""];
  "sha256:5fd6533f3a56f34d3324fd5b4ff291f688092d148d76cc1ad0784c5c9cf8b566" -> "sha256:0fd0b81ecb777c4bca554e37be528a988a441e535a42f74ac3b69853bdb881b4" [label=""];
  "sha256:0fd0b81ecb777c4bca554e37be528a988a441e535a42f74ac3b69853bdb881b4" -> "sha256:b23845862b52f2496a488f4c4f76714b10fe4e5516e028204aa002e6b5e99417" [label=""];
}

