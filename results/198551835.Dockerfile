[app/sources/198551835.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:41f0231e5f9428abaea77d3e7a6265f18f6ec0b1539d57f6c110a1e025220abf" [label="local://context" shape="ellipse"];
  "sha256:e92825fc347e74e1704709a096198cdcd7be0fa8c6a60a63e1a8c768ba546725" [label="copy{src=/mysql.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:79799871c859eb696e010fa0edc4b284b6c6bedb3713e066ca458e9c9bd48eb2" [label="copy{src=/inventory.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:7aa726da5649c766c3c93bc0708ddd0a01438375ead1b45e2049b8b293d14947" [label="sha256:7aa726da5649c766c3c93bc0708ddd0a01438375ead1b45e2049b8b293d14947" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:e92825fc347e74e1704709a096198cdcd7be0fa8c6a60a63e1a8c768ba546725" [label=""];
  "sha256:41f0231e5f9428abaea77d3e7a6265f18f6ec0b1539d57f6c110a1e025220abf" -> "sha256:e92825fc347e74e1704709a096198cdcd7be0fa8c6a60a63e1a8c768ba546725" [label=""];
  "sha256:e92825fc347e74e1704709a096198cdcd7be0fa8c6a60a63e1a8c768ba546725" -> "sha256:79799871c859eb696e010fa0edc4b284b6c6bedb3713e066ca458e9c9bd48eb2" [label=""];
  "sha256:41f0231e5f9428abaea77d3e7a6265f18f6ec0b1539d57f6c110a1e025220abf" -> "sha256:79799871c859eb696e010fa0edc4b284b6c6bedb3713e066ca458e9c9bd48eb2" [label=""];
  "sha256:79799871c859eb696e010fa0edc4b284b6c6bedb3713e066ca458e9c9bd48eb2" -> "sha256:7aa726da5649c766c3c93bc0708ddd0a01438375ead1b45e2049b8b293d14947" [label=""];
}

