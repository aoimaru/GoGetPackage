[app/sources/252019842.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:c3fd01660b80b3607d26791702fd55221aa39a530cc64f826a1e276b3665a80c" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:ab1ce99a45bb33c51163f1db691296602c3471d1e428f9671e2ba432ce24f15c" [label="/bin/sh -c apk add --no-cache --virtual .build-dependencies build-base curl &&     apk add --no-cache inotify-tools &&     apk add --no-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing/ ocaml &&     curl -L https://github.com/bcpierce00/unison/archive/$UNISON_VERSION.tar.gz | tar zxv -C /tmp &&     cd /tmp/unison-${UNISON_VERSION} &&     sed -i -e 's/GLIBC_SUPPORT_INOTIFY 0/GLIBC_SUPPORT_INOTIFY 1/' src/fsmonitor/linux/inotify_stubs.c &&     make UISTYLE=text NATIVE=true STATIC=true &&     cp src/unison src/unison-fsmonitor /usr/local/bin &&     apk del .build-dependencies ocaml &&     rm -rf /tmp/unison-${UNISON_VERSION}" shape="box"];
  "sha256:c5ef90a58e9283f9865c965ca680c339cd7a68167aedaf9ec20bc3a651ed131b" [label="local://context" shape="ellipse"];
  "sha256:9853b942d90589b78dc89838215a2effee9c75e6a178cfa7bf57089d3009a174" [label="copy{src=/sync.sh, dest=/usr/local/bin/bg-sync}" shape="note"];
  "sha256:95c403563ee4523989284a4ebc07f13b30a589dfacb1b074e3dcbba0ae0038b1" [label="/bin/sh -c chmod +x /usr/local/bin/bg-sync" shape="box"];
  "sha256:42d57e06bf0743222e41fb47f2777bf374166fe1ef80a35ba1dce069a2d52bec" [label="sha256:42d57e06bf0743222e41fb47f2777bf374166fe1ef80a35ba1dce069a2d52bec" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:c3fd01660b80b3607d26791702fd55221aa39a530cc64f826a1e276b3665a80c" [label=""];
  "sha256:c3fd01660b80b3607d26791702fd55221aa39a530cc64f826a1e276b3665a80c" -> "sha256:ab1ce99a45bb33c51163f1db691296602c3471d1e428f9671e2ba432ce24f15c" [label=""];
  "sha256:ab1ce99a45bb33c51163f1db691296602c3471d1e428f9671e2ba432ce24f15c" -> "sha256:9853b942d90589b78dc89838215a2effee9c75e6a178cfa7bf57089d3009a174" [label=""];
  "sha256:c5ef90a58e9283f9865c965ca680c339cd7a68167aedaf9ec20bc3a651ed131b" -> "sha256:9853b942d90589b78dc89838215a2effee9c75e6a178cfa7bf57089d3009a174" [label=""];
  "sha256:9853b942d90589b78dc89838215a2effee9c75e6a178cfa7bf57089d3009a174" -> "sha256:95c403563ee4523989284a4ebc07f13b30a589dfacb1b074e3dcbba0ae0038b1" [label=""];
  "sha256:95c403563ee4523989284a4ebc07f13b30a589dfacb1b074e3dcbba0ae0038b1" -> "sha256:42d57e06bf0743222e41fb47f2777bf374166fe1ef80a35ba1dce069a2d52bec" [label=""];
}

