[app/sources/279893165.Dockerfile]
digraph {
  "sha256:fd7ae76cb27cdcd9a9c67d872cbeddd646a5544abbd563e07b57a11dce7dda58" [label="docker-image://docker.io/library/golang:1.11.5-alpine3.8" shape="ellipse"];
  "sha256:697ca51612b40e7ebe45df4740db1af23d715a787c64d2f1f098dd2912e09b7b" [label="/bin/sh -c apk add --update git make" shape="box"];
  "sha256:e047a29911c28441c47f0376af0331b5d0f52a11c66646add7e7a6b548a242e6" [label="local://context" shape="ellipse"];
  "sha256:65e6b779b5399de4aea0e2004c05a318eaeb98ad9cc09f996b1050c6f3e4afbd" [label="copy{src=/, dest=/go/src/github.com/contiv/vpp}" shape="note"];
  "sha256:217ab7706a99476a31b3dd91b8be7fbf880949306d3ded802cef392cb5e3058a" [label="mkdir{path=/go/src/github.com/contiv/vpp}" shape="note"];
  "sha256:35bfd7ee2e246fd6e0fbb2a89a31e00f362bf925d325076f98294189ccb9f60c" [label="/bin/sh -c make contiv-ksr" shape="box"];
  "sha256:e46ed2401b919f6f1eac866b36416042fd10014942ceb8e27cadd9565aaa1856" [label="copy{src=/go/src/github.com/contiv/vpp/cmd/contiv-ksr/contiv-ksr, dest=/contiv-ksr}" shape="note"];
  "sha256:ab70ca04ea67facb866d33fc04fe8712398c08b9441a336a2275b5b7886231d4" [label="sha256:ab70ca04ea67facb866d33fc04fe8712398c08b9441a336a2275b5b7886231d4" shape="plaintext"];
  "sha256:fd7ae76cb27cdcd9a9c67d872cbeddd646a5544abbd563e07b57a11dce7dda58" -> "sha256:697ca51612b40e7ebe45df4740db1af23d715a787c64d2f1f098dd2912e09b7b" [label=""];
  "sha256:697ca51612b40e7ebe45df4740db1af23d715a787c64d2f1f098dd2912e09b7b" -> "sha256:65e6b779b5399de4aea0e2004c05a318eaeb98ad9cc09f996b1050c6f3e4afbd" [label=""];
  "sha256:e047a29911c28441c47f0376af0331b5d0f52a11c66646add7e7a6b548a242e6" -> "sha256:65e6b779b5399de4aea0e2004c05a318eaeb98ad9cc09f996b1050c6f3e4afbd" [label=""];
  "sha256:65e6b779b5399de4aea0e2004c05a318eaeb98ad9cc09f996b1050c6f3e4afbd" -> "sha256:217ab7706a99476a31b3dd91b8be7fbf880949306d3ded802cef392cb5e3058a" [label=""];
  "sha256:217ab7706a99476a31b3dd91b8be7fbf880949306d3ded802cef392cb5e3058a" -> "sha256:35bfd7ee2e246fd6e0fbb2a89a31e00f362bf925d325076f98294189ccb9f60c" [label=""];
  "sha256:35bfd7ee2e246fd6e0fbb2a89a31e00f362bf925d325076f98294189ccb9f60c" -> "sha256:e46ed2401b919f6f1eac866b36416042fd10014942ceb8e27cadd9565aaa1856" [label=""];
  "sha256:e46ed2401b919f6f1eac866b36416042fd10014942ceb8e27cadd9565aaa1856" -> "sha256:ab70ca04ea67facb866d33fc04fe8712398c08b9441a336a2275b5b7886231d4" [label=""];
}

