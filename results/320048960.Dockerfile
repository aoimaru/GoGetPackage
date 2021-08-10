[app/sources/320048960.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:35eb1feef37dadbf9ac5ffa6762aa084e0c2b2a919594e47e39f6f76a1653e3e" [label="local://context" shape="ellipse"];
  "sha256:877b03786572e785e280672f7385a9d4365aecb5edd027c942dfd083a204e911" [label="copy{src=/lightmq-0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:c7015150314f5eb98698f60d3631c85e4aa1a27e7ef746af1e7a4ffac96a1016" [label="sha256:c7015150314f5eb98698f60d3631c85e4aa1a27e7ef746af1e7a4ffac96a1016" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:877b03786572e785e280672f7385a9d4365aecb5edd027c942dfd083a204e911" [label=""];
  "sha256:35eb1feef37dadbf9ac5ffa6762aa084e0c2b2a919594e47e39f6f76a1653e3e" -> "sha256:877b03786572e785e280672f7385a9d4365aecb5edd027c942dfd083a204e911" [label=""];
  "sha256:877b03786572e785e280672f7385a9d4365aecb5edd027c942dfd083a204e911" -> "sha256:c7015150314f5eb98698f60d3631c85e4aa1a27e7ef746af1e7a4ffac96a1016" [label=""];
}

