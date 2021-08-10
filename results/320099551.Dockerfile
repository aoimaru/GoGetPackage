[app/sources/320099551.Dockerfile]
digraph {
  "sha256:a04756be6c0305c3a2ce08448b6961b5b6bbf67723d71d00b5989ad67fe7fb6a" [label="docker-image://docker.io/webdevops/bootstrap:alpine@sha256:f8e32f098a58ac7dbc5984315d4ea410112480b7d71693833ac20728c6e52997" shape="ellipse"];
  "sha256:a58bb867aad4a46b9220edbf3fa634b8ad9c87cf43eb60193bb78a5a76b3cb4d" [label="local://context" shape="ellipse"];
  "sha256:13ad409048ab0bafc5aac7755d0105be74023eab37df72330f3fba73bdc19883" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:39ca6dbc7659acd898754e3de58a83a1de745881f82be5d5033baf4b8241819b" [label="/bin/sh -c set -x     && chmod +x /opt/docker/bin/*     && apk-install         supervisor         wget         curl         sed         tzdata     && chmod +s /sbin/gosu     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:64c4b5f8f82642ffd312f6206edbb633c38ba278bf28866e772c96aa4618a5bf" [label="sha256:64c4b5f8f82642ffd312f6206edbb633c38ba278bf28866e772c96aa4618a5bf" shape="plaintext"];
  "sha256:a04756be6c0305c3a2ce08448b6961b5b6bbf67723d71d00b5989ad67fe7fb6a" -> "sha256:13ad409048ab0bafc5aac7755d0105be74023eab37df72330f3fba73bdc19883" [label=""];
  "sha256:a58bb867aad4a46b9220edbf3fa634b8ad9c87cf43eb60193bb78a5a76b3cb4d" -> "sha256:13ad409048ab0bafc5aac7755d0105be74023eab37df72330f3fba73bdc19883" [label=""];
  "sha256:13ad409048ab0bafc5aac7755d0105be74023eab37df72330f3fba73bdc19883" -> "sha256:39ca6dbc7659acd898754e3de58a83a1de745881f82be5d5033baf4b8241819b" [label=""];
  "sha256:39ca6dbc7659acd898754e3de58a83a1de745881f82be5d5033baf4b8241819b" -> "sha256:64c4b5f8f82642ffd312f6206edbb633c38ba278bf28866e772c96aa4618a5bf" [label=""];
}

