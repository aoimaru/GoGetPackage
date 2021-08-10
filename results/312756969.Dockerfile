[app/sources/312756969.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:a73a87dfb75290ec4edc582225d75f9ee5aea40544c375b713e2fa43377fd254" [label="local://context" shape="ellipse"];
  "sha256:43f27bf81976b8c5847fa8a00554ab9d29376e1f8d4c16f4d01ce2064d592ef9" [label="copy{src=/personfilter-0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:513b4ccd67af9ffe10c4fd3750d9220be1f6bbcc026bab999e66e6825c5072b4" [label="sha256:513b4ccd67af9ffe10c4fd3750d9220be1f6bbcc026bab999e66e6825c5072b4" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:43f27bf81976b8c5847fa8a00554ab9d29376e1f8d4c16f4d01ce2064d592ef9" [label=""];
  "sha256:a73a87dfb75290ec4edc582225d75f9ee5aea40544c375b713e2fa43377fd254" -> "sha256:43f27bf81976b8c5847fa8a00554ab9d29376e1f8d4c16f4d01ce2064d592ef9" [label=""];
  "sha256:43f27bf81976b8c5847fa8a00554ab9d29376e1f8d4c16f4d01ce2064d592ef9" -> "sha256:513b4ccd67af9ffe10c4fd3750d9220be1f6bbcc026bab999e66e6825c5072b4" [label=""];
}

