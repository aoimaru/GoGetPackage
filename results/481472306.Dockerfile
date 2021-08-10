[app/sources/481472306.Dockerfile]
digraph {
  "sha256:4bfeb84c70a62b6d0b903c2dfcdd207d6ed2537201d57045733d68b5a7d6c0fe" [label="local://context" shape="ellipse"];
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" [label="docker-image://docker.io/library/alpine:3.1" shape="ellipse"];
  "sha256:df11ffe470da5c48df9a8269237ffabe906fc21688feb9ed827f49617f9a3e6f" [label="copy{src=/monolith, dest=/usr/bin/monolith}" shape="note"];
  "sha256:650ea2299e1528ceb72127737c40025df816feecaabc1e7014fcc8a01e38e688" [label="sha256:650ea2299e1528ceb72127737c40025df816feecaabc1e7014fcc8a01e38e688" shape="plaintext"];
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" -> "sha256:df11ffe470da5c48df9a8269237ffabe906fc21688feb9ed827f49617f9a3e6f" [label=""];
  "sha256:4bfeb84c70a62b6d0b903c2dfcdd207d6ed2537201d57045733d68b5a7d6c0fe" -> "sha256:df11ffe470da5c48df9a8269237ffabe906fc21688feb9ed827f49617f9a3e6f" [label=""];
  "sha256:df11ffe470da5c48df9a8269237ffabe906fc21688feb9ed827f49617f9a3e6f" -> "sha256:650ea2299e1528ceb72127737c40025df816feecaabc1e7014fcc8a01e38e688" [label=""];
}

