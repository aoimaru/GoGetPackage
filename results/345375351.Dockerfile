[app/sources/345375351.Dockerfile]
digraph {
  "sha256:66f75245b831e9090a40cb3f70b91031455c70b1020f17e1bda62c50168512fd" [label="docker-image://docker.io/balenalib/odroid-c1-alpine:edge-build" shape="ellipse"];
  "sha256:fbfc352127a12f3777907d1cfdf9145ec7bbcfca942ba2ce7311e554aa16972c" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4b39b09faeb3626687718d4f7b7cabff7babf9d9f92d347c9f1833798e8ad10a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:fd2523d5eb76168e9c9228c4762020f6766c001da8facf4dfee2ebcfbbbf52d2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:42e46f4ca635b74b219564b92fd82f0e0154966914683852e093eeb44532a3c3" [label="mkdir{path=/go}" shape="note"];
  "sha256:91ec3e58fb56cbd84a6ee3d24fc31e98e6e89dbed7b7688e57698cd3a2027883" [label="sha256:91ec3e58fb56cbd84a6ee3d24fc31e98e6e89dbed7b7688e57698cd3a2027883" shape="plaintext"];
  "sha256:66f75245b831e9090a40cb3f70b91031455c70b1020f17e1bda62c50168512fd" -> "sha256:fbfc352127a12f3777907d1cfdf9145ec7bbcfca942ba2ce7311e554aa16972c" [label=""];
  "sha256:fbfc352127a12f3777907d1cfdf9145ec7bbcfca942ba2ce7311e554aa16972c" -> "sha256:4b39b09faeb3626687718d4f7b7cabff7babf9d9f92d347c9f1833798e8ad10a" [label=""];
  "sha256:4b39b09faeb3626687718d4f7b7cabff7babf9d9f92d347c9f1833798e8ad10a" -> "sha256:fd2523d5eb76168e9c9228c4762020f6766c001da8facf4dfee2ebcfbbbf52d2" [label=""];
  "sha256:fd2523d5eb76168e9c9228c4762020f6766c001da8facf4dfee2ebcfbbbf52d2" -> "sha256:42e46f4ca635b74b219564b92fd82f0e0154966914683852e093eeb44532a3c3" [label=""];
  "sha256:42e46f4ca635b74b219564b92fd82f0e0154966914683852e093eeb44532a3c3" -> "sha256:91ec3e58fb56cbd84a6ee3d24fc31e98e6e89dbed7b7688e57698cd3a2027883" [label=""];
}

