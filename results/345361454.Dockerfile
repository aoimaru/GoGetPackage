[app/sources/345361454.Dockerfile]
digraph {
  "sha256:caf9379e592e2907ccdc6d0d8bf616ebda16c2a93b2eb76b5837b932c44b6ff5" [label="docker-image://docker.io/balenalib/var-som-mx6-debian:sid-build" shape="ellipse"];
  "sha256:48b0e254ae0a0055e113e98fc04c3d34a8c447ad3a6b809bba386586d86cad66" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:397f17b1af5dcd011d4f5475eaf64e5afc72ec91eab213176c77e8e0a1754dae" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:97dbf176e156d460299f9d2f8e0d948c5e529be61e6c327533c91d0a2b9adfe9" [label="mkdir{path=/go}" shape="note"];
  "sha256:631d124829d049109f185655267214728b920edb6fc541014fde02fb1e39777e" [label="sha256:631d124829d049109f185655267214728b920edb6fc541014fde02fb1e39777e" shape="plaintext"];
  "sha256:caf9379e592e2907ccdc6d0d8bf616ebda16c2a93b2eb76b5837b932c44b6ff5" -> "sha256:48b0e254ae0a0055e113e98fc04c3d34a8c447ad3a6b809bba386586d86cad66" [label=""];
  "sha256:48b0e254ae0a0055e113e98fc04c3d34a8c447ad3a6b809bba386586d86cad66" -> "sha256:397f17b1af5dcd011d4f5475eaf64e5afc72ec91eab213176c77e8e0a1754dae" [label=""];
  "sha256:397f17b1af5dcd011d4f5475eaf64e5afc72ec91eab213176c77e8e0a1754dae" -> "sha256:97dbf176e156d460299f9d2f8e0d948c5e529be61e6c327533c91d0a2b9adfe9" [label=""];
  "sha256:97dbf176e156d460299f9d2f8e0d948c5e529be61e6c327533c91d0a2b9adfe9" -> "sha256:631d124829d049109f185655267214728b920edb6fc541014fde02fb1e39777e" [label=""];
}

