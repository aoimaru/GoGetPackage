[app/sources/361563004.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:37e7dee04774dc59d1065408695fd39b69258a1b182b1aaeea0662bf929d7372" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cmake         make         gcc         libz-dev         zlib1g-dev         libpng-dev         libsdl2-dev         libvorbis-dev         libalut-dev         libmbedtls-dev         libturbojpeg0-dev         libuv1-dev         libopenal-dev         neko         curl         ca-certificates     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d30d806c968845728911f9a6d7630fde3d699a55ffcd48cce24cef20376e7ee6" [label="/bin/sh -c set -ex     && mkdir /haxe     && cd /haxe     && curl -sSL https://build.haxe.org/builds/haxe/linux64/haxe_latest.tar.gz | tar -x -z --strip-components=1 -f -     && ln -s /haxe/haxe /haxe/haxelib /usr/local/bin/     && mkdir -p `dirname \"$HAXE_STD_PATH\"`     && ln -s /haxe/std \"$HAXE_STD_PATH\"     && cd .." shape="box"];
  "sha256:356a0093f26cfa014eac7ce1aec419569c947a963465b89026096a2ac95c7ac6" [label="/bin/sh -c set -ex     && mkdir /haxelib     && haxelib setup /haxelib" shape="box"];
  "sha256:3498aaa73f1d2e8fdce779c8f2cc8d93a944815be83fc0000276fbee7bb9bf56" [label="/bin/sh -c haxelib install hashlink" shape="box"];
  "sha256:e15c755a015ba28211b07b9d980980437f7d6c39b42634ff23bc4d71f314643d" [label="local://context" shape="ellipse"];
  "sha256:df105f271d4c9d66516d5d1913509eb34c4afe3ff1fc7e8d6875406976ef3312" [label="copy{src=/, dest=/hashlink}" shape="note"];
  "sha256:b53af8a173a608de17045ba19a08594dec9956595eff47d52a5912fd602a14cb" [label="mkdir{path=/hashlink}" shape="note"];
  "sha256:ba39ebb40096bf9d4805dcf8531a190e08219038167c6183aa7a5f6218a132ed" [label="sha256:ba39ebb40096bf9d4805dcf8531a190e08219038167c6183aa7a5f6218a132ed" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:37e7dee04774dc59d1065408695fd39b69258a1b182b1aaeea0662bf929d7372" [label=""];
  "sha256:37e7dee04774dc59d1065408695fd39b69258a1b182b1aaeea0662bf929d7372" -> "sha256:d30d806c968845728911f9a6d7630fde3d699a55ffcd48cce24cef20376e7ee6" [label=""];
  "sha256:d30d806c968845728911f9a6d7630fde3d699a55ffcd48cce24cef20376e7ee6" -> "sha256:356a0093f26cfa014eac7ce1aec419569c947a963465b89026096a2ac95c7ac6" [label=""];
  "sha256:356a0093f26cfa014eac7ce1aec419569c947a963465b89026096a2ac95c7ac6" -> "sha256:3498aaa73f1d2e8fdce779c8f2cc8d93a944815be83fc0000276fbee7bb9bf56" [label=""];
  "sha256:3498aaa73f1d2e8fdce779c8f2cc8d93a944815be83fc0000276fbee7bb9bf56" -> "sha256:df105f271d4c9d66516d5d1913509eb34c4afe3ff1fc7e8d6875406976ef3312" [label=""];
  "sha256:e15c755a015ba28211b07b9d980980437f7d6c39b42634ff23bc4d71f314643d" -> "sha256:df105f271d4c9d66516d5d1913509eb34c4afe3ff1fc7e8d6875406976ef3312" [label=""];
  "sha256:df105f271d4c9d66516d5d1913509eb34c4afe3ff1fc7e8d6875406976ef3312" -> "sha256:b53af8a173a608de17045ba19a08594dec9956595eff47d52a5912fd602a14cb" [label=""];
  "sha256:b53af8a173a608de17045ba19a08594dec9956595eff47d52a5912fd602a14cb" -> "sha256:ba39ebb40096bf9d4805dcf8531a190e08219038167c6183aa7a5f6218a132ed" [label=""];
}

