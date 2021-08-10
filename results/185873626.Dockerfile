[app/sources/185873626.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:e9e32c325ff636bfb49685173ad2352a25c72281a97690a7b730c410a86ee8c1" [label="local://context" shape="ellipse"];
  "sha256:af40d02fc0dfcaaedde3478faa6a86586ab5cd7e2413c2196c7567a18dca6dc8" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:06a8d12bade5fd57887938806e2fdc585d7575cc5ee9296e06fade1e3543af8c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:122f9a6a3ad15e9c04f4d0d32c48a25e92bfaed865a6b6a0dbdea124c25cd6d8" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:af422a6d99775ab91330c685b60e06c2ca54d19381aea3638d7fbcc5870a3ad7" [label="sha256:af422a6d99775ab91330c685b60e06c2ca54d19381aea3638d7fbcc5870a3ad7" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:af40d02fc0dfcaaedde3478faa6a86586ab5cd7e2413c2196c7567a18dca6dc8" [label=""];
  "sha256:e9e32c325ff636bfb49685173ad2352a25c72281a97690a7b730c410a86ee8c1" -> "sha256:af40d02fc0dfcaaedde3478faa6a86586ab5cd7e2413c2196c7567a18dca6dc8" [label=""];
  "sha256:af40d02fc0dfcaaedde3478faa6a86586ab5cd7e2413c2196c7567a18dca6dc8" -> "sha256:06a8d12bade5fd57887938806e2fdc585d7575cc5ee9296e06fade1e3543af8c" [label=""];
  "sha256:06a8d12bade5fd57887938806e2fdc585d7575cc5ee9296e06fade1e3543af8c" -> "sha256:122f9a6a3ad15e9c04f4d0d32c48a25e92bfaed865a6b6a0dbdea124c25cd6d8" [label=""];
  "sha256:122f9a6a3ad15e9c04f4d0d32c48a25e92bfaed865a6b6a0dbdea124c25cd6d8" -> "sha256:af422a6d99775ab91330c685b60e06c2ca54d19381aea3638d7fbcc5870a3ad7" [label=""];
}

