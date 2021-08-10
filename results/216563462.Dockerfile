[app/sources/216563462.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:dd889edee83d9a639be1ee6a16c985270322fe1676462662cb2c242b41ad9520" [label="/bin/sh -c apk add --update bash curl jq go git make gcc musl-dev                \t  ca-certificates linux-headers                           &&   git clone --depth 1 --branch $branch  https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth)                               &&   (cd go-ethereum                                             &&   echo \"{}\"                                                        | jq \".+ {\\\"repo\\\":\\\"$(git config --get remote.origin.url)\\\"}\"   | jq \".+ {\\\"branch\\\":\\\"$(git rev-parse --abbrev-ref HEAD)\\\"}\"    | jq \".+ {\\\"commit\\\":\\\"$(git rev-parse HEAD)\\\"}\"               \t> /version.json)                                            &&   cp go-ethereum/build/bin/geth /geth                         &&   apk del go git make gcc musl-dev linux-headers              &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:16e46f635ca4edcc89bf89abdc19c6edf2b94a0e72372ba387e777f84e5d3607" [label="local://context" shape="ellipse"];
  "sha256:c66ca9f3b992e2ce40bb6c8bbc6e0bc62a60c1c75d47aa72ff611510102d2e0a" [label="copy{src=/geth.sh, dest=/geth.sh}" shape="note"];
  "sha256:ae4355bccec5c6107ce6dd700986a8eb105f6208fb44e59ebdd92ef90cdd60a0" [label="/bin/sh -c chmod +x /geth.sh" shape="box"];
  "sha256:8ad32abd4f01e407824634194311ba49e54a5f261a3ef5187011c5993a449516" [label="copy{src=/enode.sh, dest=/enode.sh}" shape="note"];
  "sha256:e3ba9cdbabd62b7e74443c5e8f95431e36b8305ebb741c04a41b1c4e4ba2064b" [label="/bin/sh -c chmod +x /enode.sh" shape="box"];
  "sha256:f29f4e53b85734c5655eecf2339e9124d6d3c8ab655cc87050a65d271cb68d03" [label="copy{src=/genesis.json, dest=/genesis.json}" shape="note"];
  "sha256:ccb5b7149da9ce55fe154e307ee712b5419142a3e868567235d87a92a4a90f7c" [label="/bin/sh -c /geth makecache     1 ~/.ethereum/geth/ethash &&   /geth makecache 30001 ~/.ethereum/geth/ethash" shape="box"];
  "sha256:a3f76f2e6da645e2ea021b01ba51e8e167c46b004d18e93e9313bdaf1fb74636" [label="sha256:a3f76f2e6da645e2ea021b01ba51e8e167c46b004d18e93e9313bdaf1fb74636" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:dd889edee83d9a639be1ee6a16c985270322fe1676462662cb2c242b41ad9520" [label=""];
  "sha256:dd889edee83d9a639be1ee6a16c985270322fe1676462662cb2c242b41ad9520" -> "sha256:c66ca9f3b992e2ce40bb6c8bbc6e0bc62a60c1c75d47aa72ff611510102d2e0a" [label=""];
  "sha256:16e46f635ca4edcc89bf89abdc19c6edf2b94a0e72372ba387e777f84e5d3607" -> "sha256:c66ca9f3b992e2ce40bb6c8bbc6e0bc62a60c1c75d47aa72ff611510102d2e0a" [label=""];
  "sha256:c66ca9f3b992e2ce40bb6c8bbc6e0bc62a60c1c75d47aa72ff611510102d2e0a" -> "sha256:ae4355bccec5c6107ce6dd700986a8eb105f6208fb44e59ebdd92ef90cdd60a0" [label=""];
  "sha256:ae4355bccec5c6107ce6dd700986a8eb105f6208fb44e59ebdd92ef90cdd60a0" -> "sha256:8ad32abd4f01e407824634194311ba49e54a5f261a3ef5187011c5993a449516" [label=""];
  "sha256:16e46f635ca4edcc89bf89abdc19c6edf2b94a0e72372ba387e777f84e5d3607" -> "sha256:8ad32abd4f01e407824634194311ba49e54a5f261a3ef5187011c5993a449516" [label=""];
  "sha256:8ad32abd4f01e407824634194311ba49e54a5f261a3ef5187011c5993a449516" -> "sha256:e3ba9cdbabd62b7e74443c5e8f95431e36b8305ebb741c04a41b1c4e4ba2064b" [label=""];
  "sha256:e3ba9cdbabd62b7e74443c5e8f95431e36b8305ebb741c04a41b1c4e4ba2064b" -> "sha256:f29f4e53b85734c5655eecf2339e9124d6d3c8ab655cc87050a65d271cb68d03" [label=""];
  "sha256:16e46f635ca4edcc89bf89abdc19c6edf2b94a0e72372ba387e777f84e5d3607" -> "sha256:f29f4e53b85734c5655eecf2339e9124d6d3c8ab655cc87050a65d271cb68d03" [label=""];
  "sha256:f29f4e53b85734c5655eecf2339e9124d6d3c8ab655cc87050a65d271cb68d03" -> "sha256:ccb5b7149da9ce55fe154e307ee712b5419142a3e868567235d87a92a4a90f7c" [label=""];
  "sha256:ccb5b7149da9ce55fe154e307ee712b5419142a3e868567235d87a92a4a90f7c" -> "sha256:a3f76f2e6da645e2ea021b01ba51e8e167c46b004d18e93e9313bdaf1fb74636" [label=""];
}

