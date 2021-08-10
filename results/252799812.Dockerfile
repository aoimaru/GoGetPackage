[app/sources/252799812.Dockerfile]
digraph {
  "sha256:5d8f2e8dcd19b95b0adcf8bfa8ebc1ad16259fe30034ffb6b036ddffa5355443" [label="docker-image://docker.io/digitalagendadata/scoreboard.plone:latest" shape="ellipse"];
  "sha256:c73e7ce0bcdf721adc8fe3edb3d855945c0351cfcd14d9e15fddf433ffb3fbd8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends git gcc libffi-dev libc6-dev" shape="box"];
  "sha256:155624e679a6fdfd275b38e3267e99b0486337de0d4490b9c19350dd30bd0ce7" [label="local://context" shape="ellipse"];
  "sha256:e5ec302cae6ec62e27527840fbb87a53fc5df0241d2f9479611a5f1723128a62" [label="copy{src=/devel.cfg, dest=/plone/instance/}" shape="note"];
  "sha256:e6e3495e0ea00652869ecf130f029e8c9bd1cfb511b2b6cec1a369b0218961c3" [label="/bin/sh -c rm -rf /plone/instance/src/scoreboard.theme /plone/instance/src/scoreboard.visualization /plone/instance/src/edw.datacube && buildout -c devel.cfg" shape="box"];
  "sha256:76bd8cd30b8074ee9b2a699f64ce3bebf2baa70c3d4af4e9a6b1766fa6178e56" [label="/bin/sh -c apt-get purge -y --auto-remove gcc libffi-dev libc6-dev && rm -rf /var/lib/apt/lists/* && rm -rf /plone/buildout-cache/downloads/*" shape="box"];
  "sha256:b79ccfbeba47554f949cbee3a1afa24e6b301c6f088c3c6c2f372120b7912ed3" [label="sha256:b79ccfbeba47554f949cbee3a1afa24e6b301c6f088c3c6c2f372120b7912ed3" shape="plaintext"];
  "sha256:5d8f2e8dcd19b95b0adcf8bfa8ebc1ad16259fe30034ffb6b036ddffa5355443" -> "sha256:c73e7ce0bcdf721adc8fe3edb3d855945c0351cfcd14d9e15fddf433ffb3fbd8" [label=""];
  "sha256:c73e7ce0bcdf721adc8fe3edb3d855945c0351cfcd14d9e15fddf433ffb3fbd8" -> "sha256:e5ec302cae6ec62e27527840fbb87a53fc5df0241d2f9479611a5f1723128a62" [label=""];
  "sha256:155624e679a6fdfd275b38e3267e99b0486337de0d4490b9c19350dd30bd0ce7" -> "sha256:e5ec302cae6ec62e27527840fbb87a53fc5df0241d2f9479611a5f1723128a62" [label=""];
  "sha256:e5ec302cae6ec62e27527840fbb87a53fc5df0241d2f9479611a5f1723128a62" -> "sha256:e6e3495e0ea00652869ecf130f029e8c9bd1cfb511b2b6cec1a369b0218961c3" [label=""];
  "sha256:e6e3495e0ea00652869ecf130f029e8c9bd1cfb511b2b6cec1a369b0218961c3" -> "sha256:76bd8cd30b8074ee9b2a699f64ce3bebf2baa70c3d4af4e9a6b1766fa6178e56" [label=""];
  "sha256:76bd8cd30b8074ee9b2a699f64ce3bebf2baa70c3d4af4e9a6b1766fa6178e56" -> "sha256:b79ccfbeba47554f949cbee3a1afa24e6b301c6f088c3c6c2f372120b7912ed3" [label=""];
}

