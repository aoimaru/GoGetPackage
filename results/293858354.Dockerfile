[app/sources/293858354.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:1edffd9251a6fb66fc05b3bb3f95187c2685b0ce1adf0ba2e25510791a29994a" [label="local://context" shape="ellipse"];
  "sha256:f2f85f33e42255dbf54e7d3a7b60e8ab82a48058f2afbf0aa6e741511fce9b3d" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:bc3458d7597bc780a50968de80bfc7f9ea50857098614f0ff180f19ef14986df" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:3417f051e1cce7339a455c5fe2d1c1edc50e144dcd7885cd5940280078dd5ef0" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:6790b393c8c2d66bd43104976ed8e4fb5cb448c82d033c72e0d442b1d544f941" [label="sha256:6790b393c8c2d66bd43104976ed8e4fb5cb448c82d033c72e0d442b1d544f941" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:f2f85f33e42255dbf54e7d3a7b60e8ab82a48058f2afbf0aa6e741511fce9b3d" [label=""];
  "sha256:1edffd9251a6fb66fc05b3bb3f95187c2685b0ce1adf0ba2e25510791a29994a" -> "sha256:f2f85f33e42255dbf54e7d3a7b60e8ab82a48058f2afbf0aa6e741511fce9b3d" [label=""];
  "sha256:f2f85f33e42255dbf54e7d3a7b60e8ab82a48058f2afbf0aa6e741511fce9b3d" -> "sha256:bc3458d7597bc780a50968de80bfc7f9ea50857098614f0ff180f19ef14986df" [label=""];
  "sha256:bc3458d7597bc780a50968de80bfc7f9ea50857098614f0ff180f19ef14986df" -> "sha256:3417f051e1cce7339a455c5fe2d1c1edc50e144dcd7885cd5940280078dd5ef0" [label=""];
  "sha256:3417f051e1cce7339a455c5fe2d1c1edc50e144dcd7885cd5940280078dd5ef0" -> "sha256:6790b393c8c2d66bd43104976ed8e4fb5cb448c82d033c72e0d442b1d544f941" [label=""];
}

