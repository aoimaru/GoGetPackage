[app/sources/420801399.Dockerfile]
digraph {
  "sha256:5351f694edc450a2cebd0fde2dd1c460ad0d340365264cec58b8406b82acd181" [label="docker-image://docker.io/armhf/alpine:3.4" shape="ellipse"];
  "sha256:9e2b98bc761be7fa7bf26ad0b2c5b2d24454b05ecbf1a5b4a7dc0e223feca987" [label="/bin/sh -c apk add -U git go bash curl gcc musl-dev make" shape="box"];
  "sha256:54620ceb07a37cda92b01468fe58f3ef08535066c9f1313a0447eb22b9479cb1" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:09e4dc2477f54e41013bc511693491321730edabf2fdd157f1ee9b1b6928736f" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:f4a52a51d19db30bf25605dcc7aca01ace4f003c7a5c3368634ca1ab45a56b2f" [label="local://context" shape="ellipse"];
  "sha256:4aa85cad6732e9b0428ad725e427571c15133added7a12baf30388d1a1ed3e60" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:32ca231de6992879f085527be33700b90b4bc44c467e54d2f8b9d01fa4ddc290" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:5a77341d5a8790e32d4f0fa3afbdd517c9fdac8281c6d1193bbd0ead41ec589e" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:57068ea19a6f0c5768ba62c1088fa9e62b5990a2dd70b2405965c54626557dc9" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:13617ec7e7c5e5182041ece8d906476899dd9b4834221daeaea187f542be15ff" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:bae1c22df12557e22414587ec57ea29e317b3cde82b2fa404fc73bec5d826abf" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:2235fd40f6976ddfc1668042a27aece42e34460971d66452001bf5f3a8aa71bf" [label="sha256:2235fd40f6976ddfc1668042a27aece42e34460971d66452001bf5f3a8aa71bf" shape="plaintext"];
  "sha256:5351f694edc450a2cebd0fde2dd1c460ad0d340365264cec58b8406b82acd181" -> "sha256:9e2b98bc761be7fa7bf26ad0b2c5b2d24454b05ecbf1a5b4a7dc0e223feca987" [label=""];
  "sha256:9e2b98bc761be7fa7bf26ad0b2c5b2d24454b05ecbf1a5b4a7dc0e223feca987" -> "sha256:54620ceb07a37cda92b01468fe58f3ef08535066c9f1313a0447eb22b9479cb1" [label=""];
  "sha256:54620ceb07a37cda92b01468fe58f3ef08535066c9f1313a0447eb22b9479cb1" -> "sha256:09e4dc2477f54e41013bc511693491321730edabf2fdd157f1ee9b1b6928736f" [label=""];
  "sha256:09e4dc2477f54e41013bc511693491321730edabf2fdd157f1ee9b1b6928736f" -> "sha256:4aa85cad6732e9b0428ad725e427571c15133added7a12baf30388d1a1ed3e60" [label=""];
  "sha256:f4a52a51d19db30bf25605dcc7aca01ace4f003c7a5c3368634ca1ab45a56b2f" -> "sha256:4aa85cad6732e9b0428ad725e427571c15133added7a12baf30388d1a1ed3e60" [label=""];
  "sha256:4aa85cad6732e9b0428ad725e427571c15133added7a12baf30388d1a1ed3e60" -> "sha256:32ca231de6992879f085527be33700b90b4bc44c467e54d2f8b9d01fa4ddc290" [label=""];
  "sha256:f4a52a51d19db30bf25605dcc7aca01ace4f003c7a5c3368634ca1ab45a56b2f" -> "sha256:32ca231de6992879f085527be33700b90b4bc44c467e54d2f8b9d01fa4ddc290" [label=""];
  "sha256:32ca231de6992879f085527be33700b90b4bc44c467e54d2f8b9d01fa4ddc290" -> "sha256:5a77341d5a8790e32d4f0fa3afbdd517c9fdac8281c6d1193bbd0ead41ec589e" [label=""];
  "sha256:5a77341d5a8790e32d4f0fa3afbdd517c9fdac8281c6d1193bbd0ead41ec589e" -> "sha256:57068ea19a6f0c5768ba62c1088fa9e62b5990a2dd70b2405965c54626557dc9" [label=""];
  "sha256:57068ea19a6f0c5768ba62c1088fa9e62b5990a2dd70b2405965c54626557dc9" -> "sha256:13617ec7e7c5e5182041ece8d906476899dd9b4834221daeaea187f542be15ff" [label=""];
  "sha256:13617ec7e7c5e5182041ece8d906476899dd9b4834221daeaea187f542be15ff" -> "sha256:bae1c22df12557e22414587ec57ea29e317b3cde82b2fa404fc73bec5d826abf" [label=""];
  "sha256:bae1c22df12557e22414587ec57ea29e317b3cde82b2fa404fc73bec5d826abf" -> "sha256:2235fd40f6976ddfc1668042a27aece42e34460971d66452001bf5f3a8aa71bf" [label=""];
}

