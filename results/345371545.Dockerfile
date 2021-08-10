[app/sources/345371545.Dockerfile]
digraph {
  "sha256:0ac7c0aae122efed07ba9c25f7a47cddc690316e32c2f7a8059ea335c3b7907d" [label="docker-image://docker.io/balenalib/colibri-imx6dl-alpine:edge-run" shape="ellipse"];
  "sha256:72e31147749628e79ca031bd2dcd8d9c4f786c02265a357c5c5bdd5dda9a0db9" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ac3e89d311ba46e916a67f67eb8e9d3d1b2199cc62525a64177d565f4c03ce28" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:de0cfafb04a35586d18a78aebc96b85911391496ebe60157203571944e2f8d62" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:1d0acec7d3c7d414b06585093f19cd2057c1bb40e87218916dec235bcdc082fb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2cd0954a122364f7873e344a2f114a41da269f09f9c2051189b90963927c1593" [label="mkdir{path=/go}" shape="note"];
  "sha256:b8beb2638ca0bd69985d44d6048ff7e63e47cc7cb8083d9129df441d29550985" [label="sha256:b8beb2638ca0bd69985d44d6048ff7e63e47cc7cb8083d9129df441d29550985" shape="plaintext"];
  "sha256:0ac7c0aae122efed07ba9c25f7a47cddc690316e32c2f7a8059ea335c3b7907d" -> "sha256:72e31147749628e79ca031bd2dcd8d9c4f786c02265a357c5c5bdd5dda9a0db9" [label=""];
  "sha256:72e31147749628e79ca031bd2dcd8d9c4f786c02265a357c5c5bdd5dda9a0db9" -> "sha256:ac3e89d311ba46e916a67f67eb8e9d3d1b2199cc62525a64177d565f4c03ce28" [label=""];
  "sha256:ac3e89d311ba46e916a67f67eb8e9d3d1b2199cc62525a64177d565f4c03ce28" -> "sha256:de0cfafb04a35586d18a78aebc96b85911391496ebe60157203571944e2f8d62" [label=""];
  "sha256:de0cfafb04a35586d18a78aebc96b85911391496ebe60157203571944e2f8d62" -> "sha256:1d0acec7d3c7d414b06585093f19cd2057c1bb40e87218916dec235bcdc082fb" [label=""];
  "sha256:1d0acec7d3c7d414b06585093f19cd2057c1bb40e87218916dec235bcdc082fb" -> "sha256:2cd0954a122364f7873e344a2f114a41da269f09f9c2051189b90963927c1593" [label=""];
  "sha256:2cd0954a122364f7873e344a2f114a41da269f09f9c2051189b90963927c1593" -> "sha256:b8beb2638ca0bd69985d44d6048ff7e63e47cc7cb8083d9129df441d29550985" [label=""];
}

