[app/sources/299253035.Dockerfile]
digraph {
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" [label="docker-image://docker.io/library/golang:1.7-alpine" shape="ellipse"];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:72c249e14cdc4b57c8639f4031dbbb69dd570b7464b854da3edb4596ece8da63" [label="local://context" shape="ellipse"];
  "sha256:14e763d6a2cd37ec75f11f62b0637202ea2de6841ffe01e926233be395955f70" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:cdf7cf3b35709a3d6a212851ba09cb99cd12870e14a2aec378684e281bb9d43c" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:ef11e343b25e4e1aab903d30f1973142f62e748ba3b775baac4a6b09929c886b" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:6374a65e92df8bb6c67e3c69dc560928cedabc53f2e1a5ebc7b333e28aeb8a78" [label="sha256:6374a65e92df8bb6c67e3c69dc560928cedabc53f2e1a5ebc7b333e28aeb8a78" shape="plaintext"];
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" -> "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label=""];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" -> "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label=""];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" -> "sha256:14e763d6a2cd37ec75f11f62b0637202ea2de6841ffe01e926233be395955f70" [label=""];
  "sha256:72c249e14cdc4b57c8639f4031dbbb69dd570b7464b854da3edb4596ece8da63" -> "sha256:14e763d6a2cd37ec75f11f62b0637202ea2de6841ffe01e926233be395955f70" [label=""];
  "sha256:14e763d6a2cd37ec75f11f62b0637202ea2de6841ffe01e926233be395955f70" -> "sha256:cdf7cf3b35709a3d6a212851ba09cb99cd12870e14a2aec378684e281bb9d43c" [label=""];
  "sha256:72c249e14cdc4b57c8639f4031dbbb69dd570b7464b854da3edb4596ece8da63" -> "sha256:cdf7cf3b35709a3d6a212851ba09cb99cd12870e14a2aec378684e281bb9d43c" [label=""];
  "sha256:cdf7cf3b35709a3d6a212851ba09cb99cd12870e14a2aec378684e281bb9d43c" -> "sha256:ef11e343b25e4e1aab903d30f1973142f62e748ba3b775baac4a6b09929c886b" [label=""];
  "sha256:ef11e343b25e4e1aab903d30f1973142f62e748ba3b775baac4a6b09929c886b" -> "sha256:6374a65e92df8bb6c67e3c69dc560928cedabc53f2e1a5ebc7b333e28aeb8a78" [label=""];
}

