[app/sources/334998455.Dockerfile]
digraph {
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" [label="docker-image://docker.io/microsoft/windowsservercore:latest" shape="ellipse"];
  "sha256:92362dda62336c5a8d993dcb8edae5d2917ed7d5cf81c14dcccaf46ad0f9f6d4" [label="local://context" shape="ellipse"];
  "sha256:3b6cb2ed7099404c030f8fef62b7e27617b16880b7cd221f31ddf3d36acb48fb" [label="copy{src=/publish, dest=/}" shape="note"];
  "sha256:27d7a24e001c8ea2cb6255ba7863de22530933b10c6f57aa644707d8cdfd9029" [label="sha256:27d7a24e001c8ea2cb6255ba7863de22530933b10c6f57aa644707d8cdfd9029" shape="plaintext"];
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" -> "sha256:3b6cb2ed7099404c030f8fef62b7e27617b16880b7cd221f31ddf3d36acb48fb" [label=""];
  "sha256:92362dda62336c5a8d993dcb8edae5d2917ed7d5cf81c14dcccaf46ad0f9f6d4" -> "sha256:3b6cb2ed7099404c030f8fef62b7e27617b16880b7cd221f31ddf3d36acb48fb" [label=""];
  "sha256:3b6cb2ed7099404c030f8fef62b7e27617b16880b7cd221f31ddf3d36acb48fb" -> "sha256:27d7a24e001c8ea2cb6255ba7863de22530933b10c6f57aa644707d8cdfd9029" [label=""];
}

