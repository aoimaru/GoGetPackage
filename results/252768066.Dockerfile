[app/sources/252768066.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:7c48f8587b4a63ce92e20b7f4fbad86baf7dd6bd8ebc64c4896ba1c14e7b8bda" [label="/bin/sh -c apt-get update && apt-get install -qy coreutils bash curl sudo git build-essential postgresql-client && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:14a4f6a11e72a9a3fdf6b87f9bc7fb406854034b104b0a7ce7e2c3c7b1ee184f" [label="/bin/sh -c adduser --disabled-password --gecos \"\" $USER && adduser $USER adm && bash -c \"echo '%adm ALL=(ALL:ALL) NOPASSWD: ALL' | tee -a /etc/sudoers\"" shape="box"];
  "sha256:1d57628d80db137d51a602dc503b757fbc72bdb71c17429f4b4e4d7aff4a6df4" [label="mkdir{path=/deepdive}" shape="note"];
  "sha256:b4928f89cd85332b0ae5ea9a81f9a9f5906f1feaa87779832d326857a863f800" [label="local://context" shape="ellipse"];
  "sha256:2296fa1ab87339b904617d9465d43af84dd3b70b66f860429d744c6405e8a83c" [label="copy{src=/.git, dest=/deepdive/.git}" shape="note"];
  "sha256:19b03ec7af988756bb420ea4c0b25d5e3f7f26cb7e5eb05062786b12ed4bf2b2" [label="/bin/sh -c sudo chown -R $USER ." shape="box"];
  "sha256:7d976eebe8d2eb0c0c7edb0ada26bd40a14af7d00ced0d12d48cdc4195ee4d14" [label="/bin/sh -c git checkout ." shape="box"];
  "sha256:993f6d1efb5d9041da685568260f71782c0edeef1e3a77583d472e9bac378767" [label="/bin/sh -c make depends && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:170bd2a714579956595e2ec1550d65137b502b01bf46327d9d900bc78a03948d" [label="/bin/sh -c make bundled-runtime-dependencies" shape="box"];
  "sha256:1863bcdf99a4a6bd329a15c31097a6d9af2c160cdfe80045e6aa36e9e1516504" [label="/bin/sh -c make" shape="box"];
  "sha256:e1fc62572bdf2ea8ea800b2c437ccede77d115ab16000c4803da9b1251420bd0" [label="sha256:e1fc62572bdf2ea8ea800b2c437ccede77d115ab16000c4803da9b1251420bd0" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:7c48f8587b4a63ce92e20b7f4fbad86baf7dd6bd8ebc64c4896ba1c14e7b8bda" [label=""];
  "sha256:7c48f8587b4a63ce92e20b7f4fbad86baf7dd6bd8ebc64c4896ba1c14e7b8bda" -> "sha256:14a4f6a11e72a9a3fdf6b87f9bc7fb406854034b104b0a7ce7e2c3c7b1ee184f" [label=""];
  "sha256:14a4f6a11e72a9a3fdf6b87f9bc7fb406854034b104b0a7ce7e2c3c7b1ee184f" -> "sha256:1d57628d80db137d51a602dc503b757fbc72bdb71c17429f4b4e4d7aff4a6df4" [label=""];
  "sha256:1d57628d80db137d51a602dc503b757fbc72bdb71c17429f4b4e4d7aff4a6df4" -> "sha256:2296fa1ab87339b904617d9465d43af84dd3b70b66f860429d744c6405e8a83c" [label=""];
  "sha256:b4928f89cd85332b0ae5ea9a81f9a9f5906f1feaa87779832d326857a863f800" -> "sha256:2296fa1ab87339b904617d9465d43af84dd3b70b66f860429d744c6405e8a83c" [label=""];
  "sha256:2296fa1ab87339b904617d9465d43af84dd3b70b66f860429d744c6405e8a83c" -> "sha256:19b03ec7af988756bb420ea4c0b25d5e3f7f26cb7e5eb05062786b12ed4bf2b2" [label=""];
  "sha256:19b03ec7af988756bb420ea4c0b25d5e3f7f26cb7e5eb05062786b12ed4bf2b2" -> "sha256:7d976eebe8d2eb0c0c7edb0ada26bd40a14af7d00ced0d12d48cdc4195ee4d14" [label=""];
  "sha256:7d976eebe8d2eb0c0c7edb0ada26bd40a14af7d00ced0d12d48cdc4195ee4d14" -> "sha256:993f6d1efb5d9041da685568260f71782c0edeef1e3a77583d472e9bac378767" [label=""];
  "sha256:993f6d1efb5d9041da685568260f71782c0edeef1e3a77583d472e9bac378767" -> "sha256:170bd2a714579956595e2ec1550d65137b502b01bf46327d9d900bc78a03948d" [label=""];
  "sha256:170bd2a714579956595e2ec1550d65137b502b01bf46327d9d900bc78a03948d" -> "sha256:1863bcdf99a4a6bd329a15c31097a6d9af2c160cdfe80045e6aa36e9e1516504" [label=""];
  "sha256:1863bcdf99a4a6bd329a15c31097a6d9af2c160cdfe80045e6aa36e9e1516504" -> "sha256:e1fc62572bdf2ea8ea800b2c437ccede77d115ab16000c4803da9b1251420bd0" [label=""];
}

