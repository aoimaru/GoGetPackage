[app/sources/250821049.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:4c64c247c9925d4986498062a17a26a4b4b91610eab93bf455ed79921bd9bb22" [label="/bin/sh -c apk update     && apk add --update --no-cache         musl build-base python3 python3-dev libressl-dev libffi-dev         boost boost-dev boost-python3 file curl tar bash     && curl -SL https://github.com/arvidn/libtorrent/releases/download/libtorrent-${libtorrent_version//./_}/libtorrent-rasterbar-${libtorrent_version}.tar.gz -o libtorrent-${libtorrent_version}.tar.gz     && tar zxvpf libtorrent-${libtorrent_version}.tar.gz     && cd libtorrent-rasterbar-${libtorrent_version}     && ./configure --prefix=/usr --enable-debug=no --enable-python-binding --with-boost-system=boost_system     && make -j\"$(nproc)\" install     && ldconfig /usr/lib     && cd ..     && rm -rf libtorrent-rasterbar-${libtorrent_version}     && rm -f libtorrent-${libtorrent_version}.tar.gz     && apk del --purge         build-base python3-dev libressl-dev libffi-dev python boost-dev         file curl     && rm /var/cache/apk/*" shape="box"];
  "sha256:2ae3447b3904270e78c60a0ad66587a8ad8346eb0b0f0c325272efc4572663aa" [label="sha256:2ae3447b3904270e78c60a0ad66587a8ad8346eb0b0f0c325272efc4572663aa" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4c64c247c9925d4986498062a17a26a4b4b91610eab93bf455ed79921bd9bb22" [label=""];
  "sha256:4c64c247c9925d4986498062a17a26a4b4b91610eab93bf455ed79921bd9bb22" -> "sha256:2ae3447b3904270e78c60a0ad66587a8ad8346eb0b0f0c325272efc4572663aa" [label=""];
}

