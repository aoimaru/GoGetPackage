[app/sources/345375665.Dockerfile]
digraph {
  "sha256:573d93168f4bb8cc52622d16588e1e5e028f8b7792e276658a4706715d43a721" [label="docker-image://docker.io/balenalib/orange-pi-one-alpine:3.8-build" shape="ellipse"];
  "sha256:fa21c970dcc72c85d705028db41b7e714ea4e5bed515dee401ccbe6efdbb4cee" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4cbfcc3dadf14904803b248f1e89b4273f422bbf613fb9d518b720b152c5ddad" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:6d4d152a3c0e63beb91b4a2d4c28972c084791b25a8ce8eaf0a2a24b14f49a19" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:31969728e02204d52bfecc26e81bce5c9d42593f5b0a39f8ffe8c1ebd61e6198" [label="mkdir{path=/go}" shape="note"];
  "sha256:52ffbf52ef5c4025f1d131cc6d620561471ab0e38b9cbe205803b38f5a720791" [label="sha256:52ffbf52ef5c4025f1d131cc6d620561471ab0e38b9cbe205803b38f5a720791" shape="plaintext"];
  "sha256:573d93168f4bb8cc52622d16588e1e5e028f8b7792e276658a4706715d43a721" -> "sha256:fa21c970dcc72c85d705028db41b7e714ea4e5bed515dee401ccbe6efdbb4cee" [label=""];
  "sha256:fa21c970dcc72c85d705028db41b7e714ea4e5bed515dee401ccbe6efdbb4cee" -> "sha256:4cbfcc3dadf14904803b248f1e89b4273f422bbf613fb9d518b720b152c5ddad" [label=""];
  "sha256:4cbfcc3dadf14904803b248f1e89b4273f422bbf613fb9d518b720b152c5ddad" -> "sha256:6d4d152a3c0e63beb91b4a2d4c28972c084791b25a8ce8eaf0a2a24b14f49a19" [label=""];
  "sha256:6d4d152a3c0e63beb91b4a2d4c28972c084791b25a8ce8eaf0a2a24b14f49a19" -> "sha256:31969728e02204d52bfecc26e81bce5c9d42593f5b0a39f8ffe8c1ebd61e6198" [label=""];
  "sha256:31969728e02204d52bfecc26e81bce5c9d42593f5b0a39f8ffe8c1ebd61e6198" -> "sha256:52ffbf52ef5c4025f1d131cc6d620561471ab0e38b9cbe205803b38f5a720791" [label=""];
}

