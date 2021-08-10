[app/sources/228140478.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:e178c6ab253f8bfdafe8d0a6e2db915968c9953ca401905e8467d8faaf2d80e7" [label="local://context" shape="ellipse"];
  "sha256:471ef445b8003b8d39d7697c9d3569fa8fa2dc3d15382d131f5d2b6514b5ec32" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:265eed1a61ed2eba4c60642ea60e308a286031706f1916906f5fa19b560b185f" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:890584986b0c2e7291778eba56aae7ecfa2dc2a8d1d36dfc2fda11b79c5db298" [label="sha256:890584986b0c2e7291778eba56aae7ecfa2dc2a8d1d36dfc2fda11b79c5db298" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:471ef445b8003b8d39d7697c9d3569fa8fa2dc3d15382d131f5d2b6514b5ec32" [label=""];
  "sha256:e178c6ab253f8bfdafe8d0a6e2db915968c9953ca401905e8467d8faaf2d80e7" -> "sha256:471ef445b8003b8d39d7697c9d3569fa8fa2dc3d15382d131f5d2b6514b5ec32" [label=""];
  "sha256:471ef445b8003b8d39d7697c9d3569fa8fa2dc3d15382d131f5d2b6514b5ec32" -> "sha256:265eed1a61ed2eba4c60642ea60e308a286031706f1916906f5fa19b560b185f" [label=""];
  "sha256:265eed1a61ed2eba4c60642ea60e308a286031706f1916906f5fa19b560b185f" -> "sha256:890584986b0c2e7291778eba56aae7ecfa2dc2a8d1d36dfc2fda11b79c5db298" [label=""];
}

