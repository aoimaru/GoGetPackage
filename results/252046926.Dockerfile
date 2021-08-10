[app/sources/252046926.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:a7cc1e1cc329eb9bfb38b31a0bfa68a253eb8aab60bd15d752edc8ae83e17644" [label="/bin/sh -c apk --update upgrade &&     apk add build-base gcc abuild binutils binutils-doc gcc-doc zlib-dev git cmake curl ca-certificates &&     update-ca-certificates &&     git clone https://github.com/philres/ngmlr.git && cd ngmlr && git checkout $VERSION_ARG && mkdir -p build && cd build && cmake .. && make && cp ../bin/ngmlr-*/ngmlr /bin/ && cd .. && rm -rf ngmlr &&     apk del build-base abuild binutils binutils-doc gcc-doc zlib-dev git cmake curl ca-certificates &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:198bbe703830261d7148788a9141035b2362b94a50261e14074569d2d815b827" [label="sha256:198bbe703830261d7148788a9141035b2362b94a50261e14074569d2d815b827" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:a7cc1e1cc329eb9bfb38b31a0bfa68a253eb8aab60bd15d752edc8ae83e17644" [label=""];
  "sha256:a7cc1e1cc329eb9bfb38b31a0bfa68a253eb8aab60bd15d752edc8ae83e17644" -> "sha256:198bbe703830261d7148788a9141035b2362b94a50261e14074569d2d815b827" [label=""];
}

