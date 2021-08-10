[app/sources/233419929.Dockerfile]
digraph {
  "sha256:6acbf6761c98d20b0c7534203ef8a4f9037fe9bf46ea8992cb78562b7310a7be" [label="docker-image://docker.io/library/mongo:3.4" shape="ellipse"];
  "sha256:be8afe8d5354da92e761e1c3099db7d8494879be9ab2bef795f960cb11de8145" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:c900a010a86b66c0530675c39946b252fcea686a816b68c23e835b9553c83cbf" [label="sha256:c900a010a86b66c0530675c39946b252fcea686a816b68c23e835b9553c83cbf" shape="plaintext"];
  "sha256:6acbf6761c98d20b0c7534203ef8a4f9037fe9bf46ea8992cb78562b7310a7be" -> "sha256:be8afe8d5354da92e761e1c3099db7d8494879be9ab2bef795f960cb11de8145" [label=""];
  "sha256:be8afe8d5354da92e761e1c3099db7d8494879be9ab2bef795f960cb11de8145" -> "sha256:c900a010a86b66c0530675c39946b252fcea686a816b68c23e835b9553c83cbf" [label=""];
}

