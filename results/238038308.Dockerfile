[app/sources/238038308.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:a5c9e102a859173cec837b5459f2f371aadfbef2851f2d59476fec544596cb29" [label="/bin/sh -c apk add --no-cache git && pip install trufflehog" shape="box"];
  "sha256:6717cfd16aa28133440acf90fd26c9421b70ee72584de5d8e72121eb321020c2" [label="/bin/sh -c adduser -S truffleHog" shape="box"];
  "sha256:d52653070d0b5cc602f5e319fe65ea04dd93b10a21b309cd72af22e1c6d457d0" [label="mkdir{path=/proj}" shape="note"];
  "sha256:9266a45a355822094f367690ed064f2298bf2ddf36d01ebb96ab5aa13cea9b4e" [label="sha256:9266a45a355822094f367690ed064f2298bf2ddf36d01ebb96ab5aa13cea9b4e" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:a5c9e102a859173cec837b5459f2f371aadfbef2851f2d59476fec544596cb29" [label=""];
  "sha256:a5c9e102a859173cec837b5459f2f371aadfbef2851f2d59476fec544596cb29" -> "sha256:6717cfd16aa28133440acf90fd26c9421b70ee72584de5d8e72121eb321020c2" [label=""];
  "sha256:6717cfd16aa28133440acf90fd26c9421b70ee72584de5d8e72121eb321020c2" -> "sha256:d52653070d0b5cc602f5e319fe65ea04dd93b10a21b309cd72af22e1c6d457d0" [label=""];
  "sha256:d52653070d0b5cc602f5e319fe65ea04dd93b10a21b309cd72af22e1c6d457d0" -> "sha256:9266a45a355822094f367690ed064f2298bf2ddf36d01ebb96ab5aa13cea9b4e" [label=""];
}

