[app/sources/252789686.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:adb61783f5448f29444ca7e7eb3a2c161fcca32b6f966540442f84b198fcbaf5" [label="/bin/sh -c apt-get update && apt-get -y upgrade && apt-get install -y funny-manpages man-db manpages && apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:05f1849022d1c401dec3c1c6430393f4d8cab96cc5db6ef2672273ed7a6015ca" [label="sha256:05f1849022d1c401dec3c1c6430393f4d8cab96cc5db6ef2672273ed7a6015ca" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:adb61783f5448f29444ca7e7eb3a2c161fcca32b6f966540442f84b198fcbaf5" [label=""];
  "sha256:adb61783f5448f29444ca7e7eb3a2c161fcca32b6f966540442f84b198fcbaf5" -> "sha256:05f1849022d1c401dec3c1c6430393f4d8cab96cc5db6ef2672273ed7a6015ca" [label=""];
}

