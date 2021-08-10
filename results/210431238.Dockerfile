[app/sources/210431238.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:f70c0d2be1146378850673ed58bb757095d985f72a160556108c0ec29d6e1d6e" [label="/bin/sh -c set -eux; \taddgroup -S varnish; \tfor user in varnish vcache; do \t\tadduser -S -G varnish $user; \tdone" shape="box"];
  "sha256:e8a39e683409735a36cbcce6821e41a25ea4b02abf75fc9d95ce984caaa197e8" [label="/bin/sh -c apk add --no-cache --virtual .persistent-deps \t\tgcc \t\tlibc-dev \t\tlibgcc" shape="box"];
  "sha256:75a62fcfade9216c9ad3af61874cf3c125e5644d057bd7aa1435d7ab85385073" [label="local://context" shape="ellipse"];
  "sha256:c4913d0b320aaa6cb9ba1dec3c4ec750a09ac527c749090fac57a8730f301ae3" [label="copy{src=/*.patch, dest=/varnish-alpine-patches/}" shape="note"];
  "sha256:8b69e608c705c3f212a2b11562609a411a3060e2dc196d77665d97cf74c525bd" [label="/bin/sh -c set -eux; \t\tfetchDeps=' \t\tca-certificates \t\twget \t'; \tbuildDeps=\" \t\t$VMOD_BUILD_DEPS \t\tcoreutils \t\tdpkg \t\tdpkg-dev \t\tlibedit-dev \t\tlibexecinfo-dev \t\tlinux-headers \t\tncurses-dev \t\tpatch \t\tpcre-dev \t\"; \tapk add --no-cache --virtual .build-deps $fetchDeps $buildDeps; \t\twget -O varnish.tar.gz \"$VARNISH_URL\"; \t\tif [ -n \"$VARNISH_SHA256\" ]; then \t\techo \"$VARNISH_SHA256 *varnish.tar.gz\" | sha256sum -c -; \tfi; \t\tmkdir -p /usr/src/varnish; \ttar -zxf varnish.tar.gz -C /usr/src/varnish --strip-components=1; \trm varnish.tar.gz; \t\tcd /usr/src/varnish; \tfor p in /varnish-alpine-patches/*.patch; do \t\t[ -f \"$p\" ] || continue; \t\tpatch -p1 -i \"$p\"; \tdone; \tgnuArch=\"$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)\"; \t./autogen.sh; \t./configure \t\t--build=\"$gnuArch\" \t\t--without-jemalloc \t\t--with-rst2man=$(command -v true) \t\t--with-sphinx-build=$(command -v true) \t; \tmake -j \"$(nproc)\"; \tmake install; \t\tcd /; \trm -r /usr/src/varnish; \t\trunDeps=\"$( \t\tscanelf --needed --nobanner --format '%n#p' --recursive /usr/local \t\t\t| tr ',' '\\n' \t\t\t| sort -u \t\t\t| awk 'system(\"[ -e /usr/local/lib/\" $1 \" ] || [ -e /usr/local/lib/varnish/\" $1 \" ]\") == 0 { next } { print \"so:\" $1 }' \t)\"; \tapk add --no-cache --virtual .varnish-rundeps $runDeps; \t\tapk del .build-deps; \t\tvarnishd -V" shape="box"];
  "sha256:29fe6c10d1101271ff2d04d4f6e64bbc04a849d5e6f62a48305c872bd343ff52" [label="mkdir{path=/usr/local/var/varnish}" shape="note"];
  "sha256:f2432e1ea45e3a12b36a5701bf43968ad5c306c5ea05270db337f8a23325cb26" [label="/bin/sh -c chown -R varnish:varnish /usr/local/var/varnish" shape="box"];
  "sha256:c0a98d57b93004482edd588f6291de69aea05169fd5ab1f76406e3feae6e6f26" [label="copy{src=/docker-varnish-entrypoint, dest=/usr/local/bin/}" shape="note"];
  "sha256:745f9dc35610d294fef0b4ede8f26d1cf36ed952d3cf2fade0ad5d2e542fa7c8" [label="sha256:745f9dc35610d294fef0b4ede8f26d1cf36ed952d3cf2fade0ad5d2e542fa7c8" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:f70c0d2be1146378850673ed58bb757095d985f72a160556108c0ec29d6e1d6e" [label=""];
  "sha256:f70c0d2be1146378850673ed58bb757095d985f72a160556108c0ec29d6e1d6e" -> "sha256:e8a39e683409735a36cbcce6821e41a25ea4b02abf75fc9d95ce984caaa197e8" [label=""];
  "sha256:e8a39e683409735a36cbcce6821e41a25ea4b02abf75fc9d95ce984caaa197e8" -> "sha256:c4913d0b320aaa6cb9ba1dec3c4ec750a09ac527c749090fac57a8730f301ae3" [label=""];
  "sha256:75a62fcfade9216c9ad3af61874cf3c125e5644d057bd7aa1435d7ab85385073" -> "sha256:c4913d0b320aaa6cb9ba1dec3c4ec750a09ac527c749090fac57a8730f301ae3" [label=""];
  "sha256:c4913d0b320aaa6cb9ba1dec3c4ec750a09ac527c749090fac57a8730f301ae3" -> "sha256:8b69e608c705c3f212a2b11562609a411a3060e2dc196d77665d97cf74c525bd" [label=""];
  "sha256:8b69e608c705c3f212a2b11562609a411a3060e2dc196d77665d97cf74c525bd" -> "sha256:29fe6c10d1101271ff2d04d4f6e64bbc04a849d5e6f62a48305c872bd343ff52" [label=""];
  "sha256:29fe6c10d1101271ff2d04d4f6e64bbc04a849d5e6f62a48305c872bd343ff52" -> "sha256:f2432e1ea45e3a12b36a5701bf43968ad5c306c5ea05270db337f8a23325cb26" [label=""];
  "sha256:f2432e1ea45e3a12b36a5701bf43968ad5c306c5ea05270db337f8a23325cb26" -> "sha256:c0a98d57b93004482edd588f6291de69aea05169fd5ab1f76406e3feae6e6f26" [label=""];
  "sha256:75a62fcfade9216c9ad3af61874cf3c125e5644d057bd7aa1435d7ab85385073" -> "sha256:c0a98d57b93004482edd588f6291de69aea05169fd5ab1f76406e3feae6e6f26" [label=""];
  "sha256:c0a98d57b93004482edd588f6291de69aea05169fd5ab1f76406e3feae6e6f26" -> "sha256:745f9dc35610d294fef0b4ede8f26d1cf36ed952d3cf2fade0ad5d2e542fa7c8" [label=""];
}

