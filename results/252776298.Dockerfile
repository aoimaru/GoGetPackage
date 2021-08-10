[app/sources/252776298.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5f08b523da37450bdf0ca769a003937fb80e08dc40f44d4e8e81784498573f27" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:0ef30467270a0d1a7a35df88b4d9a75b44d6618df0a0cc1e614285e717c29eaf" [label="local://context" shape="ellipse"];
  "sha256:9221fc48f6ac9486930e1812be7435b99c0beb42f569c343955d984df6f666ec" [label="copy{src=/package.json, dest=/usr/src/}" shape="note"];
  "sha256:75809386b081fc999e68fe41f6af25fe5c1dd30478afb9706b842c4b4377adca" [label="copy{src=/yarn.lock, dest=/usr/src/}" shape="note"];
  "sha256:d0fec0b440283801333cf5c9637de26850e1663bdcd1d04fdeb892f3fa0f4d58" [label="/bin/sh -c yarn && yarn cache clean" shape="box"];
  "sha256:1e6f4219bd4afa2bc876c50c890cc5b4aaa8f82ae977c9e3bbb25557e54f8c77" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:4c0a494a922c9ecc257e5cfac32b8bd91f6ff3917adfa464e1ccb5651b848bfd" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:807a9913d00cb597f02de3d30b918143b9b5057576a1ad57b016ca11af1e0f99" [label="sha256:807a9913d00cb597f02de3d30b918143b9b5057576a1ad57b016ca11af1e0f99" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" [label=""];
  "sha256:5e395294493f602936c389745e8c2b446e68cc3f8e3a9284e87126919164af7a" -> "sha256:5f08b523da37450bdf0ca769a003937fb80e08dc40f44d4e8e81784498573f27" [label=""];
  "sha256:5f08b523da37450bdf0ca769a003937fb80e08dc40f44d4e8e81784498573f27" -> "sha256:9221fc48f6ac9486930e1812be7435b99c0beb42f569c343955d984df6f666ec" [label=""];
  "sha256:0ef30467270a0d1a7a35df88b4d9a75b44d6618df0a0cc1e614285e717c29eaf" -> "sha256:9221fc48f6ac9486930e1812be7435b99c0beb42f569c343955d984df6f666ec" [label=""];
  "sha256:9221fc48f6ac9486930e1812be7435b99c0beb42f569c343955d984df6f666ec" -> "sha256:75809386b081fc999e68fe41f6af25fe5c1dd30478afb9706b842c4b4377adca" [label=""];
  "sha256:0ef30467270a0d1a7a35df88b4d9a75b44d6618df0a0cc1e614285e717c29eaf" -> "sha256:75809386b081fc999e68fe41f6af25fe5c1dd30478afb9706b842c4b4377adca" [label=""];
  "sha256:75809386b081fc999e68fe41f6af25fe5c1dd30478afb9706b842c4b4377adca" -> "sha256:d0fec0b440283801333cf5c9637de26850e1663bdcd1d04fdeb892f3fa0f4d58" [label=""];
  "sha256:d0fec0b440283801333cf5c9637de26850e1663bdcd1d04fdeb892f3fa0f4d58" -> "sha256:1e6f4219bd4afa2bc876c50c890cc5b4aaa8f82ae977c9e3bbb25557e54f8c77" [label=""];
  "sha256:1e6f4219bd4afa2bc876c50c890cc5b4aaa8f82ae977c9e3bbb25557e54f8c77" -> "sha256:4c0a494a922c9ecc257e5cfac32b8bd91f6ff3917adfa464e1ccb5651b848bfd" [label=""];
  "sha256:0ef30467270a0d1a7a35df88b4d9a75b44d6618df0a0cc1e614285e717c29eaf" -> "sha256:4c0a494a922c9ecc257e5cfac32b8bd91f6ff3917adfa464e1ccb5651b848bfd" [label=""];
  "sha256:4c0a494a922c9ecc257e5cfac32b8bd91f6ff3917adfa464e1ccb5651b848bfd" -> "sha256:807a9913d00cb597f02de3d30b918143b9b5057576a1ad57b016ca11af1e0f99" [label=""];
}

