[app/sources/228810801.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:19fab1398b75d5bbbae5eed4beb9bf7a7dba2fc67579d83af331580e05781818" [label="local://context" shape="ellipse"];
  "sha256:ed52a2fbfb3e38d3d1e1f0df3ac77ad0629854c6ee6f3918cc31255fc96b5437" [label="copy{src=/, dest=/go/src/github.com/docker/docker/hack/integration-cli-on-swarm/agent}" shape="note"];
  "sha256:72c0ed384fcadea9bb22abe25f3d98c6cf3349996856b5ba17b7c829a696c9a9" [label="/bin/sh -c go build -buildmode=pie -o /master github.com/docker/docker/hack/integration-cli-on-swarm/agent/master" shape="box"];
  "sha256:dffc923bf94cc183ea7f27c4ba685c27f9e04cb84ec1d6cf93f5ac75fe02be75" [label="sha256:dffc923bf94cc183ea7f27c4ba685c27f9e04cb84ec1d6cf93f5ac75fe02be75" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:ed52a2fbfb3e38d3d1e1f0df3ac77ad0629854c6ee6f3918cc31255fc96b5437" [label=""];
  "sha256:19fab1398b75d5bbbae5eed4beb9bf7a7dba2fc67579d83af331580e05781818" -> "sha256:ed52a2fbfb3e38d3d1e1f0df3ac77ad0629854c6ee6f3918cc31255fc96b5437" [label=""];
  "sha256:ed52a2fbfb3e38d3d1e1f0df3ac77ad0629854c6ee6f3918cc31255fc96b5437" -> "sha256:72c0ed384fcadea9bb22abe25f3d98c6cf3349996856b5ba17b7c829a696c9a9" [label=""];
  "sha256:72c0ed384fcadea9bb22abe25f3d98c6cf3349996856b5ba17b7c829a696c9a9" -> "sha256:dffc923bf94cc183ea7f27c4ba685c27f9e04cb84ec1d6cf93f5ac75fe02be75" [label=""];
}

