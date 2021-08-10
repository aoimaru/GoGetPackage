[app/sources/252774189.Dockerfile]
digraph {
  "sha256:d7164fccc968e68deb485d74cd1fd24880a0a573c1ca39a72f1f41ead35ed2d1" [label="docker-image://docker.io/amaysim/logspout:latest" shape="ellipse"];
  "sha256:d67b1c54932dbdc3e01e866189cb918cbce7e0fb8152c725ed95f9eaaf709662" [label="/bin/sh -c apk --update upgrade && apk add curl ca-certificates && update-ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:601ec67ee775dfd50f62b27eb308c7217c63fb0fe94806ecf1191a3e3cc8d7c0" [label="sha256:601ec67ee775dfd50f62b27eb308c7217c63fb0fe94806ecf1191a3e3cc8d7c0" shape="plaintext"];
  "sha256:d7164fccc968e68deb485d74cd1fd24880a0a573c1ca39a72f1f41ead35ed2d1" -> "sha256:d67b1c54932dbdc3e01e866189cb918cbce7e0fb8152c725ed95f9eaaf709662" [label=""];
  "sha256:d67b1c54932dbdc3e01e866189cb918cbce7e0fb8152c725ed95f9eaaf709662" -> "sha256:601ec67ee775dfd50f62b27eb308c7217c63fb0fe94806ecf1191a3e3cc8d7c0" [label=""];
}

