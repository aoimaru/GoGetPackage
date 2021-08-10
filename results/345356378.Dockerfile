[app/sources/345356378.Dockerfile]
digraph {
  "sha256:37890b0c8e940458c446590e3b646731cf941b8d00d66a9752fc3dd91810fbb4" [label="docker-image://docker.io/balenalib/aarch64-alpine:3.7-run" shape="ellipse"];
  "sha256:574e59b89f1a530417998c4dec296ba37272dd0a45066365fae5056919923ae0" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:b16ffa3bd759089c52dc4a82d740df0d987c3cd169a55ef8f8bfb854c1ab54c6" [label="sha256:b16ffa3bd759089c52dc4a82d740df0d987c3cd169a55ef8f8bfb854c1ab54c6" shape="plaintext"];
  "sha256:37890b0c8e940458c446590e3b646731cf941b8d00d66a9752fc3dd91810fbb4" -> "sha256:574e59b89f1a530417998c4dec296ba37272dd0a45066365fae5056919923ae0" [label=""];
  "sha256:574e59b89f1a530417998c4dec296ba37272dd0a45066365fae5056919923ae0" -> "sha256:b16ffa3bd759089c52dc4a82d740df0d987c3cd169a55ef8f8bfb854c1ab54c6" [label=""];
}

