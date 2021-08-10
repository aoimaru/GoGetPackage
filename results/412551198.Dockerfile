[app/sources/412551198.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" [label="/bin/sh -c apt-get update && apt-get install -y python git bc && apt-get clean" shape="box"];
  "sha256:8b1e9eea180f6ff25de2b79bc4fd69ecebef0570f927305bc799274a7c9b285b" [label="local://context" shape="ellipse"];
  "sha256:aca45dc5cbf3f1cf6fe8a4b051b47c2b864eefebf846fc886eb94ebed28cd8b6" [label="copy{src=/board-status.html, dest=/opt/tools/},copy{src=/kconfig2html, dest=/opt/tools/},copy{src=/run.sh, dest=/opt/tools/}" shape="note"];
  "sha256:15a383778fe7e940206ef9ff6c875ac07c18e3a5a0d07b3eca83cacdfd49f3e7" [label="sha256:15a383778fe7e940206ef9ff6c875ac07c18e3a5a0d07b3eca83cacdfd49f3e7" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" [label=""];
  "sha256:976790015ffac986106db3bd64b7600c867e75a35fa64cc57fe625447d6f9639" -> "sha256:aca45dc5cbf3f1cf6fe8a4b051b47c2b864eefebf846fc886eb94ebed28cd8b6" [label=""];
  "sha256:8b1e9eea180f6ff25de2b79bc4fd69ecebef0570f927305bc799274a7c9b285b" -> "sha256:aca45dc5cbf3f1cf6fe8a4b051b47c2b864eefebf846fc886eb94ebed28cd8b6" [label=""];
  "sha256:aca45dc5cbf3f1cf6fe8a4b051b47c2b864eefebf846fc886eb94ebed28cd8b6" -> "sha256:15a383778fe7e940206ef9ff6c875ac07c18e3a5a0d07b3eca83cacdfd49f3e7" [label=""];
}

