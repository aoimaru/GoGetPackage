[app/sources/204536467.Dockerfile]
digraph {
  "sha256:dedbdbff0a4e0235c554baf21fe84f35f8cd2d4c1d5d1b9a3eea6257459c299d" [label="docker-image://docker.io/library/openjdk:11.0.3-jre-stretch" shape="ellipse"];
  "sha256:0158fd61064f1c1167a0f098930911199f3c4c3e88773e7f9f0ad2a8b0a573a5" [label="local://context" shape="ellipse"];
  "sha256:ef415438935b59677a6b8be3db3dfa8014ea577e9a60f5bdc1d78b6c11ee85b6" [label="copy{src=/modules/apps/file-server/build/libs/*.jar, dest=/tmp/app.jar}" shape="note"];
  "sha256:1fc529f61d8380d255d8e275f4abfeed6c515d2d802dc990f306595767e89818" [label="sha256:1fc529f61d8380d255d8e275f4abfeed6c515d2d802dc990f306595767e89818" shape="plaintext"];
  "sha256:dedbdbff0a4e0235c554baf21fe84f35f8cd2d4c1d5d1b9a3eea6257459c299d" -> "sha256:ef415438935b59677a6b8be3db3dfa8014ea577e9a60f5bdc1d78b6c11ee85b6" [label=""];
  "sha256:0158fd61064f1c1167a0f098930911199f3c4c3e88773e7f9f0ad2a8b0a573a5" -> "sha256:ef415438935b59677a6b8be3db3dfa8014ea577e9a60f5bdc1d78b6c11ee85b6" [label=""];
  "sha256:ef415438935b59677a6b8be3db3dfa8014ea577e9a60f5bdc1d78b6c11ee85b6" -> "sha256:1fc529f61d8380d255d8e275f4abfeed6c515d2d802dc990f306595767e89818" [label=""];
}

