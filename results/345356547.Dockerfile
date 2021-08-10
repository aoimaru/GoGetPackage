[app/sources/345356547.Dockerfile]
digraph {
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-build" shape="ellipse"];
  "sha256:ccbc2bb54d5c27f2e51e4ce23588c7b42d8e5f4f4564f43034c49d788aff73a2" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:76b0927ce4eb559999bc81f7b2957fc6921c1459c1b4017d8ebf93b8c8ca6eee" [label="sha256:76b0927ce4eb559999bc81f7b2957fc6921c1459c1b4017d8ebf93b8c8ca6eee" shape="plaintext"];
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" -> "sha256:ccbc2bb54d5c27f2e51e4ce23588c7b42d8e5f4f4564f43034c49d788aff73a2" [label=""];
  "sha256:ccbc2bb54d5c27f2e51e4ce23588c7b42d8e5f4f4564f43034c49d788aff73a2" -> "sha256:76b0927ce4eb559999bc81f7b2957fc6921c1459c1b4017d8ebf93b8c8ca6eee" [label=""];
}

