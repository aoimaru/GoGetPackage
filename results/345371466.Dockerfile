[app/sources/345371466.Dockerfile]
digraph {
  "sha256:6cecb3165d51d1ac862d0226e2fb83da2721962ea5d4d86e490ea080cff6d336" [label="docker-image://docker.io/balenalib/cl-som-imx8-fedora:28-build" shape="ellipse"];
  "sha256:db459367f2199b8d64c21848f3bcad42b5a96c61be9006e1a9bedfd1810350cc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:28c10fc8e5b8e33fbd253c5a44c4d9a08af4db20bde3c99b4062f34fee166462" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cb79aba8b3829f54b384f77041ffd37e303f4806aa27142f4a6bee4af3661f96" [label="mkdir{path=/go}" shape="note"];
  "sha256:59bde5d071ebaf074c66926a737d856eb7b2cb55ca2e776970321527088bdb01" [label="sha256:59bde5d071ebaf074c66926a737d856eb7b2cb55ca2e776970321527088bdb01" shape="plaintext"];
  "sha256:6cecb3165d51d1ac862d0226e2fb83da2721962ea5d4d86e490ea080cff6d336" -> "sha256:db459367f2199b8d64c21848f3bcad42b5a96c61be9006e1a9bedfd1810350cc" [label=""];
  "sha256:db459367f2199b8d64c21848f3bcad42b5a96c61be9006e1a9bedfd1810350cc" -> "sha256:28c10fc8e5b8e33fbd253c5a44c4d9a08af4db20bde3c99b4062f34fee166462" [label=""];
  "sha256:28c10fc8e5b8e33fbd253c5a44c4d9a08af4db20bde3c99b4062f34fee166462" -> "sha256:cb79aba8b3829f54b384f77041ffd37e303f4806aa27142f4a6bee4af3661f96" [label=""];
  "sha256:cb79aba8b3829f54b384f77041ffd37e303f4806aa27142f4a6bee4af3661f96" -> "sha256:59bde5d071ebaf074c66926a737d856eb7b2cb55ca2e776970321527088bdb01" [label=""];
}

