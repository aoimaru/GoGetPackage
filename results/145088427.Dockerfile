[app/sources/145088427.Dockerfile]
digraph {
  "sha256:b800ed5bf01a09b00510019f3b398799fceab13bcbf719dd090234cc94caee6d" [label="docker-image://docker.io/library/node:9.5-alpine" shape="ellipse"];
  "sha256:bb866946554eac1d49c7bfa40beebd0bc480e78d4ca1d25d189bd51a75f1fc5e" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:777e1fc33dc5284dfffa5bb7233d4cba3b0a71491b97dd9aad5e7654570e327a" [label="mkdir{path=/app}" shape="note"];
  "sha256:465e374ca1f921d75e750606ee1c7b6b492c9794d9e614e85baa35e5ca274c0a" [label="/bin/sh -c apk update &&     apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing vips-tools vips-dev fftw-dev gcc g++ make libc6-compat util-linux &&     apk add python &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:287240e9b13f71f1c14659313f08421c4b997d06327deb3cce02e3ea9ad9d14c" [label="local://context" shape="ellipse"];
  "sha256:ed245ee62563ce7780c5924cc56d52e34dda9e7fe89956c615e7494c30907b10" [label="copy{src=/package.json, dest=/app/},copy{src=/yarn.lock, dest=/app/},copy{src=/.env.development, dest=/app/},copy{src=/gatsby-browser.js, dest=/app/},copy{src=/gatsby-config.js, dest=/app/},copy{src=/gatsby-node.js, dest=/app/},copy{src=/gatsby-ssr.js, dest=/app/}" shape="note"];
  "sha256:ae9c91bf752f924fab6325e905e3e19a997f7fc21572dbaa5ac2f696f334e2d8" [label="copy{src=/static, dest=/app/static}" shape="note"];
  "sha256:2df010e1400a451d5bab09416e0f3a9cd0c2a0c282cf068dd90c0365b356ea10" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:a90e9af290b5b6348f8a3f626d406d2c4808dc7673e2af4cfee15a8b77ddf577" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:d089bd26cc275d22a582d8fcb114499189951908d6e3b7765db26ce0c0a60cda" [label="sha256:d089bd26cc275d22a582d8fcb114499189951908d6e3b7765db26ce0c0a60cda" shape="plaintext"];
  "sha256:b800ed5bf01a09b00510019f3b398799fceab13bcbf719dd090234cc94caee6d" -> "sha256:bb866946554eac1d49c7bfa40beebd0bc480e78d4ca1d25d189bd51a75f1fc5e" [label=""];
  "sha256:bb866946554eac1d49c7bfa40beebd0bc480e78d4ca1d25d189bd51a75f1fc5e" -> "sha256:777e1fc33dc5284dfffa5bb7233d4cba3b0a71491b97dd9aad5e7654570e327a" [label=""];
  "sha256:777e1fc33dc5284dfffa5bb7233d4cba3b0a71491b97dd9aad5e7654570e327a" -> "sha256:465e374ca1f921d75e750606ee1c7b6b492c9794d9e614e85baa35e5ca274c0a" [label=""];
  "sha256:465e374ca1f921d75e750606ee1c7b6b492c9794d9e614e85baa35e5ca274c0a" -> "sha256:ed245ee62563ce7780c5924cc56d52e34dda9e7fe89956c615e7494c30907b10" [label=""];
  "sha256:287240e9b13f71f1c14659313f08421c4b997d06327deb3cce02e3ea9ad9d14c" -> "sha256:ed245ee62563ce7780c5924cc56d52e34dda9e7fe89956c615e7494c30907b10" [label=""];
  "sha256:ed245ee62563ce7780c5924cc56d52e34dda9e7fe89956c615e7494c30907b10" -> "sha256:ae9c91bf752f924fab6325e905e3e19a997f7fc21572dbaa5ac2f696f334e2d8" [label=""];
  "sha256:287240e9b13f71f1c14659313f08421c4b997d06327deb3cce02e3ea9ad9d14c" -> "sha256:ae9c91bf752f924fab6325e905e3e19a997f7fc21572dbaa5ac2f696f334e2d8" [label=""];
  "sha256:ae9c91bf752f924fab6325e905e3e19a997f7fc21572dbaa5ac2f696f334e2d8" -> "sha256:2df010e1400a451d5bab09416e0f3a9cd0c2a0c282cf068dd90c0365b356ea10" [label=""];
  "sha256:287240e9b13f71f1c14659313f08421c4b997d06327deb3cce02e3ea9ad9d14c" -> "sha256:2df010e1400a451d5bab09416e0f3a9cd0c2a0c282cf068dd90c0365b356ea10" [label=""];
  "sha256:2df010e1400a451d5bab09416e0f3a9cd0c2a0c282cf068dd90c0365b356ea10" -> "sha256:a90e9af290b5b6348f8a3f626d406d2c4808dc7673e2af4cfee15a8b77ddf577" [label=""];
  "sha256:a90e9af290b5b6348f8a3f626d406d2c4808dc7673e2af4cfee15a8b77ddf577" -> "sha256:d089bd26cc275d22a582d8fcb114499189951908d6e3b7765db26ce0c0a60cda" [label=""];
}

