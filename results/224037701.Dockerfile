[app/sources/224037701.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:515842aac16c7207e784365cab02f159948e3dbf66acff28f97499e82f5dbfe3" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --update ca-certificates &&     apk add gnutls-dev zlib-dev yasm-dev lame-dev libogg-dev     x264-dev libvpx-dev libvorbis-dev x265-dev freetype-dev     libass-dev libwebp-dev rtmpdump-dev libtheora-dev opus-dev &&     apk add --no-cache --virtual .build-dependencies     build-base coreutils tar bzip2 x264 gnutls nasm &&     wget -O- http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.gz | tar xzC /tmp &&     cd /tmp/ffmpeg-${FFMPEG_VERSION} &&     ./configure --bindir=\"/usr/bin\"                 --enable-version3                 --enable-gpl                 --enable-nonfree                 --enable-small                 --enable-libmp3lame                 --enable-libx264                 --enable-libx265                 --enable-libvpx                 --enable-libtheora                 --enable-libvorbis                 --enable-libopus                 --enable-libass                 --enable-libwebp                 --enable-librtmp                 --enable-postproc                 --enable-avresample                 --enable-libfreetype                 --enable-gnutls                 --disable-debug &&     make &&     make install &&     make distclean &&     cd $OLDPWD &&     rm -rf /tmp/ffmpeg-${FFMPEG_VERSION} &&     apk del --purge .build-dependencies &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9e1d28e18525916f4e768d25d9556aed742656fa2417e12ca7787839b7bfa9e9" [label="sha256:9e1d28e18525916f4e768d25d9556aed742656fa2417e12ca7787839b7bfa9e9" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:515842aac16c7207e784365cab02f159948e3dbf66acff28f97499e82f5dbfe3" [label=""];
  "sha256:515842aac16c7207e784365cab02f159948e3dbf66acff28f97499e82f5dbfe3" -> "sha256:9e1d28e18525916f4e768d25d9556aed742656fa2417e12ca7787839b7bfa9e9" [label=""];
}
