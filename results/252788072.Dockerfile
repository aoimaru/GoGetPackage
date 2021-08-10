[app/sources/252788072.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:9b510917512ed2a4cfc659f900b0181248b3fc80319efa5bd89dd06e54399452" [label="/bin/sh -c apt-get update && apt-get install php5 php5-mysql -y" shape="box"];
  "sha256:cd8ceaf21b4aab984054a915b465c0fa99acab0c02494530675f60e9d9ac4a93" [label="sha256:cd8ceaf21b4aab984054a915b465c0fa99acab0c02494530675f60e9d9ac4a93" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:9b510917512ed2a4cfc659f900b0181248b3fc80319efa5bd89dd06e54399452" [label=""];
  "sha256:9b510917512ed2a4cfc659f900b0181248b3fc80319efa5bd89dd06e54399452" -> "sha256:cd8ceaf21b4aab984054a915b465c0fa99acab0c02494530675f60e9d9ac4a93" [label=""];
}

