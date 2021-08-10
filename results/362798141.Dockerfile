[app/sources/362798141.Dockerfile]
digraph {
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" [label="docker-image://docker.io/library/golang:1.9@sha256:8b5968585131604a92af02f5690713efadf029cc8dad53f79280b87a80eb1354" shape="ellipse"];
  "sha256:2a35f16fda8c98e647b25289dd1a8e8ec6270c63d32771c541e9b99e08ebcebd" [label="local://context" shape="ellipse"];
  "sha256:6ea15999df638bb914a9e3b93e3a10b92490fda40b3a2725bf1dcfc4682b08da" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:90dbb7709faae072821c236d2944909995840857a17a38036d8a7c3ab05854be" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:a532170b95d61736e3377faaa6e6fb8a9f8a2e5c12c86faab51b924c9fa93c9b" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:cca2116c76e4eb1235e00a3ca5531488e73d9a00702e0c4feee6a46983ab8112" [label="sha256:cca2116c76e4eb1235e00a3ca5531488e73d9a00702e0c4feee6a46983ab8112" shape="plaintext"];
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" -> "sha256:6ea15999df638bb914a9e3b93e3a10b92490fda40b3a2725bf1dcfc4682b08da" [label=""];
  "sha256:2a35f16fda8c98e647b25289dd1a8e8ec6270c63d32771c541e9b99e08ebcebd" -> "sha256:6ea15999df638bb914a9e3b93e3a10b92490fda40b3a2725bf1dcfc4682b08da" [label=""];
  "sha256:6ea15999df638bb914a9e3b93e3a10b92490fda40b3a2725bf1dcfc4682b08da" -> "sha256:90dbb7709faae072821c236d2944909995840857a17a38036d8a7c3ab05854be" [label=""];
  "sha256:90dbb7709faae072821c236d2944909995840857a17a38036d8a7c3ab05854be" -> "sha256:a532170b95d61736e3377faaa6e6fb8a9f8a2e5c12c86faab51b924c9fa93c9b" [label=""];
  "sha256:a532170b95d61736e3377faaa6e6fb8a9f8a2e5c12c86faab51b924c9fa93c9b" -> "sha256:cca2116c76e4eb1235e00a3ca5531488e73d9a00702e0c4feee6a46983ab8112" [label=""];
}

