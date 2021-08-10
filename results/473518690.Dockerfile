[app/sources/473518690.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:9a6e133adb0830556eda215b38116186f290fe570c63eef8961a93442129c754" [label="/bin/sh -c apt-get update \t&& apt-get install -y subversion rsync git \t&& apt-get clean -y \t&& rm -rf /var/lib/apt/lists/* \t&& git config --global user.email \"10upbot+github@10up.com\" \t&& git config --global user.name \"10upbot on GitHub\"" shape="box"];
  "sha256:4fd1ee7e1a01c47df1f8e537957c1c99a1e0ef6282febc4ad9d80145e9ad3de8" [label="local://context" shape="ellipse"];
  "sha256:e0b040cf2161d85aaeb80ec40c9a13850e04b2cdd875e52c2f7278ae38a88b37" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:93628f82533fc2abaf867d88cf3191f4e7c6681728cd2284b7909cc9dc2924ed" [label="sha256:93628f82533fc2abaf867d88cf3191f4e7c6681728cd2284b7909cc9dc2924ed" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:9a6e133adb0830556eda215b38116186f290fe570c63eef8961a93442129c754" [label=""];
  "sha256:9a6e133adb0830556eda215b38116186f290fe570c63eef8961a93442129c754" -> "sha256:e0b040cf2161d85aaeb80ec40c9a13850e04b2cdd875e52c2f7278ae38a88b37" [label=""];
  "sha256:4fd1ee7e1a01c47df1f8e537957c1c99a1e0ef6282febc4ad9d80145e9ad3de8" -> "sha256:e0b040cf2161d85aaeb80ec40c9a13850e04b2cdd875e52c2f7278ae38a88b37" [label=""];
  "sha256:e0b040cf2161d85aaeb80ec40c9a13850e04b2cdd875e52c2f7278ae38a88b37" -> "sha256:93628f82533fc2abaf867d88cf3191f4e7c6681728cd2284b7909cc9dc2924ed" [label=""];
}

