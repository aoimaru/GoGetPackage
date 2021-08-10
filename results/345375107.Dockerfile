[app/sources/345375107.Dockerfile]
digraph {
  "sha256:904b83f4d9f0f186fa0de0a2ebc60f8c3a5e5fb770016d45d72060aca65cb1b2" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-alpine:3.5-build@sha256:c8c34a79bf9fbc4427dc23d0cc96cee4f72d4611f2c5b4730c3be47bfbbec873" shape="ellipse"];
  "sha256:8e2c52709effbb115e78fc1465fe74d31cb110b4d6670c2ea35f711dd908c8f9" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:5d34010bd02c548ae968a7f166f8bbecb11f713fcacab30ff01e98dcb99a153a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:3b5bf45da5a70b78e430398dce7b609946442be658fc4f761f7b72af66dc1c1b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b11ad3bd3cc4e1d2c0fae1b80379cc8e058b7da5984f3b0aae2f1133040fa1b1" [label="mkdir{path=/go}" shape="note"];
  "sha256:3f4ec624c1d50ec9a82fa2decdb10a62197f340c35e7584b4fc59495ffbec815" [label="sha256:3f4ec624c1d50ec9a82fa2decdb10a62197f340c35e7584b4fc59495ffbec815" shape="plaintext"];
  "sha256:904b83f4d9f0f186fa0de0a2ebc60f8c3a5e5fb770016d45d72060aca65cb1b2" -> "sha256:8e2c52709effbb115e78fc1465fe74d31cb110b4d6670c2ea35f711dd908c8f9" [label=""];
  "sha256:8e2c52709effbb115e78fc1465fe74d31cb110b4d6670c2ea35f711dd908c8f9" -> "sha256:5d34010bd02c548ae968a7f166f8bbecb11f713fcacab30ff01e98dcb99a153a" [label=""];
  "sha256:5d34010bd02c548ae968a7f166f8bbecb11f713fcacab30ff01e98dcb99a153a" -> "sha256:3b5bf45da5a70b78e430398dce7b609946442be658fc4f761f7b72af66dc1c1b" [label=""];
  "sha256:3b5bf45da5a70b78e430398dce7b609946442be658fc4f761f7b72af66dc1c1b" -> "sha256:b11ad3bd3cc4e1d2c0fae1b80379cc8e058b7da5984f3b0aae2f1133040fa1b1" [label=""];
  "sha256:b11ad3bd3cc4e1d2c0fae1b80379cc8e058b7da5984f3b0aae2f1133040fa1b1" -> "sha256:3f4ec624c1d50ec9a82fa2decdb10a62197f340c35e7584b4fc59495ffbec815" [label=""];
}

