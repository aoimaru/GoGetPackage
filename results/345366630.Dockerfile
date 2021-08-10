[app/sources/345366630.Dockerfile]
digraph {
  "sha256:d6e4a0434394f743ad1922eab7f29588e1e214fd55fda699c52c9396581fd100" [label="docker-image://docker.io/balenalib/imx8m-var-dart-debian:sid-build" shape="ellipse"];
  "sha256:603e307b7942b6b874900a3d46fe431e7c4e1c18e585d33b9b12af529d50b300" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:e0b7cff8a3b42e912ebd0b018118da2553586b913d54dd61c3eb4e551c58bf62" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2b1d957c216496e637719c791507cbe251d2213ae60a09c3259864bcf1734b43" [label="mkdir{path=/go}" shape="note"];
  "sha256:0d3159d53a6bf56f7cd0b6dcdda0f5a2729ab8cd8ca6e0aab908dc01b1c5c6dd" [label="sha256:0d3159d53a6bf56f7cd0b6dcdda0f5a2729ab8cd8ca6e0aab908dc01b1c5c6dd" shape="plaintext"];
  "sha256:d6e4a0434394f743ad1922eab7f29588e1e214fd55fda699c52c9396581fd100" -> "sha256:603e307b7942b6b874900a3d46fe431e7c4e1c18e585d33b9b12af529d50b300" [label=""];
  "sha256:603e307b7942b6b874900a3d46fe431e7c4e1c18e585d33b9b12af529d50b300" -> "sha256:e0b7cff8a3b42e912ebd0b018118da2553586b913d54dd61c3eb4e551c58bf62" [label=""];
  "sha256:e0b7cff8a3b42e912ebd0b018118da2553586b913d54dd61c3eb4e551c58bf62" -> "sha256:2b1d957c216496e637719c791507cbe251d2213ae60a09c3259864bcf1734b43" [label=""];
  "sha256:2b1d957c216496e637719c791507cbe251d2213ae60a09c3259864bcf1734b43" -> "sha256:0d3159d53a6bf56f7cd0b6dcdda0f5a2729ab8cd8ca6e0aab908dc01b1c5c6dd" [label=""];
}

