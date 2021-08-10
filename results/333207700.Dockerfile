[app/sources/333207700.Dockerfile]
digraph {
  "sha256:2cf20c3da8ef26f4bebf5b5f70b176750834bb1cf16a3abf6db04fa3ecc16d69" [label="local://context" shape="ellipse"];
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" [label="docker-image://docker.io/library/docker:stable" shape="ellipse"];
  "sha256:c9eb1c0b4b2373ae55d0fc71595b4c9a2d64ba291a690e2e6df397dd06e5e8a7" [label="/bin/sh -c apk add --no-cache ca-certificates bash git curl   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ccdfa0ba27c9a58c1c6d4059a440b195204c4559d4ace598d00295e300797512" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:0bf742037af299944c3a442e114e3683fdf1a5caf02fe675e3fbf000580a2780" [label="sha256:0bf742037af299944c3a442e114e3683fdf1a5caf02fe675e3fbf000580a2780" shape="plaintext"];
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" -> "sha256:c9eb1c0b4b2373ae55d0fc71595b4c9a2d64ba291a690e2e6df397dd06e5e8a7" [label=""];
  "sha256:c9eb1c0b4b2373ae55d0fc71595b4c9a2d64ba291a690e2e6df397dd06e5e8a7" -> "sha256:ccdfa0ba27c9a58c1c6d4059a440b195204c4559d4ace598d00295e300797512" [label=""];
  "sha256:2cf20c3da8ef26f4bebf5b5f70b176750834bb1cf16a3abf6db04fa3ecc16d69" -> "sha256:ccdfa0ba27c9a58c1c6d4059a440b195204c4559d4ace598d00295e300797512" [label=""];
  "sha256:ccdfa0ba27c9a58c1c6d4059a440b195204c4559d4ace598d00295e300797512" -> "sha256:0bf742037af299944c3a442e114e3683fdf1a5caf02fe675e3fbf000580a2780" [label=""];
}

