[app/sources/266028535.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:5050898ac4804409eee428e94cbe06b398c9e116355bc7bbced9672518bf8cb4" [label="/bin/sh -c mkdir -p $INSTALL_PATH" shape="box"];
  "sha256:674c20ce919f268864aa30f5a5b19a3067ccdac62ed2b32a6872b48c65421dbc" [label="mkdir{path=/alexa}" shape="note"];
  "sha256:abebe1ffcd68427affcd74b8d0848687f7e3c38c3a1904759f88c06668d2caa0" [label="local://context" shape="ellipse"];
  "sha256:5d2de4d79a6772ab86ecf69d37c8a1b658726691ae6d9ee632bab52f99f250d8" [label="copy{src=/, dest=/alexa/}" shape="note"];
  "sha256:6de082840d1b4de203ec9a249e8d778fce9fb726bfbfbc3bb49baaa39367ee07" [label="/bin/sh -c bash setup.sh" shape="box"];
  "sha256:9be3de5c178243157e1de6425cea882b1e1cd376ef27262cd3a7a156cba01f69" [label="mkdir{path=/alexa/susi_alexa_skill}" shape="note"];
  "sha256:78c0e4a7637f64c26bc32160564a3c55ee7d0647ef0c18842f975629e44a72c6" [label="sha256:78c0e4a7637f64c26bc32160564a3c55ee7d0647ef0c18842f975629e44a72c6" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:5050898ac4804409eee428e94cbe06b398c9e116355bc7bbced9672518bf8cb4" [label=""];
  "sha256:5050898ac4804409eee428e94cbe06b398c9e116355bc7bbced9672518bf8cb4" -> "sha256:674c20ce919f268864aa30f5a5b19a3067ccdac62ed2b32a6872b48c65421dbc" [label=""];
  "sha256:674c20ce919f268864aa30f5a5b19a3067ccdac62ed2b32a6872b48c65421dbc" -> "sha256:5d2de4d79a6772ab86ecf69d37c8a1b658726691ae6d9ee632bab52f99f250d8" [label=""];
  "sha256:abebe1ffcd68427affcd74b8d0848687f7e3c38c3a1904759f88c06668d2caa0" -> "sha256:5d2de4d79a6772ab86ecf69d37c8a1b658726691ae6d9ee632bab52f99f250d8" [label=""];
  "sha256:5d2de4d79a6772ab86ecf69d37c8a1b658726691ae6d9ee632bab52f99f250d8" -> "sha256:6de082840d1b4de203ec9a249e8d778fce9fb726bfbfbc3bb49baaa39367ee07" [label=""];
  "sha256:6de082840d1b4de203ec9a249e8d778fce9fb726bfbfbc3bb49baaa39367ee07" -> "sha256:9be3de5c178243157e1de6425cea882b1e1cd376ef27262cd3a7a156cba01f69" [label=""];
  "sha256:9be3de5c178243157e1de6425cea882b1e1cd376ef27262cd3a7a156cba01f69" -> "sha256:78c0e4a7637f64c26bc32160564a3c55ee7d0647ef0c18842f975629e44a72c6" [label=""];
}

