[app/sources/227222097.Dockerfile]
digraph {
  "sha256:dccb75e65daaba9e26ee1543d11e0e91b1cb712861804dbb19f434cb41313d88" [label="docker-image://docker.io/clux/muslrust:stable" shape="ellipse"];
  "sha256:a5aa793579fec73ff0ba515e17d0a71f9fb00bb8fc2e45a9f5ce05d73795a4ea" [label="local://context" shape="ellipse"];
  "sha256:214615ad3383d78b55445ef52ce826600c5283001d57375f2ad1ac269f230d64" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:7416574e457fb670aaca12e44ca7abb2523510da7d426d88073649d23543838b" [label="/bin/sh -c set -x     && cd /src     && cargo build --release" shape="box"];
  "sha256:f9b5eab102355cd2539004ece1c76eb3457ee1107ca3807ab577b26459dedab0" [label="copy{src=/src/target/x86_64-unknown-linux-musl/release/spe3d, dest=/spe3d}" shape="note"];
  "sha256:5ecc5cf1a783e68c6c8b14fefb106c88a1d5274ca2ce95e7055f8a8dfe5ca87d" [label="copy{src=/www, dest=/www/}" shape="note"];
  "sha256:c120201b0be50af9daed610a5ea3ed47db26b8b64089f32cb770e9fdddc05283" [label="sha256:c120201b0be50af9daed610a5ea3ed47db26b8b64089f32cb770e9fdddc05283" shape="plaintext"];
  "sha256:dccb75e65daaba9e26ee1543d11e0e91b1cb712861804dbb19f434cb41313d88" -> "sha256:214615ad3383d78b55445ef52ce826600c5283001d57375f2ad1ac269f230d64" [label=""];
  "sha256:a5aa793579fec73ff0ba515e17d0a71f9fb00bb8fc2e45a9f5ce05d73795a4ea" -> "sha256:214615ad3383d78b55445ef52ce826600c5283001d57375f2ad1ac269f230d64" [label=""];
  "sha256:214615ad3383d78b55445ef52ce826600c5283001d57375f2ad1ac269f230d64" -> "sha256:7416574e457fb670aaca12e44ca7abb2523510da7d426d88073649d23543838b" [label=""];
  "sha256:7416574e457fb670aaca12e44ca7abb2523510da7d426d88073649d23543838b" -> "sha256:f9b5eab102355cd2539004ece1c76eb3457ee1107ca3807ab577b26459dedab0" [label=""];
  "sha256:f9b5eab102355cd2539004ece1c76eb3457ee1107ca3807ab577b26459dedab0" -> "sha256:5ecc5cf1a783e68c6c8b14fefb106c88a1d5274ca2ce95e7055f8a8dfe5ca87d" [label=""];
  "sha256:a5aa793579fec73ff0ba515e17d0a71f9fb00bb8fc2e45a9f5ce05d73795a4ea" -> "sha256:5ecc5cf1a783e68c6c8b14fefb106c88a1d5274ca2ce95e7055f8a8dfe5ca87d" [label=""];
  "sha256:5ecc5cf1a783e68c6c8b14fefb106c88a1d5274ca2ce95e7055f8a8dfe5ca87d" -> "sha256:c120201b0be50af9daed610a5ea3ed47db26b8b64089f32cb770e9fdddc05283" [label=""];
}

