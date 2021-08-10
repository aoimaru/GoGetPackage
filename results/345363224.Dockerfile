[app/sources/345363224.Dockerfile]
digraph {
  "sha256:70567c1fba41f155e19d14c4688de3d4b8a824f6d7bf71ccd948048a73b852c4" [label="docker-image://docker.io/balenalib/am571x-evm-alpine:3.9-build@sha256:9251d57580dfce3fe10aef0df7e99b3feb7a5bfb9394cfb3d421ae33dbe3cd39" shape="ellipse"];
  "sha256:e33121f57b7524d118f3b0115802e49292f868969ae5e2b5458cee7471ccb978" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d6b3834c9697e32a830f4b6d6dd85f738e77b4feb7fba5883c14c525f65e6d3b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:2163f3065b55913174e3fc645df28d896341f793f57ab1ebc9dce813a37c8598" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5a776d9c690cbf09a960aa342461767b84144f28ef864911267cdbbd86153ec7" [label="mkdir{path=/go}" shape="note"];
  "sha256:a999668f3bb62a3e9b80905ac83f87080df62c92572dc763e87297b1f6a7a5d4" [label="sha256:a999668f3bb62a3e9b80905ac83f87080df62c92572dc763e87297b1f6a7a5d4" shape="plaintext"];
  "sha256:70567c1fba41f155e19d14c4688de3d4b8a824f6d7bf71ccd948048a73b852c4" -> "sha256:e33121f57b7524d118f3b0115802e49292f868969ae5e2b5458cee7471ccb978" [label=""];
  "sha256:e33121f57b7524d118f3b0115802e49292f868969ae5e2b5458cee7471ccb978" -> "sha256:d6b3834c9697e32a830f4b6d6dd85f738e77b4feb7fba5883c14c525f65e6d3b" [label=""];
  "sha256:d6b3834c9697e32a830f4b6d6dd85f738e77b4feb7fba5883c14c525f65e6d3b" -> "sha256:2163f3065b55913174e3fc645df28d896341f793f57ab1ebc9dce813a37c8598" [label=""];
  "sha256:2163f3065b55913174e3fc645df28d896341f793f57ab1ebc9dce813a37c8598" -> "sha256:5a776d9c690cbf09a960aa342461767b84144f28ef864911267cdbbd86153ec7" [label=""];
  "sha256:5a776d9c690cbf09a960aa342461767b84144f28ef864911267cdbbd86153ec7" -> "sha256:a999668f3bb62a3e9b80905ac83f87080df62c92572dc763e87297b1f6a7a5d4" [label=""];
}

