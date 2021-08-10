[app/sources/310469908.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:c6c3e68fa25a503864fad3b01a9a4a7e13c0f4beb9a5373bf42e6eaa7a95452c" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:1c76d180553b835f8baf8de0aa038e3eb97caa907c1985ce1605bfd50b8a9086" [label="local://context" shape="ellipse"];
  "sha256:11c9e0567135768df842c6314e606a5c35a703da1126d2c5cd6e8a76712c7edd" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:4cb6e8a649ef77956d3bf6dafa456ecc8a2917788b8cf626d58247130e574e67" [label="/bin/sh -c apk add --no-cache tini && npm install --production" shape="box"];
  "sha256:a1d81ad3ae7d0b99d68a610686b906b1925e674590be93403bce2888a38c7cad" [label="sha256:a1d81ad3ae7d0b99d68a610686b906b1925e674590be93403bce2888a38c7cad" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:c6c3e68fa25a503864fad3b01a9a4a7e13c0f4beb9a5373bf42e6eaa7a95452c" [label=""];
  "sha256:c6c3e68fa25a503864fad3b01a9a4a7e13c0f4beb9a5373bf42e6eaa7a95452c" -> "sha256:11c9e0567135768df842c6314e606a5c35a703da1126d2c5cd6e8a76712c7edd" [label=""];
  "sha256:1c76d180553b835f8baf8de0aa038e3eb97caa907c1985ce1605bfd50b8a9086" -> "sha256:11c9e0567135768df842c6314e606a5c35a703da1126d2c5cd6e8a76712c7edd" [label=""];
  "sha256:11c9e0567135768df842c6314e606a5c35a703da1126d2c5cd6e8a76712c7edd" -> "sha256:4cb6e8a649ef77956d3bf6dafa456ecc8a2917788b8cf626d58247130e574e67" [label=""];
  "sha256:4cb6e8a649ef77956d3bf6dafa456ecc8a2917788b8cf626d58247130e574e67" -> "sha256:a1d81ad3ae7d0b99d68a610686b906b1925e674590be93403bce2888a38c7cad" [label=""];
}

