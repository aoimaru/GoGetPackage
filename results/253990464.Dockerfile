[app/sources/253990464.Dockerfile]
digraph {
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" [label="docker-image://registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest" shape="ellipse"];
  "sha256:da845f707dff1156a0213eae814bb4fe11140623e1ac3b7fd084abb99f5efee7" [label="local://context" shape="ellipse"];
  "sha256:3723cf2c22477cef2c37d17cfef15232c116e0868baaa7943210cbdf347f7103" [label="copy{src=/target/apic-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:8dd821c204b032b7e74a92c7bdffb4deafe56d8067abd09a588619ad1d62c214" [label="sha256:8dd821c204b032b7e74a92c7bdffb4deafe56d8067abd09a588619ad1d62c214" shape="plaintext"];
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" -> "sha256:3723cf2c22477cef2c37d17cfef15232c116e0868baaa7943210cbdf347f7103" [label=""];
  "sha256:da845f707dff1156a0213eae814bb4fe11140623e1ac3b7fd084abb99f5efee7" -> "sha256:3723cf2c22477cef2c37d17cfef15232c116e0868baaa7943210cbdf347f7103" [label=""];
  "sha256:3723cf2c22477cef2c37d17cfef15232c116e0868baaa7943210cbdf347f7103" -> "sha256:8dd821c204b032b7e74a92c7bdffb4deafe56d8067abd09a588619ad1d62c214" [label=""];
}

