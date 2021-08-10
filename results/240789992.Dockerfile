[app/sources/240789992.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:d9519aee46fc890aae3cb68add52ee5a2abe524f23b702fdeb4f573e7cb48bf7" [label="local://context" shape="ellipse"];
  "sha256:36855472af9d052f456ae16015cde16bff71a0dccab35055993bd64b1377c3f4" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:c5bf50251e620b996a164e7904ae084c172423cb9df78ceee42c323bb44d75e2" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:4e2654ebcd002538d9efd6b46649cf608c3ccb03173616bd4541ba8c94a2190e" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:e9df24d0127260a3a2b3b38b9cc0ecd8fdf553f41b82b3bbbb0b4fde803a090e" [label="sha256:e9df24d0127260a3a2b3b38b9cc0ecd8fdf553f41b82b3bbbb0b4fde803a090e" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:36855472af9d052f456ae16015cde16bff71a0dccab35055993bd64b1377c3f4" [label=""];
  "sha256:d9519aee46fc890aae3cb68add52ee5a2abe524f23b702fdeb4f573e7cb48bf7" -> "sha256:36855472af9d052f456ae16015cde16bff71a0dccab35055993bd64b1377c3f4" [label=""];
  "sha256:36855472af9d052f456ae16015cde16bff71a0dccab35055993bd64b1377c3f4" -> "sha256:c5bf50251e620b996a164e7904ae084c172423cb9df78ceee42c323bb44d75e2" [label=""];
  "sha256:c5bf50251e620b996a164e7904ae084c172423cb9df78ceee42c323bb44d75e2" -> "sha256:4e2654ebcd002538d9efd6b46649cf608c3ccb03173616bd4541ba8c94a2190e" [label=""];
  "sha256:4e2654ebcd002538d9efd6b46649cf608c3ccb03173616bd4541ba8c94a2190e" -> "sha256:e9df24d0127260a3a2b3b38b9cc0ecd8fdf553f41b82b3bbbb0b4fde803a090e" [label=""];
}

