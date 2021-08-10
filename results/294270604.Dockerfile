[app/sources/294270604.Dockerfile]
digraph {
  "sha256:ac96d5e6a1d0428043ec099503fa66486656b31995d9a62bc153c900df1704d4" [label="local://context" shape="ellipse"];
  "sha256:e1b00631d968a9b1ca3057f62ffec8bba6009d72d5702b9c68bd60f426899f81" [label="docker-image://docker.io/library/node:7.5-alpine" shape="ellipse"];
  "sha256:4a7b35bcba5083c591d541f9d1a193eea34de0ff3f575abb438b65caaf642a5e" [label="mkdir{path=/src}" shape="note"];
  "sha256:d6ba433d4e123c37ed68044bdb13133677180d6fb3caaaf8e5426c67d7b71b03" [label="/bin/sh -c apk add --no-cache make gcc g++ python" shape="box"];
  "sha256:548eca3653b42d6a9b877fa9d00a82e5b55ec200030230f23b8ad3380a00f8fa" [label="copy{src=/package.json, dest=/src}" shape="note"];
  "sha256:63752abe69cd322d21ad7df43b2663bd3a82cea8d1358bbf761ae2d1fe7f3003" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:dfdfc30b8db61483c0e95163fe223d4d19b82d9a97d7dbf6d001cf6f57e2fa30" [label="/bin/sh -c apk del make gcc g++ python" shape="box"];
  "sha256:c27a032f16cd11e591328224be580d17fba35abd3ad4a93c4306c1628c988730" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:0f31b9a4935e3c758c00cfdcedb780d2502ade948ce18ba43bb952d0e52ac059" [label="sha256:0f31b9a4935e3c758c00cfdcedb780d2502ade948ce18ba43bb952d0e52ac059" shape="plaintext"];
  "sha256:e1b00631d968a9b1ca3057f62ffec8bba6009d72d5702b9c68bd60f426899f81" -> "sha256:4a7b35bcba5083c591d541f9d1a193eea34de0ff3f575abb438b65caaf642a5e" [label=""];
  "sha256:4a7b35bcba5083c591d541f9d1a193eea34de0ff3f575abb438b65caaf642a5e" -> "sha256:d6ba433d4e123c37ed68044bdb13133677180d6fb3caaaf8e5426c67d7b71b03" [label=""];
  "sha256:d6ba433d4e123c37ed68044bdb13133677180d6fb3caaaf8e5426c67d7b71b03" -> "sha256:548eca3653b42d6a9b877fa9d00a82e5b55ec200030230f23b8ad3380a00f8fa" [label=""];
  "sha256:ac96d5e6a1d0428043ec099503fa66486656b31995d9a62bc153c900df1704d4" -> "sha256:548eca3653b42d6a9b877fa9d00a82e5b55ec200030230f23b8ad3380a00f8fa" [label=""];
  "sha256:548eca3653b42d6a9b877fa9d00a82e5b55ec200030230f23b8ad3380a00f8fa" -> "sha256:63752abe69cd322d21ad7df43b2663bd3a82cea8d1358bbf761ae2d1fe7f3003" [label=""];
  "sha256:63752abe69cd322d21ad7df43b2663bd3a82cea8d1358bbf761ae2d1fe7f3003" -> "sha256:dfdfc30b8db61483c0e95163fe223d4d19b82d9a97d7dbf6d001cf6f57e2fa30" [label=""];
  "sha256:dfdfc30b8db61483c0e95163fe223d4d19b82d9a97d7dbf6d001cf6f57e2fa30" -> "sha256:c27a032f16cd11e591328224be580d17fba35abd3ad4a93c4306c1628c988730" [label=""];
  "sha256:ac96d5e6a1d0428043ec099503fa66486656b31995d9a62bc153c900df1704d4" -> "sha256:c27a032f16cd11e591328224be580d17fba35abd3ad4a93c4306c1628c988730" [label=""];
  "sha256:c27a032f16cd11e591328224be580d17fba35abd3ad4a93c4306c1628c988730" -> "sha256:0f31b9a4935e3c758c00cfdcedb780d2502ade948ce18ba43bb952d0e52ac059" [label=""];
}

