[app/sources/454646789.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:8b20c6f1187510266272ce2c2e4ec1863ac78e87a01e4191b5b3b463c1d83d19" [label="local://context" shape="ellipse"];
  "sha256:e28afe17fead95f077c4f55b8551467f362479c005716321bc265a60c8fbbaf1" [label="copy{src=/build/libs/expper-1.6.0.war, dest=/app.war}" shape="note"];
  "sha256:124cdfdc17c259df3fd893090845cfcac4c489196cbb38f72954069990241284" [label="/bin/sh -c bash -c 'touch /app.war'" shape="box"];
  "sha256:b0a750bb4e3f3d34063c535a3b7ef96ca61a06146a53146ee776cb9ef2665b41" [label="sha256:b0a750bb4e3f3d34063c535a3b7ef96ca61a06146a53146ee776cb9ef2665b41" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:e28afe17fead95f077c4f55b8551467f362479c005716321bc265a60c8fbbaf1" [label=""];
  "sha256:8b20c6f1187510266272ce2c2e4ec1863ac78e87a01e4191b5b3b463c1d83d19" -> "sha256:e28afe17fead95f077c4f55b8551467f362479c005716321bc265a60c8fbbaf1" [label=""];
  "sha256:e28afe17fead95f077c4f55b8551467f362479c005716321bc265a60c8fbbaf1" -> "sha256:124cdfdc17c259df3fd893090845cfcac4c489196cbb38f72954069990241284" [label=""];
  "sha256:124cdfdc17c259df3fd893090845cfcac4c489196cbb38f72954069990241284" -> "sha256:b0a750bb4e3f3d34063c535a3b7ef96ca61a06146a53146ee776cb9ef2665b41" [label=""];
}

