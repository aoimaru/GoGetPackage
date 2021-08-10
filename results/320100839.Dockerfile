[app/sources/320100839.Dockerfile]
digraph {
  "sha256:2bebd571f58de55ff376c7c91648b913309a0b5ec97e7a2387cd9017940d78b8" [label="docker-image://docker.io/library/php:5.6-alpine" shape="ellipse"];
  "sha256:04e57c246044c714b7d0170d8195dec4a9cdf0eae3c331743d9faa301ab45b08" [label="/bin/sh -c apk --no-cache add --virtual build-dependencies graphviz     && pear channel-discover pear.phpdoc.org     && pear install phpdoc/phpDocumentor     && apk del --purge -r build-dependencies" shape="box"];
  "sha256:288afc0a9b7f8ea0e7010320a2faa08ff7ebbce861a25f33bfc631c1fddbd88f" [label="mkdir{path=/src}" shape="note"];
  "sha256:7559f83fdd1a425be262326cafec618f569e9c2655ab48efe729be05eaac3509" [label="sha256:7559f83fdd1a425be262326cafec618f569e9c2655ab48efe729be05eaac3509" shape="plaintext"];
  "sha256:2bebd571f58de55ff376c7c91648b913309a0b5ec97e7a2387cd9017940d78b8" -> "sha256:04e57c246044c714b7d0170d8195dec4a9cdf0eae3c331743d9faa301ab45b08" [label=""];
  "sha256:04e57c246044c714b7d0170d8195dec4a9cdf0eae3c331743d9faa301ab45b08" -> "sha256:288afc0a9b7f8ea0e7010320a2faa08ff7ebbce861a25f33bfc631c1fddbd88f" [label=""];
  "sha256:288afc0a9b7f8ea0e7010320a2faa08ff7ebbce861a25f33bfc631c1fddbd88f" -> "sha256:7559f83fdd1a425be262326cafec618f569e9c2655ab48efe729be05eaac3509" [label=""];
}

