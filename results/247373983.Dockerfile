[app/sources/247373983.Dockerfile]
digraph {
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" [label="docker-image://docker.io/library/golang:1.7-alpine" shape="ellipse"];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:27d9e68db8b687248d7fc4f4904661a325de018e962c2be555f8401d6d6f5df0" [label="local://context" shape="ellipse"];
  "sha256:141187e9382f2c0b1a96e4e2954158d4441a7a315f8ea1da9d21f2515550e6ca" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:7590561440707af949db58e11db9771ecf7d0cacdb76d725ae00d32f46db454d" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:2d8e64d3922f892d7c02f159099735958ee05e805501795e898fbc8f7f9c5a3d" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:c2495d94901a945ad39f7e1337a56066eb8a8f7b23d9646507831dba9df97537" [label="sha256:c2495d94901a945ad39f7e1337a56066eb8a8f7b23d9646507831dba9df97537" shape="plaintext"];
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" -> "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" [label=""];
  "sha256:056b418001fd80ab2348827b9c9bfab5dff10d4f9e5565ee19ff321d43eef59e" -> "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" [label=""];
  "sha256:38d736dd6928f370daf339195af0d0ce887329d238299f0b2c9a191c8b4b4bc4" -> "sha256:141187e9382f2c0b1a96e4e2954158d4441a7a315f8ea1da9d21f2515550e6ca" [label=""];
  "sha256:27d9e68db8b687248d7fc4f4904661a325de018e962c2be555f8401d6d6f5df0" -> "sha256:141187e9382f2c0b1a96e4e2954158d4441a7a315f8ea1da9d21f2515550e6ca" [label=""];
  "sha256:141187e9382f2c0b1a96e4e2954158d4441a7a315f8ea1da9d21f2515550e6ca" -> "sha256:7590561440707af949db58e11db9771ecf7d0cacdb76d725ae00d32f46db454d" [label=""];
  "sha256:27d9e68db8b687248d7fc4f4904661a325de018e962c2be555f8401d6d6f5df0" -> "sha256:7590561440707af949db58e11db9771ecf7d0cacdb76d725ae00d32f46db454d" [label=""];
  "sha256:7590561440707af949db58e11db9771ecf7d0cacdb76d725ae00d32f46db454d" -> "sha256:2d8e64d3922f892d7c02f159099735958ee05e805501795e898fbc8f7f9c5a3d" [label=""];
  "sha256:2d8e64d3922f892d7c02f159099735958ee05e805501795e898fbc8f7f9c5a3d" -> "sha256:c2495d94901a945ad39f7e1337a56066eb8a8f7b23d9646507831dba9df97537" [label=""];
}

