[app/sources/316787161.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:e6d9251622caeb4b9923560e24f1885249fe414611cbc8309c385239ab24324e" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:bf9ee50c6027bb2e0753a3b87c0d41b87288480d040dcb18401cf142687b0e9f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ada23004543c5de2b78c32ce0480a19cf616a911794f406678dd53b56dacb899" [label="local://context" shape="ellipse"];
  "sha256:0531b6b2bab18669dbd8ad3fe83f9b1b7087a4f41adb449c44e2321b182a1a0f" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:3567eccf1c1c6c0eb7308bb0ef9d115268068536fc301270b83902c7135d5db5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:23b606764a7250df3ffdecf43ec503b8ab73d29bcbcdf65929fe447f8417f963" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:a50dd05d5ff70d344a7121eff5f1809fd2326ecdcc77e601322cde1e58a89bf6" [label="sha256:a50dd05d5ff70d344a7121eff5f1809fd2326ecdcc77e601322cde1e58a89bf6" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:e6d9251622caeb4b9923560e24f1885249fe414611cbc8309c385239ab24324e" [label=""];
  "sha256:e6d9251622caeb4b9923560e24f1885249fe414611cbc8309c385239ab24324e" -> "sha256:bf9ee50c6027bb2e0753a3b87c0d41b87288480d040dcb18401cf142687b0e9f" [label=""];
  "sha256:bf9ee50c6027bb2e0753a3b87c0d41b87288480d040dcb18401cf142687b0e9f" -> "sha256:0531b6b2bab18669dbd8ad3fe83f9b1b7087a4f41adb449c44e2321b182a1a0f" [label=""];
  "sha256:ada23004543c5de2b78c32ce0480a19cf616a911794f406678dd53b56dacb899" -> "sha256:0531b6b2bab18669dbd8ad3fe83f9b1b7087a4f41adb449c44e2321b182a1a0f" [label=""];
  "sha256:0531b6b2bab18669dbd8ad3fe83f9b1b7087a4f41adb449c44e2321b182a1a0f" -> "sha256:3567eccf1c1c6c0eb7308bb0ef9d115268068536fc301270b83902c7135d5db5" [label=""];
  "sha256:3567eccf1c1c6c0eb7308bb0ef9d115268068536fc301270b83902c7135d5db5" -> "sha256:23b606764a7250df3ffdecf43ec503b8ab73d29bcbcdf65929fe447f8417f963" [label=""];
  "sha256:ada23004543c5de2b78c32ce0480a19cf616a911794f406678dd53b56dacb899" -> "sha256:23b606764a7250df3ffdecf43ec503b8ab73d29bcbcdf65929fe447f8417f963" [label=""];
  "sha256:23b606764a7250df3ffdecf43ec503b8ab73d29bcbcdf65929fe447f8417f963" -> "sha256:a50dd05d5ff70d344a7121eff5f1809fd2326ecdcc77e601322cde1e58a89bf6" [label=""];
}

