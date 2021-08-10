[app/sources/345363091.Dockerfile]
digraph {
  "sha256:b810eb4dad80e6738c837a23e028ce694a1532acf31bf4d625bbed03ec3e0d0b" [label="docker-image://docker.io/balenalib/aarch64-alpine:3.6-run" shape="ellipse"];
  "sha256:af7051b98398eb5f8a17a8bd4c460cb417720427f806b40e32ef81536ee71237" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6c411fe46b9a3afeee26b212000674a5662ad2b91589e214e779aee193d6ffa2" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:0455a66cf82fc805837e0ad2cd29cb949a7c389b9ddc65bc567eb7d2d3a1405f" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:1d900e1d11163f270263a008526fbece91a0285d858ef17e624db6bee98189bd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3e94eb87d78333df2c839cd717cc5f42daf071c784c7d1b01c6d9f774a112ed2" [label="mkdir{path=/go}" shape="note"];
  "sha256:f6f2da7e1b8f16ea5e1fb2c2995953e510e7b33b41969a3f326d511ba82b1134" [label="sha256:f6f2da7e1b8f16ea5e1fb2c2995953e510e7b33b41969a3f326d511ba82b1134" shape="plaintext"];
  "sha256:b810eb4dad80e6738c837a23e028ce694a1532acf31bf4d625bbed03ec3e0d0b" -> "sha256:af7051b98398eb5f8a17a8bd4c460cb417720427f806b40e32ef81536ee71237" [label=""];
  "sha256:af7051b98398eb5f8a17a8bd4c460cb417720427f806b40e32ef81536ee71237" -> "sha256:6c411fe46b9a3afeee26b212000674a5662ad2b91589e214e779aee193d6ffa2" [label=""];
  "sha256:6c411fe46b9a3afeee26b212000674a5662ad2b91589e214e779aee193d6ffa2" -> "sha256:0455a66cf82fc805837e0ad2cd29cb949a7c389b9ddc65bc567eb7d2d3a1405f" [label=""];
  "sha256:0455a66cf82fc805837e0ad2cd29cb949a7c389b9ddc65bc567eb7d2d3a1405f" -> "sha256:1d900e1d11163f270263a008526fbece91a0285d858ef17e624db6bee98189bd" [label=""];
  "sha256:1d900e1d11163f270263a008526fbece91a0285d858ef17e624db6bee98189bd" -> "sha256:3e94eb87d78333df2c839cd717cc5f42daf071c784c7d1b01c6d9f774a112ed2" [label=""];
  "sha256:3e94eb87d78333df2c839cd717cc5f42daf071c784c7d1b01c6d9f774a112ed2" -> "sha256:f6f2da7e1b8f16ea5e1fb2c2995953e510e7b33b41969a3f326d511ba82b1134" [label=""];
}

