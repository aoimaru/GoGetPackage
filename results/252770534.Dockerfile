[app/sources/252770534.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:af1bbdb0e43e96bbae0e52741ab4a1daca46a880f54bfdd6cb16c57edbb10a6b" [label="/bin/sh -c apt-get update && apt-get install -y kodi && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:72210fc2cb1aa253c8b65d54b6ae6f740c409ae88087176d028c1fc31ee785fb" [label="sha256:72210fc2cb1aa253c8b65d54b6ae6f740c409ae88087176d028c1fc31ee785fb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:af1bbdb0e43e96bbae0e52741ab4a1daca46a880f54bfdd6cb16c57edbb10a6b" [label=""];
  "sha256:af1bbdb0e43e96bbae0e52741ab4a1daca46a880f54bfdd6cb16c57edbb10a6b" -> "sha256:72210fc2cb1aa253c8b65d54b6ae6f740c409ae88087176d028c1fc31ee785fb" [label=""];
}

