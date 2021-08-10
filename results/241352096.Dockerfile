[app/sources/241352096.Dockerfile]
digraph {
  "sha256:9d808acee13b22e0ea078fde651741a32786f69426cbd591d17fabb65da851de" [label="docker-image://docker.io/library/node:8.6.0-alpine" shape="ellipse"];
  "sha256:75967ad224c3477624995715bbcf0e4b5e161e50019ed228a71d55a95287e019" [label="/bin/sh -c echo \"http://dl-cdn.alpinelinux.org/alpine/v3.5/community\" >> /etc/apk/repositories &&     apk update && apk upgrade" shape="box"];
  "sha256:cb7463b8e48901bc1143835ceaea95c417a238f12b14c638ccdb1c97927aa16a" [label="/bin/sh -c apk add --no-cache make gcc g++ python git openssh wget autoconf automake build-base ca-certificates" shape="box"];
  "sha256:b5a6abc8d4d602f8e36d7a0fc0586e8ed4176fa0e03990836de6c355e5c07fa1" [label="/bin/sh -c apk add --no-cache     zlib libxml2 libxslt glib libexif lcms2 fftw     giflib libpng libwebp orc tiff poppler-glib librsvg     libtool nasm zlib-dev libxml2-dev libxslt-dev glib-dev     libexif-dev lcms2-dev fftw-dev giflib-dev libpng-dev libwebp-dev orc-dev tiff-dev     poppler-dev librsvg-dev" shape="box"];
  "sha256:96cd22c4f3dcb2c3e8e6f408a3d366f7efbd33ead0772c64269a61ce6b60c203" [label="/bin/sh -c wget -O- https://github.com/libvips/libvips/releases/download/v${LIBVIPS_VERSION_MAJOR_MINOR}.${LIBVIPS_VERSION_PATCH}/vips-${LIBVIPS_VERSION_MAJOR_MINOR}.${LIBVIPS_VERSION_PATCH}.tar.gz | tar xzC /tmp" shape="box"];
  "sha256:6b7501a6e41b78c0951c68e2f1b2eeb34e88d567fd59049b503fb4e098cfce40" [label="/bin/sh -c cd /tmp/vips-${LIBVIPS_VERSION_MAJOR_MINOR}.${LIBVIPS_VERSION_PATCH} &&     ./configure --prefix=/usr                 --without-python                 --without-gsf                 --enable-debug=no                 --disable-dependency-tracking                 --disable-static                 --enable-silent-rules &&     make -s install-strip" shape="box"];
  "sha256:166548391a2a2f29eeb3ad3834d1831954b61b76f7ff05c1d2a3d24ca29dfe4e" [label="/bin/sh -c rm -rf /tmp/vips-${LIBVIPS_VERSION_MAJOR_MINOR}.${LIBVIPS_VERSION_PATCH} &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:39e16cfdcb1fbb9d277cbe5906d63b5d365b8d087a538b4b23e99753a9595722" [label="/bin/sh -c apk add --no-cache ttf-freefont fontconfig font-noto" shape="box"];
  "sha256:2856c626d5b054e197b92587d34569cbc66c379db94cdf27cf98071a3944433b" [label="/bin/sh -c fc-cache -fv" shape="box"];
  "sha256:0c090d930d453099723c5be7f0325d9f70d3c462495b71f72df1e00420dd31e5" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:ab278baa3f126fe59e832f67ffaa29c382d32d04cff43ba4d6a69c025e7c0cc8" [label="mkdir{path=/app}" shape="note"];
  "sha256:a4c9e5b1a4b0c112034fcbf2a5d50c73e98720bf76244692918fb014e0a8baad" [label="local://context" shape="ellipse"];
  "sha256:876116c1243bc259ca526359c6a1c8be93a657dde935c056087b89a504831967" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:18120c7bc6960040300dd04df1585c12b634fa93a4e75bf1cf9718ca73b314fa" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e09f79d21c52a57bd6920a738cc2a72b341682e9c784dbfed59795c41cd0586a" [label="copy{src=/src, dest=/app/}" shape="note"];
  "sha256:5c2dcfcd5eca7ed043ddb608aa5e44386174c146001ee062f28433572f510241" [label="sha256:5c2dcfcd5eca7ed043ddb608aa5e44386174c146001ee062f28433572f510241" shape="plaintext"];
  "sha256:9d808acee13b22e0ea078fde651741a32786f69426cbd591d17fabb65da851de" -> "sha256:75967ad224c3477624995715bbcf0e4b5e161e50019ed228a71d55a95287e019" [label=""];
  "sha256:75967ad224c3477624995715bbcf0e4b5e161e50019ed228a71d55a95287e019" -> "sha256:cb7463b8e48901bc1143835ceaea95c417a238f12b14c638ccdb1c97927aa16a" [label=""];
  "sha256:cb7463b8e48901bc1143835ceaea95c417a238f12b14c638ccdb1c97927aa16a" -> "sha256:b5a6abc8d4d602f8e36d7a0fc0586e8ed4176fa0e03990836de6c355e5c07fa1" [label=""];
  "sha256:b5a6abc8d4d602f8e36d7a0fc0586e8ed4176fa0e03990836de6c355e5c07fa1" -> "sha256:96cd22c4f3dcb2c3e8e6f408a3d366f7efbd33ead0772c64269a61ce6b60c203" [label=""];
  "sha256:96cd22c4f3dcb2c3e8e6f408a3d366f7efbd33ead0772c64269a61ce6b60c203" -> "sha256:6b7501a6e41b78c0951c68e2f1b2eeb34e88d567fd59049b503fb4e098cfce40" [label=""];
  "sha256:6b7501a6e41b78c0951c68e2f1b2eeb34e88d567fd59049b503fb4e098cfce40" -> "sha256:166548391a2a2f29eeb3ad3834d1831954b61b76f7ff05c1d2a3d24ca29dfe4e" [label=""];
  "sha256:166548391a2a2f29eeb3ad3834d1831954b61b76f7ff05c1d2a3d24ca29dfe4e" -> "sha256:39e16cfdcb1fbb9d277cbe5906d63b5d365b8d087a538b4b23e99753a9595722" [label=""];
  "sha256:39e16cfdcb1fbb9d277cbe5906d63b5d365b8d087a538b4b23e99753a9595722" -> "sha256:2856c626d5b054e197b92587d34569cbc66c379db94cdf27cf98071a3944433b" [label=""];
  "sha256:2856c626d5b054e197b92587d34569cbc66c379db94cdf27cf98071a3944433b" -> "sha256:0c090d930d453099723c5be7f0325d9f70d3c462495b71f72df1e00420dd31e5" [label=""];
  "sha256:0c090d930d453099723c5be7f0325d9f70d3c462495b71f72df1e00420dd31e5" -> "sha256:ab278baa3f126fe59e832f67ffaa29c382d32d04cff43ba4d6a69c025e7c0cc8" [label=""];
  "sha256:ab278baa3f126fe59e832f67ffaa29c382d32d04cff43ba4d6a69c025e7c0cc8" -> "sha256:876116c1243bc259ca526359c6a1c8be93a657dde935c056087b89a504831967" [label=""];
  "sha256:a4c9e5b1a4b0c112034fcbf2a5d50c73e98720bf76244692918fb014e0a8baad" -> "sha256:876116c1243bc259ca526359c6a1c8be93a657dde935c056087b89a504831967" [label=""];
  "sha256:876116c1243bc259ca526359c6a1c8be93a657dde935c056087b89a504831967" -> "sha256:18120c7bc6960040300dd04df1585c12b634fa93a4e75bf1cf9718ca73b314fa" [label=""];
  "sha256:18120c7bc6960040300dd04df1585c12b634fa93a4e75bf1cf9718ca73b314fa" -> "sha256:e09f79d21c52a57bd6920a738cc2a72b341682e9c784dbfed59795c41cd0586a" [label=""];
  "sha256:a4c9e5b1a4b0c112034fcbf2a5d50c73e98720bf76244692918fb014e0a8baad" -> "sha256:e09f79d21c52a57bd6920a738cc2a72b341682e9c784dbfed59795c41cd0586a" [label=""];
  "sha256:e09f79d21c52a57bd6920a738cc2a72b341682e9c784dbfed59795c41cd0586a" -> "sha256:5c2dcfcd5eca7ed043ddb608aa5e44386174c146001ee062f28433572f510241" [label=""];
}

