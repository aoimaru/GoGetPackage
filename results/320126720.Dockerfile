[app/sources/320126720.Dockerfile]
digraph {
  "sha256:3adb4fe3beee164e9ee5eb086216e42a93903425d4cbfe01e0e3246d35420413" [label="docker-image://docker.io/library/golang:1.7.3-alpine" shape="ellipse"];
  "sha256:9dedc7f001e4f5c55d100d9a1b0d8e827a03b6d8b4ee97ace90d648f148f907b" [label="/bin/sh -c mkdir -p \"$GOPATH/src/\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\" &&     mkdir -p /go/src/github.com/yunify/metad" shape="box"];
  "sha256:2454d610cc0324e4d4e7d6a0e53025b5fdd993c8fcd3c4d8663fec494deb8f5d" [label="/bin/sh -c apk --update add bash git &&     ln -s /go/src/github.com/yunify/metad /app" shape="box"];
  "sha256:7bf41cc9e4afc8c612c63795601b43fb690878527eaa73c0f7ab3b4a01479896" [label="mkdir{path=/app}" shape="note"];
  "sha256:302946867aebba0f49e69cb7fa54713ec7d2f8e529c21c3a3230a863aa3a29e3" [label="sha256:302946867aebba0f49e69cb7fa54713ec7d2f8e529c21c3a3230a863aa3a29e3" shape="plaintext"];
  "sha256:3adb4fe3beee164e9ee5eb086216e42a93903425d4cbfe01e0e3246d35420413" -> "sha256:9dedc7f001e4f5c55d100d9a1b0d8e827a03b6d8b4ee97ace90d648f148f907b" [label=""];
  "sha256:9dedc7f001e4f5c55d100d9a1b0d8e827a03b6d8b4ee97ace90d648f148f907b" -> "sha256:2454d610cc0324e4d4e7d6a0e53025b5fdd993c8fcd3c4d8663fec494deb8f5d" [label=""];
  "sha256:2454d610cc0324e4d4e7d6a0e53025b5fdd993c8fcd3c4d8663fec494deb8f5d" -> "sha256:7bf41cc9e4afc8c612c63795601b43fb690878527eaa73c0f7ab3b4a01479896" [label=""];
  "sha256:7bf41cc9e4afc8c612c63795601b43fb690878527eaa73c0f7ab3b4a01479896" -> "sha256:302946867aebba0f49e69cb7fa54713ec7d2f8e529c21c3a3230a863aa3a29e3" [label=""];
}

