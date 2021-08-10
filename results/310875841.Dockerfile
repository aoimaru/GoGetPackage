[app/sources/310875841.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:9bd16624efd7594cb7be32090d96aa7a077d0805437b742fcf8e511d09d47ea8" [label="local://context" shape="ellipse"];
  "sha256:8f8d01ee52ea02a84e4c3651ed5a33216e4e8599657a459bcce8944b9484762d" [label="copy{src=/, dest=/go/src/github.com/docker/docker/hack/integration-cli-on-swarm/agent}" shape="note"];
  "sha256:e142fd71fc2f27bdf9470880c527e92ac87582c218317fd4441c143c7dbe63d5" [label="/bin/sh -c go build -o /master github.com/docker/docker/hack/integration-cli-on-swarm/agent/master" shape="box"];
  "sha256:fa2a7422209390cb2e3968773639ff2ae67a1323a990ee5cdea3b057e4501e98" [label="sha256:fa2a7422209390cb2e3968773639ff2ae67a1323a990ee5cdea3b057e4501e98" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:8f8d01ee52ea02a84e4c3651ed5a33216e4e8599657a459bcce8944b9484762d" [label=""];
  "sha256:9bd16624efd7594cb7be32090d96aa7a077d0805437b742fcf8e511d09d47ea8" -> "sha256:8f8d01ee52ea02a84e4c3651ed5a33216e4e8599657a459bcce8944b9484762d" [label=""];
  "sha256:8f8d01ee52ea02a84e4c3651ed5a33216e4e8599657a459bcce8944b9484762d" -> "sha256:e142fd71fc2f27bdf9470880c527e92ac87582c218317fd4441c143c7dbe63d5" [label=""];
  "sha256:e142fd71fc2f27bdf9470880c527e92ac87582c218317fd4441c143c7dbe63d5" -> "sha256:fa2a7422209390cb2e3968773639ff2ae67a1323a990ee5cdea3b057e4501e98" [label=""];
}

