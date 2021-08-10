[app/sources/179796552.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f52e2748ac874dfcb7cf0a9c1cf9487754d3c8846f7bd217c6f2b3514c05faa6" [label="/bin/sh -c mkdir -p /config" shape="box"];
  "sha256:3d07134e172fa16b5978aa2ac19864b686d1ccd1bad769f6a7df9e969fb92478" [label="/bin/sh -c adduser -S -D -H -h /app appuser" shape="box"];
  "sha256:62744c0e6a9c9a0da084c84e802f77c1420b20d7b51c44a0fa33b988d76c14bd" [label="local://context" shape="ellipse"];
  "sha256:293e168f4d6d506660881083b332605ffaa657e8a02823fcb548edebfa524898" [label="copy{src=/entrypoint.sh, dest=/app/entrypoint.sh}" shape="note"];
  "sha256:aa8ecd1068d48c8e122f3202cb24b8344c341b7c543e8be34685c253608ef8b3" [label="/bin/sh -c chmod +x /app/entrypoint.sh" shape="box"];
  "sha256:080877de67c1e21017dbcb462052ffb171030d33dd07dc5990c5aa4715e436ed" [label="mkdir{path=/app}" shape="note"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:1773e519dbff4ec0db585d3f3b3033daac39db33998e39d06aa166e18b1a2b9b" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:9bcc266be2d77785d016567640c3a414e6c1f4fc43b5cc501b4422b81206167c" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:2894fbdc27f2736097f6e7517283d977240e983bb92dd30fbd09cbcfd75c2f8c" [label="mkdir{path=/build}" shape="note"];
  "sha256:c88eab2fc60af758faaf27bc7f2eef26484f9bb4fd944807c24ce211496d2ba9" [label="/bin/sh -c apk add git gcc musl-dev" shape="box"];
  "sha256:2919128ed2c753f797ba11cac31a902dc7909423d2ef92b92f835ed862e5aa4e" [label="/bin/sh -c go build -o ipe ./cmd" shape="box"];
  "sha256:a0967d5e3b53ffe957ed5634df509cdda72e50d0a120b988ccf85992cca7302d" [label="copy{src=/build/ipe, dest=/app/}" shape="note"];
  "sha256:33f486aba818e3219c9132966ea3fc7b77f2a07a9752258ee54e30ca53a02451" [label="copy{src=/build/config-example.yml, dest=/app/config-example.yml}" shape="note"];
  "sha256:48a9786d69ac9083dad96de7fdba5f38d8b07d774572e350d23f5fd5b32c537c" [label="sha256:48a9786d69ac9083dad96de7fdba5f38d8b07d774572e350d23f5fd5b32c537c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f52e2748ac874dfcb7cf0a9c1cf9487754d3c8846f7bd217c6f2b3514c05faa6" [label=""];
  "sha256:f52e2748ac874dfcb7cf0a9c1cf9487754d3c8846f7bd217c6f2b3514c05faa6" -> "sha256:3d07134e172fa16b5978aa2ac19864b686d1ccd1bad769f6a7df9e969fb92478" [label=""];
  "sha256:3d07134e172fa16b5978aa2ac19864b686d1ccd1bad769f6a7df9e969fb92478" -> "sha256:293e168f4d6d506660881083b332605ffaa657e8a02823fcb548edebfa524898" [label=""];
  "sha256:62744c0e6a9c9a0da084c84e802f77c1420b20d7b51c44a0fa33b988d76c14bd" -> "sha256:293e168f4d6d506660881083b332605ffaa657e8a02823fcb548edebfa524898" [label=""];
  "sha256:293e168f4d6d506660881083b332605ffaa657e8a02823fcb548edebfa524898" -> "sha256:aa8ecd1068d48c8e122f3202cb24b8344c341b7c543e8be34685c253608ef8b3" [label=""];
  "sha256:aa8ecd1068d48c8e122f3202cb24b8344c341b7c543e8be34685c253608ef8b3" -> "sha256:080877de67c1e21017dbcb462052ffb171030d33dd07dc5990c5aa4715e436ed" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:1773e519dbff4ec0db585d3f3b3033daac39db33998e39d06aa166e18b1a2b9b" [label=""];
  "sha256:1773e519dbff4ec0db585d3f3b3033daac39db33998e39d06aa166e18b1a2b9b" -> "sha256:9bcc266be2d77785d016567640c3a414e6c1f4fc43b5cc501b4422b81206167c" [label=""];
  "sha256:62744c0e6a9c9a0da084c84e802f77c1420b20d7b51c44a0fa33b988d76c14bd" -> "sha256:9bcc266be2d77785d016567640c3a414e6c1f4fc43b5cc501b4422b81206167c" [label=""];
  "sha256:9bcc266be2d77785d016567640c3a414e6c1f4fc43b5cc501b4422b81206167c" -> "sha256:2894fbdc27f2736097f6e7517283d977240e983bb92dd30fbd09cbcfd75c2f8c" [label=""];
  "sha256:2894fbdc27f2736097f6e7517283d977240e983bb92dd30fbd09cbcfd75c2f8c" -> "sha256:c88eab2fc60af758faaf27bc7f2eef26484f9bb4fd944807c24ce211496d2ba9" [label=""];
  "sha256:c88eab2fc60af758faaf27bc7f2eef26484f9bb4fd944807c24ce211496d2ba9" -> "sha256:2919128ed2c753f797ba11cac31a902dc7909423d2ef92b92f835ed862e5aa4e" [label=""];
  "sha256:080877de67c1e21017dbcb462052ffb171030d33dd07dc5990c5aa4715e436ed" -> "sha256:a0967d5e3b53ffe957ed5634df509cdda72e50d0a120b988ccf85992cca7302d" [label=""];
  "sha256:2919128ed2c753f797ba11cac31a902dc7909423d2ef92b92f835ed862e5aa4e" -> "sha256:a0967d5e3b53ffe957ed5634df509cdda72e50d0a120b988ccf85992cca7302d" [label=""];
  "sha256:a0967d5e3b53ffe957ed5634df509cdda72e50d0a120b988ccf85992cca7302d" -> "sha256:33f486aba818e3219c9132966ea3fc7b77f2a07a9752258ee54e30ca53a02451" [label=""];
  "sha256:2919128ed2c753f797ba11cac31a902dc7909423d2ef92b92f835ed862e5aa4e" -> "sha256:33f486aba818e3219c9132966ea3fc7b77f2a07a9752258ee54e30ca53a02451" [label=""];
  "sha256:33f486aba818e3219c9132966ea3fc7b77f2a07a9752258ee54e30ca53a02451" -> "sha256:48a9786d69ac9083dad96de7fdba5f38d8b07d774572e350d23f5fd5b32c537c" [label=""];
}

