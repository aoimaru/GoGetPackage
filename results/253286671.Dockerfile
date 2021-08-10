[app/sources/253286671.Dockerfile]
digraph {
  "sha256:a9434f0a23b7a660590253a6cff3894b70ba14fee56db277556f6f8355aab383" [label="docker-image://docker.io/selenoid/base:5.0" shape="ellipse"];
  "sha256:832512088ca831f2a8ee0467fb966bbae31b9879c43c95cb142362ed0e905de9" [label="/bin/sh -c apt-get update &&     apt-get install -y openjdk-8-jre-headless &&     apt-get clean &&     rm -Rf /tmp/*" shape="box"];
  "sha256:9e6ae9230fa8e7ca48d6e6418a2206db0ebc15e2e2e7134fcf946587375c8ad9" [label="sha256:9e6ae9230fa8e7ca48d6e6418a2206db0ebc15e2e2e7134fcf946587375c8ad9" shape="plaintext"];
  "sha256:a9434f0a23b7a660590253a6cff3894b70ba14fee56db277556f6f8355aab383" -> "sha256:832512088ca831f2a8ee0467fb966bbae31b9879c43c95cb142362ed0e905de9" [label=""];
  "sha256:832512088ca831f2a8ee0467fb966bbae31b9879c43c95cb142362ed0e905de9" -> "sha256:9e6ae9230fa8e7ca48d6e6418a2206db0ebc15e2e2e7134fcf946587375c8ad9" [label=""];
}

