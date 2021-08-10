[app/sources/161605744.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:caf1013a04678753276aa1816df4faa7d2b10a5cda7128c3151c5903ef7e948d" [label="local://context" shape="ellipse"];
  "sha256:26f74662b4afac31f795191156e09ec32a7945df45dcda436013242856d3cc9d" [label="copy{src=/crasher, dest=/}" shape="note"];
  "sha256:79a99308b7d1c49742faf094663d38088869ab46bda32c454256afb8ecb8c91a" [label="sha256:79a99308b7d1c49742faf094663d38088869ab46bda32c454256afb8ecb8c91a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:26f74662b4afac31f795191156e09ec32a7945df45dcda436013242856d3cc9d" [label=""];
  "sha256:caf1013a04678753276aa1816df4faa7d2b10a5cda7128c3151c5903ef7e948d" -> "sha256:26f74662b4afac31f795191156e09ec32a7945df45dcda436013242856d3cc9d" [label=""];
  "sha256:26f74662b4afac31f795191156e09ec32a7945df45dcda436013242856d3cc9d" -> "sha256:79a99308b7d1c49742faf094663d38088869ab46bda32c454256afb8ecb8c91a" [label=""];
}

