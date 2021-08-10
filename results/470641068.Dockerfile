[app/sources/470641068.Dockerfile]
digraph {
  "sha256:57ecc441969525ae9408c0a752fe79d7c25fcd647ce3beafb3898e35cfc1762b" [label="docker-image://docker.io/grafana/grafana:latest" shape="ellipse"];
  "sha256:1a188269c9516569fa22029692025abe598d8df5a31a20755cc905911c754978" [label="/bin/sh -c grafana-cli plugins install mtanda-histogram-panel" shape="box"];
  "sha256:88c38cd8eedceda179b85ffd41d6a016a084ce9eddc2e04fb5a14e11c57b06eb" [label="local://context" shape="ellipse"];
  "sha256:0f27735c691e239c80be8f6cd09df9947a00c0ca069842151778995457bea41b" [label="copy{src=/provisioning, dest=/etc/grafana/provisioning}" shape="note"];
  "sha256:34dc610059f65c4e38011fcfa319617d7e8d0921ce75ec961bf8b7eb2ba122fb" [label="sha256:34dc610059f65c4e38011fcfa319617d7e8d0921ce75ec961bf8b7eb2ba122fb" shape="plaintext"];
  "sha256:57ecc441969525ae9408c0a752fe79d7c25fcd647ce3beafb3898e35cfc1762b" -> "sha256:1a188269c9516569fa22029692025abe598d8df5a31a20755cc905911c754978" [label=""];
  "sha256:1a188269c9516569fa22029692025abe598d8df5a31a20755cc905911c754978" -> "sha256:0f27735c691e239c80be8f6cd09df9947a00c0ca069842151778995457bea41b" [label=""];
  "sha256:88c38cd8eedceda179b85ffd41d6a016a084ce9eddc2e04fb5a14e11c57b06eb" -> "sha256:0f27735c691e239c80be8f6cd09df9947a00c0ca069842151778995457bea41b" [label=""];
  "sha256:0f27735c691e239c80be8f6cd09df9947a00c0ca069842151778995457bea41b" -> "sha256:34dc610059f65c4e38011fcfa319617d7e8d0921ce75ec961bf8b7eb2ba122fb" [label=""];
}

