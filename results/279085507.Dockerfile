[app/sources/279085507.Dockerfile]
digraph {
  "sha256:ec6f8c122137a82e751ce9969d214ae79520688e323689a292797332323f4041" [label="docker-image://docker.io/prom/alertmanager:v0.7.1" shape="ellipse"];
  "sha256:f9b859794161b9bb112d3a950f6572098f9b28d2d60601e0551e99a444530d6a" [label="local://context" shape="ellipse"];
  "sha256:6701e5c7ab066bd51c152e21e02406d7ffba6f25072beaf9f9f91ebaa0fe25bd" [label="copy{src=/dcos.alertmanager.yml, dest=/alertmanager.yml}" shape="note"];
  "sha256:6ce1b7315b4b2eef42d2b01ec5529972126f8e245524afd7c4c6cc5e831e0abd" [label="sha256:6ce1b7315b4b2eef42d2b01ec5529972126f8e245524afd7c4c6cc5e831e0abd" shape="plaintext"];
  "sha256:ec6f8c122137a82e751ce9969d214ae79520688e323689a292797332323f4041" -> "sha256:6701e5c7ab066bd51c152e21e02406d7ffba6f25072beaf9f9f91ebaa0fe25bd" [label=""];
  "sha256:f9b859794161b9bb112d3a950f6572098f9b28d2d60601e0551e99a444530d6a" -> "sha256:6701e5c7ab066bd51c152e21e02406d7ffba6f25072beaf9f9f91ebaa0fe25bd" [label=""];
  "sha256:6701e5c7ab066bd51c152e21e02406d7ffba6f25072beaf9f9f91ebaa0fe25bd" -> "sha256:6ce1b7315b4b2eef42d2b01ec5529972126f8e245524afd7c4c6cc5e831e0abd" [label=""];
}

