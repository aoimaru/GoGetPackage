[app/sources/248262594.Dockerfile]
digraph {
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" [label="docker-image://docker.io/library/golang:1.7-alpine" shape="ellipse"];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:bf78fd8ca0ae46bb2377a74f2135ea5bc74433c7fe4c4bca94b7257aae64aac0" [label="local://context" shape="ellipse"];
  "sha256:3fa305b52ddcdfcd565d6606fb9a1aa2859e32579c2f6f411ce7cdd66b47b19a" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:0f165cf0d461e34be898360e19a973eab0d5fc2c0100af665890a3065033f294" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:bc5aa6132734445dd9da475cb1405a4eeeae6eee8648980ee8a7dd4222500547" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:71f9c035fa295b6b3c6577beaa5db9ce5d88c1acdfcf171fd138e76e38c67f60" [label="sha256:71f9c035fa295b6b3c6577beaa5db9ce5d88c1acdfcf171fd138e76e38c67f60" shape="plaintext"];
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" -> "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label=""];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" -> "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label=""];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" -> "sha256:3fa305b52ddcdfcd565d6606fb9a1aa2859e32579c2f6f411ce7cdd66b47b19a" [label=""];
  "sha256:bf78fd8ca0ae46bb2377a74f2135ea5bc74433c7fe4c4bca94b7257aae64aac0" -> "sha256:3fa305b52ddcdfcd565d6606fb9a1aa2859e32579c2f6f411ce7cdd66b47b19a" [label=""];
  "sha256:3fa305b52ddcdfcd565d6606fb9a1aa2859e32579c2f6f411ce7cdd66b47b19a" -> "sha256:0f165cf0d461e34be898360e19a973eab0d5fc2c0100af665890a3065033f294" [label=""];
  "sha256:bf78fd8ca0ae46bb2377a74f2135ea5bc74433c7fe4c4bca94b7257aae64aac0" -> "sha256:0f165cf0d461e34be898360e19a973eab0d5fc2c0100af665890a3065033f294" [label=""];
  "sha256:0f165cf0d461e34be898360e19a973eab0d5fc2c0100af665890a3065033f294" -> "sha256:bc5aa6132734445dd9da475cb1405a4eeeae6eee8648980ee8a7dd4222500547" [label=""];
  "sha256:bc5aa6132734445dd9da475cb1405a4eeeae6eee8648980ee8a7dd4222500547" -> "sha256:71f9c035fa295b6b3c6577beaa5db9ce5d88c1acdfcf171fd138e76e38c67f60" [label=""];
}

