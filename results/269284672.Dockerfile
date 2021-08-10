[app/sources/269284672.Dockerfile]
digraph {
  "sha256:c009b5e253d35b51ed804b75c5a6282d5204a42d8fb86679a0a9897ca9de0151" [label="docker-image://docker.io/library/php:7.2-alpine3.7" shape="ellipse"];
  "sha256:4238d37e8fbdd31588d2044849f4cf4284bf8cfb1ce25964ad5a75a218ef61e0" [label="local://context" shape="ellipse"];
  "sha256:746c3f812a68de05f1a596efe84a1a2b8a7fe1defc417256dd85399e897b434e" [label="copy{src=/source.list, dest=/etc/apk/repositories}" shape="note"];
  "sha256:e6ab5db45c369e90ecdcdbe7f2b130655886f9465e3a3fd7c338beb977016093" [label="/bin/sh -c apk update && apk --no-cache add freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev supervisor  && docker-php-ext-configure gd   --with-gd   --with-freetype-dir=/usr/include/   --with-png-dir=/usr/include/   --with-jpeg-dir=/usr/include/   --with-zlib-dir=/usr  && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1)  && docker-php-ext-install -j${NPROC} gd zip pdo_mysql  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev" shape="box"];
  "sha256:d037406a2365ed9e901a11dfdbe0dabf718de5667f7505d9217c95fe62962a55" [label="/bin/sh -c rm /var/cache/apk/*     && mkdir -p /var/www" shape="box"];
  "sha256:cf1ba9692638ece2b1e9733634c1445897d82ffdd2154260a3cdb6b2447a2bd0" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:4f9e9e0a9957cb3dd87a5892c1caaa169cbc280489d3f0d3e43b024b7c8eb5ae" [label="sha256:4f9e9e0a9957cb3dd87a5892c1caaa169cbc280489d3f0d3e43b024b7c8eb5ae" shape="plaintext"];
  "sha256:c009b5e253d35b51ed804b75c5a6282d5204a42d8fb86679a0a9897ca9de0151" -> "sha256:746c3f812a68de05f1a596efe84a1a2b8a7fe1defc417256dd85399e897b434e" [label=""];
  "sha256:4238d37e8fbdd31588d2044849f4cf4284bf8cfb1ce25964ad5a75a218ef61e0" -> "sha256:746c3f812a68de05f1a596efe84a1a2b8a7fe1defc417256dd85399e897b434e" [label=""];
  "sha256:746c3f812a68de05f1a596efe84a1a2b8a7fe1defc417256dd85399e897b434e" -> "sha256:e6ab5db45c369e90ecdcdbe7f2b130655886f9465e3a3fd7c338beb977016093" [label=""];
  "sha256:e6ab5db45c369e90ecdcdbe7f2b130655886f9465e3a3fd7c338beb977016093" -> "sha256:d037406a2365ed9e901a11dfdbe0dabf718de5667f7505d9217c95fe62962a55" [label=""];
  "sha256:d037406a2365ed9e901a11dfdbe0dabf718de5667f7505d9217c95fe62962a55" -> "sha256:cf1ba9692638ece2b1e9733634c1445897d82ffdd2154260a3cdb6b2447a2bd0" [label=""];
  "sha256:4238d37e8fbdd31588d2044849f4cf4284bf8cfb1ce25964ad5a75a218ef61e0" -> "sha256:cf1ba9692638ece2b1e9733634c1445897d82ffdd2154260a3cdb6b2447a2bd0" [label=""];
  "sha256:cf1ba9692638ece2b1e9733634c1445897d82ffdd2154260a3cdb6b2447a2bd0" -> "sha256:4f9e9e0a9957cb3dd87a5892c1caaa169cbc280489d3f0d3e43b024b7c8eb5ae" [label=""];
}

