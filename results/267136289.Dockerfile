[app/sources/267136289.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:3fe2fdfd2923791186483f2d832704fcdf387da99eaa234dcd828516fe6ef88b" [label="/bin/sh -c apk add --update go git make gcc musl-dev linux-headers ca-certificates &&   git clone --depth 1 --branch release/1.6 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apk del go git make gcc musl-dev linux-headers &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0f45ae076fa5916f13a5b2c469b92600aefd0dcc387499796c2ef5464532be43" [label="sha256:0f45ae076fa5916f13a5b2c469b92600aefd0dcc387499796c2ef5464532be43" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:3fe2fdfd2923791186483f2d832704fcdf387da99eaa234dcd828516fe6ef88b" [label=""];
  "sha256:3fe2fdfd2923791186483f2d832704fcdf387da99eaa234dcd828516fe6ef88b" -> "sha256:0f45ae076fa5916f13a5b2c469b92600aefd0dcc387499796c2ef5464532be43" [label=""];
}

