[app/sources/252794655.Dockerfile]
digraph {
  "sha256:4cccb2da46f82b9f80ef995cefa1260e725cc135913b1becda047f214d621f2d" [label="docker-image://docker.io/lachlanevenson/k8s-kubectl:latest" shape="ellipse"];
  "sha256:1aaf0524d49832e96005a1aa41c494004f2a39dddd19311de5b5d6420c5d9f7a" [label="/bin/sh -c set -x && apk add --no-cache -v python py-pip less groff && pip install awscli && apk del --purge -v py-pip" shape="box"];
  "sha256:8fd0cb02436fae919a6790f67960e27415c5e2abe95942756d7a1f9d7d1d523c" [label="sha256:8fd0cb02436fae919a6790f67960e27415c5e2abe95942756d7a1f9d7d1d523c" shape="plaintext"];
  "sha256:4cccb2da46f82b9f80ef995cefa1260e725cc135913b1becda047f214d621f2d" -> "sha256:1aaf0524d49832e96005a1aa41c494004f2a39dddd19311de5b5d6420c5d9f7a" [label=""];
  "sha256:1aaf0524d49832e96005a1aa41c494004f2a39dddd19311de5b5d6420c5d9f7a" -> "sha256:8fd0cb02436fae919a6790f67960e27415c5e2abe95942756d7a1f9d7d1d523c" [label=""];
}

