[app/sources/189170955.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:92a2af26b8580f83c0cfe43252db367de38ee358b644bf3d1ba7e36335adca05" [label="/bin/sh -c apt-get update && apt-get install -y     transmission-cli     transmission-common     transmission-daemon     transmission-gtk     --no-install-recommends" shape="box"];
  "sha256:49cea064461848be186edbaee1e0268b330fa44ec284be6ef9f6ee7fae65c51d" [label="sha256:49cea064461848be186edbaee1e0268b330fa44ec284be6ef9f6ee7fae65c51d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:92a2af26b8580f83c0cfe43252db367de38ee358b644bf3d1ba7e36335adca05" [label=""];
  "sha256:92a2af26b8580f83c0cfe43252db367de38ee358b644bf3d1ba7e36335adca05" -> "sha256:49cea064461848be186edbaee1e0268b330fa44ec284be6ef9f6ee7fae65c51d" [label=""];
}

