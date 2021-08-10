[app/sources/275996795.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:36b8486b3fa8af354409086679112cf6ae900f72a3131bcd4d70cc61dbb04cad" [label="local://context" shape="ellipse"];
  "sha256:37fc5430f8423d432d269658f4a0b18539fe8c3fe3b2ba8e50514d950bd91fb6" [label="copy{src=/, dest=/app.jar}" shape="note"];
  "sha256:679bd299b3300000237e6917cd4f71e509d95154adc346af9dc5f3315f930567" [label="sha256:679bd299b3300000237e6917cd4f71e509d95154adc346af9dc5f3315f930567" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:37fc5430f8423d432d269658f4a0b18539fe8c3fe3b2ba8e50514d950bd91fb6" [label=""];
  "sha256:36b8486b3fa8af354409086679112cf6ae900f72a3131bcd4d70cc61dbb04cad" -> "sha256:37fc5430f8423d432d269658f4a0b18539fe8c3fe3b2ba8e50514d950bd91fb6" [label=""];
  "sha256:37fc5430f8423d432d269658f4a0b18539fe8c3fe3b2ba8e50514d950bd91fb6" -> "sha256:679bd299b3300000237e6917cd4f71e509d95154adc346af9dc5f3315f930567" [label=""];
}

