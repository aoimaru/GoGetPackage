[app/sources/252797464.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:9b348b944e77e86f5737dbdb90f022b677b2e7059837f0835d39b643e23a1ec5" [label="/bin/sh -c apk --update --no-cache add tar && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:b021b4e379a2ad1c6df0d3eb7f851b7f297bb6097dd03c223556e184849f2a49" [label="sha256:b021b4e379a2ad1c6df0d3eb7f851b7f297bb6097dd03c223556e184849f2a49" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:9b348b944e77e86f5737dbdb90f022b677b2e7059837f0835d39b643e23a1ec5" [label=""];
  "sha256:9b348b944e77e86f5737dbdb90f022b677b2e7059837f0835d39b643e23a1ec5" -> "sha256:b021b4e379a2ad1c6df0d3eb7f851b7f297bb6097dd03c223556e184849f2a49" [label=""];
}

