[app/sources/345356619.Dockerfile]
digraph {
  "sha256:c5f12fc52ff55ca87ce998ab938a99e7109e2ea7a8d6161f6f56fe543979043b" [label="docker-image://docker.io/balenalib/i386-debian:sid-build" shape="ellipse"];
  "sha256:b3f8fb5986cf77469157222610caf7f8533d4ffef50965c124baf5efa89437b7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1031d8a5a34a4592036d456e40b1d309ca1821dd41d58b772acba5c8fdbe5dec" [label="sha256:1031d8a5a34a4592036d456e40b1d309ca1821dd41d58b772acba5c8fdbe5dec" shape="plaintext"];
  "sha256:c5f12fc52ff55ca87ce998ab938a99e7109e2ea7a8d6161f6f56fe543979043b" -> "sha256:b3f8fb5986cf77469157222610caf7f8533d4ffef50965c124baf5efa89437b7" [label=""];
  "sha256:b3f8fb5986cf77469157222610caf7f8533d4ffef50965c124baf5efa89437b7" -> "sha256:1031d8a5a34a4592036d456e40b1d309ca1821dd41d58b772acba5c8fdbe5dec" [label=""];
}

