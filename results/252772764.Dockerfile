[app/sources/252772764.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:91968409e1eb96395eb7dbbe2d164be4944e31c0e820ee83eb3c2c0c2cda5389" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:a0cec709b5f47c9267badff657581cda035ae12239a271f06bdc23391f3c5472" [label="local://context" shape="ellipse"];
  "sha256:9792615913ae164a5ce207beeb84e445324fbf0409a32a834d3fd520be293291" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:f70a2e2318f8bec576f03ec550232e600303f68ee8b500efcfa895c5f27d1cb6" [label="mkdir{path=/src}" shape="note"];
  "sha256:45a6f4e7af26862dae06b70ddb04803a8a2d01ece6d9390d05faf67170534f19" [label="/bin/sh -c npm install" shape="box"];
  "sha256:06083b15002e3429f109a0ebe9f540292b070daac9ebf85fa2d3c9273f1c6145" [label="sha256:06083b15002e3429f109a0ebe9f540292b070daac9ebf85fa2d3c9273f1c6145" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:91968409e1eb96395eb7dbbe2d164be4944e31c0e820ee83eb3c2c0c2cda5389" [label=""];
  "sha256:91968409e1eb96395eb7dbbe2d164be4944e31c0e820ee83eb3c2c0c2cda5389" -> "sha256:9792615913ae164a5ce207beeb84e445324fbf0409a32a834d3fd520be293291" [label=""];
  "sha256:a0cec709b5f47c9267badff657581cda035ae12239a271f06bdc23391f3c5472" -> "sha256:9792615913ae164a5ce207beeb84e445324fbf0409a32a834d3fd520be293291" [label=""];
  "sha256:9792615913ae164a5ce207beeb84e445324fbf0409a32a834d3fd520be293291" -> "sha256:f70a2e2318f8bec576f03ec550232e600303f68ee8b500efcfa895c5f27d1cb6" [label=""];
  "sha256:f70a2e2318f8bec576f03ec550232e600303f68ee8b500efcfa895c5f27d1cb6" -> "sha256:45a6f4e7af26862dae06b70ddb04803a8a2d01ece6d9390d05faf67170534f19" [label=""];
  "sha256:45a6f4e7af26862dae06b70ddb04803a8a2d01ece6d9390d05faf67170534f19" -> "sha256:06083b15002e3429f109a0ebe9f540292b070daac9ebf85fa2d3c9273f1c6145" [label=""];
}

