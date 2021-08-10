[app/sources/276410793.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:c8a3bd9f4b1dd6e049e3d6032d2906d3559cd78ec7a4858a675b824cbbe169e1" [label="local://context" shape="ellipse"];
  "sha256:b2aa2f32fe08878115fa3ebe9b6d5955e5c7b1a6ea51635765daf680974af07c" [label="copy{src=/health-check.sh, dest=/tools/}" shape="note"];
  "sha256:21d48c8797284a9a5ae65df794d4e792a177dc336e2b608b4f644777093a09b3" [label="sha256:21d48c8797284a9a5ae65df794d4e792a177dc336e2b608b4f644777093a09b3" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:b2aa2f32fe08878115fa3ebe9b6d5955e5c7b1a6ea51635765daf680974af07c" [label=""];
  "sha256:c8a3bd9f4b1dd6e049e3d6032d2906d3559cd78ec7a4858a675b824cbbe169e1" -> "sha256:b2aa2f32fe08878115fa3ebe9b6d5955e5c7b1a6ea51635765daf680974af07c" [label=""];
  "sha256:b2aa2f32fe08878115fa3ebe9b6d5955e5c7b1a6ea51635765daf680974af07c" -> "sha256:21d48c8797284a9a5ae65df794d4e792a177dc336e2b608b4f644777093a09b3" [label=""];
}

