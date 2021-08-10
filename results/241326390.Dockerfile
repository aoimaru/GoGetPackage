[app/sources/241326390.Dockerfile]
digraph {
  "sha256:72809c57691463b7c65115d47b3ade3d989ccf1ccd75f4349bd7732051c9122f" [label="docker-image://docker.io/supinf/go:1.6-builder" shape="ellipse"];
  "sha256:098a5e93b2beb6609293aa9fd73d11387040af3cb9189d67f2f420476ff8b448" [label="/bin/sh -c apk --no-cache add tini     && apk --no-cache add --virtual build-dependencies git     && go get github.com/derekparker/delve/cmd/dlv     && cd $GOPATH/src/github.com/derekparker/delve     && git checkout v${DELVE_VERSION}     && go install github.com/derekparker/delve/cmd/dlv     && apk del --purge -r build-dependencies     && rm -rf /go/src/*" shape="box"];
  "sha256:42167f8e78aa413a532e55dece5d550373c3b65683e2045f0f8bdb02187c73bb" [label="sha256:42167f8e78aa413a532e55dece5d550373c3b65683e2045f0f8bdb02187c73bb" shape="plaintext"];
  "sha256:72809c57691463b7c65115d47b3ade3d989ccf1ccd75f4349bd7732051c9122f" -> "sha256:098a5e93b2beb6609293aa9fd73d11387040af3cb9189d67f2f420476ff8b448" [label=""];
  "sha256:098a5e93b2beb6609293aa9fd73d11387040af3cb9189d67f2f420476ff8b448" -> "sha256:42167f8e78aa413a532e55dece5d550373c3b65683e2045f0f8bdb02187c73bb" [label=""];
}

