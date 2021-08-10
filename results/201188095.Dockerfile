[app/sources/201188095.Dockerfile]
digraph {
  "sha256:4c980b24cf2c6b93ed8ca123f25c1a6a22e03e925fbdd7b32f6c871181eaf84a" [label="docker-image://docker.io/ivories/bio:1.0" shape="ellipse"];
  "sha256:3bb6a77f55b993f6a02e02d77a1f623ec9f56b24d48cb7f2915dd76cb42125ed" [label="/bin/sh -c apk add --update --no-cache openssl-dev snappy-dev" shape="box"];
  "sha256:4f6b01bf5fc1538b37aee2a03d1604cf0e986c331f903ae909be4341c36bd62e" [label="/bin/sh -c cd /tmp && wget https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2" shape="box"];
  "sha256:b3bf38215d05213e370b1b2c113949211626c6b31aa783d08634540fb18a8974" [label="/bin/sh -c apk add --update --no-cache ncurses         && apk add --virtual=deps --update --no-cache ncurses-dev musl-dev g++ make zlib-dev         && cd /tmp/ && tar xjvf samtools-${version}.tar.bz2         && cd /tmp/samtools-${version} && make         && mv /tmp/samtools-${version}/samtools /usr/bin         && rm -rf /var/cache/apk/* /tmp/*         && apk del deps" shape="box"];
  "sha256:952a53c052e7a69bd479441006219be7b99e63b0819f15ba63af01dc671c55e8" [label="/bin/sh -c apk add --update --no-cache build-base zlib-dev perl boost boost-dev" shape="box"];
  "sha256:d22a36fe491246c5e7f32dc5e3f47e2015256f6d25370734833355878d7e9dd8" [label="sha256:d22a36fe491246c5e7f32dc5e3f47e2015256f6d25370734833355878d7e9dd8" shape="plaintext"];
  "sha256:4c980b24cf2c6b93ed8ca123f25c1a6a22e03e925fbdd7b32f6c871181eaf84a" -> "sha256:3bb6a77f55b993f6a02e02d77a1f623ec9f56b24d48cb7f2915dd76cb42125ed" [label=""];
  "sha256:3bb6a77f55b993f6a02e02d77a1f623ec9f56b24d48cb7f2915dd76cb42125ed" -> "sha256:4f6b01bf5fc1538b37aee2a03d1604cf0e986c331f903ae909be4341c36bd62e" [label=""];
  "sha256:4f6b01bf5fc1538b37aee2a03d1604cf0e986c331f903ae909be4341c36bd62e" -> "sha256:b3bf38215d05213e370b1b2c113949211626c6b31aa783d08634540fb18a8974" [label=""];
  "sha256:b3bf38215d05213e370b1b2c113949211626c6b31aa783d08634540fb18a8974" -> "sha256:952a53c052e7a69bd479441006219be7b99e63b0819f15ba63af01dc671c55e8" [label=""];
  "sha256:952a53c052e7a69bd479441006219be7b99e63b0819f15ba63af01dc671c55e8" -> "sha256:d22a36fe491246c5e7f32dc5e3f47e2015256f6d25370734833355878d7e9dd8" [label=""];
}

