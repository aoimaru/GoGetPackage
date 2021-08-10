[app/sources/345361797.Dockerfile]
digraph {
  "sha256:dbbede6e6088bf4f4840b2a0925d5a44a308dc9fc6b83f2ee9f57792f9b86231" [label="docker-image://docker.io/balenalib/i386-nlp-debian:sid-run" shape="ellipse"];
  "sha256:b16bedb2241b4acdc809875ce0f9089e4cd3fd8b00f0776764dae5bd9844eb48" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e0a05517a78d6cef63d03fea677ac6e09e17eefc46de920c17e145a16ae3e140" [label="sha256:e0a05517a78d6cef63d03fea677ac6e09e17eefc46de920c17e145a16ae3e140" shape="plaintext"];
  "sha256:dbbede6e6088bf4f4840b2a0925d5a44a308dc9fc6b83f2ee9f57792f9b86231" -> "sha256:b16bedb2241b4acdc809875ce0f9089e4cd3fd8b00f0776764dae5bd9844eb48" [label=""];
  "sha256:b16bedb2241b4acdc809875ce0f9089e4cd3fd8b00f0776764dae5bd9844eb48" -> "sha256:e0a05517a78d6cef63d03fea677ac6e09e17eefc46de920c17e145a16ae3e140" [label=""];
}

