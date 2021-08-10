[app/sources/252781868.Dockerfile]
digraph {
  "sha256:06c199ebe8e9db356da6f1f4554fbfe801692e2eca10e69a8825da918590e37b" [label="docker-image://docker.io/christianalexander/tinynode:latest" shape="ellipse"];
  "sha256:62db422942d3bb04aeb4e32a501252444b7a555cf8c0f9230b7817ecdcd03866" [label="/bin/sh -c export GOPATH=/go && apk add \\--update go git gcc musl-dev make bash && go get github.com/hashicorp/consul && cd $GOPATH/src/github.com/hashicorp/consul && git checkout -q --detach \"v$CONSUL_VERSION\" && make && mv bin/consul /bin && rm -rf $GOPATH && apk del go gcc musl-dev make bash && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c4d13f13401dcb2db95780778462a541e57ab558202fef3fb7827ba0fb2ad2e6" [label="sha256:c4d13f13401dcb2db95780778462a541e57ab558202fef3fb7827ba0fb2ad2e6" shape="plaintext"];
  "sha256:06c199ebe8e9db356da6f1f4554fbfe801692e2eca10e69a8825da918590e37b" -> "sha256:62db422942d3bb04aeb4e32a501252444b7a555cf8c0f9230b7817ecdcd03866" [label=""];
  "sha256:62db422942d3bb04aeb4e32a501252444b7a555cf8c0f9230b7817ecdcd03866" -> "sha256:c4d13f13401dcb2db95780778462a541e57ab558202fef3fb7827ba0fb2ad2e6" [label=""];
}

