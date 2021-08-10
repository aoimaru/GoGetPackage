[app/sources/214748410.Dockerfile]
digraph {
  "sha256:eefcdf8e0d529ad4e15fe442af000e94e67d9e91e99fda7fcb6d9b97189f2345" [label="local://context" shape="ellipse"];
  "sha256:f3eab59977e5df93e08b0c11de106195e56a636cd0340238254af55487028a03" [label="docker-image://docker.io/library/openjdk:8u111-jre-alpine@sha256:6a8cbe4335d1a5711a52912b684e30d6dbfab681a6733440ff7241b05a5deefd" shape="ellipse"];
  "sha256:be038f1ca3da3cc9ba52c4ddfe00c6237fa30029ed69e030b2cba64124091bb3" [label="copy{src=/build/libs/*.jar, dest=/app.jar}" shape="note"];
  "sha256:9c21d46f6b70015dcc6738eca282a8ed86c943603f6f6fd810a4be147f331fa1" [label="sha256:9c21d46f6b70015dcc6738eca282a8ed86c943603f6f6fd810a4be147f331fa1" shape="plaintext"];
  "sha256:f3eab59977e5df93e08b0c11de106195e56a636cd0340238254af55487028a03" -> "sha256:be038f1ca3da3cc9ba52c4ddfe00c6237fa30029ed69e030b2cba64124091bb3" [label=""];
  "sha256:eefcdf8e0d529ad4e15fe442af000e94e67d9e91e99fda7fcb6d9b97189f2345" -> "sha256:be038f1ca3da3cc9ba52c4ddfe00c6237fa30029ed69e030b2cba64124091bb3" [label=""];
  "sha256:be038f1ca3da3cc9ba52c4ddfe00c6237fa30029ed69e030b2cba64124091bb3" -> "sha256:9c21d46f6b70015dcc6738eca282a8ed86c943603f6f6fd810a4be147f331fa1" [label=""];
}

