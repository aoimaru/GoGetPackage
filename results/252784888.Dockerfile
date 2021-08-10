[app/sources/252784888.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:c8f570b310ca300802424e8f0830b0f383747ad5049f68ad7168f13021b7e365" [label="local://context" shape="ellipse"];
  "sha256:0210d200af7eeda9d61eb789509088eb10741733d8032692c1552c9ddeb6c5be" [label="copy{src=/, dest=/go/src/github.com/codenamekt/mgo-api}" shape="note"];
  "sha256:9d4fed87ba61ac87175dc07d73644481d83f665a8629e35b60e677f32d6d2be7" [label="/bin/sh -c go get github.com/codenamekt/mgo-api" shape="box"];
  "sha256:87b2536b910f09a5b8702c58b5ec3138780ebb037a36be66736597c7d3402475" [label="/bin/sh -c go install github.com/codenamekt/mgo-api" shape="box"];
  "sha256:384c2ad0082b77a3c496ef50e191ba7ab50eace9c7a6db159c5ca2aec6b383a6" [label="sha256:384c2ad0082b77a3c496ef50e191ba7ab50eace9c7a6db159c5ca2aec6b383a6" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:0210d200af7eeda9d61eb789509088eb10741733d8032692c1552c9ddeb6c5be" [label=""];
  "sha256:c8f570b310ca300802424e8f0830b0f383747ad5049f68ad7168f13021b7e365" -> "sha256:0210d200af7eeda9d61eb789509088eb10741733d8032692c1552c9ddeb6c5be" [label=""];
  "sha256:0210d200af7eeda9d61eb789509088eb10741733d8032692c1552c9ddeb6c5be" -> "sha256:9d4fed87ba61ac87175dc07d73644481d83f665a8629e35b60e677f32d6d2be7" [label=""];
  "sha256:9d4fed87ba61ac87175dc07d73644481d83f665a8629e35b60e677f32d6d2be7" -> "sha256:87b2536b910f09a5b8702c58b5ec3138780ebb037a36be66736597c7d3402475" [label=""];
  "sha256:87b2536b910f09a5b8702c58b5ec3138780ebb037a36be66736597c7d3402475" -> "sha256:384c2ad0082b77a3c496ef50e191ba7ab50eace9c7a6db159c5ca2aec6b383a6" [label=""];
}

