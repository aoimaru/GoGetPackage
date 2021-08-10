[app/sources/252774496.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:1fda43749ea59ec769555e2a0b14ad748e49a6cd2cecfbae26fc94af5ee15c89" [label="mkdir{path=/tmp/workdir}" shape="note"];
  "sha256:4505726a1baafa48bae75537848ef58cf762f6f156e80ca30048c6b4c2958b14" [label="local://context" shape="ellipse"];
  "sha256:99453e983aaf11ded583c3d812db0914192d9931fd8b2637331b3021dbc6e285" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:cccd3f8cbd7c1be80c68d44e50f48e56c9856e3ee6c74930783ee7ab9f1df488" [label="/bin/sh -c chmod 777 /scripts/*.sh" shape="box"];
  "sha256:26ad44a782994b20bfe8f3790df6b77d3ec60fdb34c634ccce782db28992a436" [label="/bin/sh -c /scripts/run.sh" shape="box"];
  "sha256:b575040fb9f05c9f14837e86d9cf124e5d604e8194fd6ea5ff479acba0d982bf" [label="sha256:b575040fb9f05c9f14837e86d9cf124e5d604e8194fd6ea5ff479acba0d982bf" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:1fda43749ea59ec769555e2a0b14ad748e49a6cd2cecfbae26fc94af5ee15c89" [label=""];
  "sha256:1fda43749ea59ec769555e2a0b14ad748e49a6cd2cecfbae26fc94af5ee15c89" -> "sha256:99453e983aaf11ded583c3d812db0914192d9931fd8b2637331b3021dbc6e285" [label=""];
  "sha256:4505726a1baafa48bae75537848ef58cf762f6f156e80ca30048c6b4c2958b14" -> "sha256:99453e983aaf11ded583c3d812db0914192d9931fd8b2637331b3021dbc6e285" [label=""];
  "sha256:99453e983aaf11ded583c3d812db0914192d9931fd8b2637331b3021dbc6e285" -> "sha256:cccd3f8cbd7c1be80c68d44e50f48e56c9856e3ee6c74930783ee7ab9f1df488" [label=""];
  "sha256:cccd3f8cbd7c1be80c68d44e50f48e56c9856e3ee6c74930783ee7ab9f1df488" -> "sha256:26ad44a782994b20bfe8f3790df6b77d3ec60fdb34c634ccce782db28992a436" [label=""];
  "sha256:26ad44a782994b20bfe8f3790df6b77d3ec60fdb34c634ccce782db28992a436" -> "sha256:b575040fb9f05c9f14837e86d9cf124e5d604e8194fd6ea5ff479acba0d982bf" [label=""];
}

