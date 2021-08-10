[app/sources/345368714.Dockerfile]
digraph {
  "sha256:7a5dddd9205e7dfdea045d0cbd626209585715647acbe32dad442ed4a5f86da7" [label="docker-image://docker.io/balenalib/beaglebone-black-ubuntu:artful-build" shape="ellipse"];
  "sha256:b7f565f2d6d587244ce5d971d64bc91a2bc4e8dd7289c81b5e8d9c2175db1f23" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:850d7d18a26ac7c95036c09b8a190aa8dc711828626614bc85aeb036cdbc5233" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ac7d5b293a63efd7aca963e793022bcc523f24201065ec7bea435a5dd36bdf96" [label="mkdir{path=/go}" shape="note"];
  "sha256:3c91d41bc73b746353350099957ae1e78f2aa8cf534ebfc547e2978a8edae336" [label="sha256:3c91d41bc73b746353350099957ae1e78f2aa8cf534ebfc547e2978a8edae336" shape="plaintext"];
  "sha256:7a5dddd9205e7dfdea045d0cbd626209585715647acbe32dad442ed4a5f86da7" -> "sha256:b7f565f2d6d587244ce5d971d64bc91a2bc4e8dd7289c81b5e8d9c2175db1f23" [label=""];
  "sha256:b7f565f2d6d587244ce5d971d64bc91a2bc4e8dd7289c81b5e8d9c2175db1f23" -> "sha256:850d7d18a26ac7c95036c09b8a190aa8dc711828626614bc85aeb036cdbc5233" [label=""];
  "sha256:850d7d18a26ac7c95036c09b8a190aa8dc711828626614bc85aeb036cdbc5233" -> "sha256:ac7d5b293a63efd7aca963e793022bcc523f24201065ec7bea435a5dd36bdf96" [label=""];
  "sha256:ac7d5b293a63efd7aca963e793022bcc523f24201065ec7bea435a5dd36bdf96" -> "sha256:3c91d41bc73b746353350099957ae1e78f2aa8cf534ebfc547e2978a8edae336" [label=""];
}

