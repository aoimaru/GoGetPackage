[app/sources/468646045.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:e64d54eddc0f787a4c753efa1a98459be6258d4055fc81128359dd65caf4a2e5" [label="local://context" shape="ellipse"];
  "sha256:fd856431cb74bd384f0a188f70dbc769e9e3142d30dddd69398694b42cd90e99" [label="copy{src=/, dest=/app.jar}" shape="note"];
  "sha256:1c8da0c55f6cf84c95a130a138706d92b6902c97a7b98b7b9e35f05ed119c270" [label="sha256:1c8da0c55f6cf84c95a130a138706d92b6902c97a7b98b7b9e35f05ed119c270" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:fd856431cb74bd384f0a188f70dbc769e9e3142d30dddd69398694b42cd90e99" [label=""];
  "sha256:e64d54eddc0f787a4c753efa1a98459be6258d4055fc81128359dd65caf4a2e5" -> "sha256:fd856431cb74bd384f0a188f70dbc769e9e3142d30dddd69398694b42cd90e99" [label=""];
  "sha256:fd856431cb74bd384f0a188f70dbc769e9e3142d30dddd69398694b42cd90e99" -> "sha256:1c8da0c55f6cf84c95a130a138706d92b6902c97a7b98b7b9e35f05ed119c270" [label=""];
}

