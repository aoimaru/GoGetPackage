[app/sources/345362186.Dockerfile]
digraph {
  "sha256:936e696127292b4c04a98df68a7c559ddea5a5e848b89dbeafc1137e41950801" [label="docker-image://docker.io/balenalib/i386-nlp-debian:sid-build" shape="ellipse"];
  "sha256:f2b7b80011ccfcfc2748f2c9f86f3f7cbab230ad8f156583e430bea4ec0a4acf" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a476b6eb0c0c042350a37295a1f99acdb365ce6db528f154ae8d88ba2396dd88" [label="sha256:a476b6eb0c0c042350a37295a1f99acdb365ce6db528f154ae8d88ba2396dd88" shape="plaintext"];
  "sha256:936e696127292b4c04a98df68a7c559ddea5a5e848b89dbeafc1137e41950801" -> "sha256:f2b7b80011ccfcfc2748f2c9f86f3f7cbab230ad8f156583e430bea4ec0a4acf" [label=""];
  "sha256:f2b7b80011ccfcfc2748f2c9f86f3f7cbab230ad8f156583e430bea4ec0a4acf" -> "sha256:a476b6eb0c0c042350a37295a1f99acdb365ce6db528f154ae8d88ba2396dd88" [label=""];
}

