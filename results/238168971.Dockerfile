[app/sources/238168971.Dockerfile]
digraph {
  "sha256:f5601f8132fcfdfc3379276d21200f79bc313be5af4520b7fd7a92abb89bdb82" [label="docker-image://docker.io/jimmycuadra/rust:latest" shape="ellipse"];
  "sha256:6efc8af925cf1e0e6ec72efbd9553dc6b2ad0d116e235efd8311085efae949dd" [label="/bin/sh -c mkdir /haxonite" shape="box"];
  "sha256:30422c6a8861e6886f52d8df6ea8824067692574c36bc3e127d112881f642d3f" [label="mkdir{path=/haxonite}" shape="note"];
  "sha256:99e1b12f6a89ff0d9a5a7c97618b8cbb4089619bda3ed91efe67ed52cac9c5ce" [label="/bin/sh -c cargo install haxonite --vers $HAXONITE_VERSION" shape="box"];
  "sha256:c1506ac3f872bfaceb2fd15eabb4aaf43cfd77ebe62593b340c44020009a6f3b" [label="sha256:c1506ac3f872bfaceb2fd15eabb4aaf43cfd77ebe62593b340c44020009a6f3b" shape="plaintext"];
  "sha256:f5601f8132fcfdfc3379276d21200f79bc313be5af4520b7fd7a92abb89bdb82" -> "sha256:6efc8af925cf1e0e6ec72efbd9553dc6b2ad0d116e235efd8311085efae949dd" [label=""];
  "sha256:6efc8af925cf1e0e6ec72efbd9553dc6b2ad0d116e235efd8311085efae949dd" -> "sha256:30422c6a8861e6886f52d8df6ea8824067692574c36bc3e127d112881f642d3f" [label=""];
  "sha256:30422c6a8861e6886f52d8df6ea8824067692574c36bc3e127d112881f642d3f" -> "sha256:99e1b12f6a89ff0d9a5a7c97618b8cbb4089619bda3ed91efe67ed52cac9c5ce" [label=""];
  "sha256:99e1b12f6a89ff0d9a5a7c97618b8cbb4089619bda3ed91efe67ed52cac9c5ce" -> "sha256:c1506ac3f872bfaceb2fd15eabb4aaf43cfd77ebe62593b340c44020009a6f3b" [label=""];
}

