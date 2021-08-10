[app/sources/356796999.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:c19ff33613fec590d6617a976cf950ea36bf82491402f89f80a74544b3a51180" [label="/bin/sh -c apt-get update && apt-get install -y     logrotate libmosquitto1 libstdc++6 libc6 libgcc1     curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:de33818f085d5af6e7fe92127cbb50285dd0b1345425524084ebb5045f061e68" [label="/bin/sh -c curl -SL https://github.com/john30/ebusd/releases/download/v${EBUSD_VERSION}/ebusd-${EBUSD_VERSION}_${EBUSD_ARCH}-stretch_mqtt1.deb > ebusd.deb" shape="box"];
  "sha256:651d010de8ef963870ce1a8be94515f2326af0841e32a99b690ff74658fda596" [label="/bin/sh -c dpkg -i ebusd.deb" shape="box"];
  "sha256:9e30acaec24b779777256c65b07f74d21b7d708f3208b837a047c9336ad92de0" [label="/bin/sh -c rm ebusd.deb" shape="box"];
  "sha256:7e222c66f4fb096fd5f5830534b8033ab6927ccf6dcf0a7a8933b2a5e42a60ff" [label="local://context" shape="ellipse"];
  "sha256:f8010278a2923363e3ca6c1f28aff58c0d9250521f9f42879b46badeaf024b15" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:7afd888333fdd72813514b46fd6476e6223b0a5576002e3673187023f6e25b87" [label="sha256:7afd888333fdd72813514b46fd6476e6223b0a5576002e3673187023f6e25b87" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:c19ff33613fec590d6617a976cf950ea36bf82491402f89f80a74544b3a51180" [label=""];
  "sha256:c19ff33613fec590d6617a976cf950ea36bf82491402f89f80a74544b3a51180" -> "sha256:de33818f085d5af6e7fe92127cbb50285dd0b1345425524084ebb5045f061e68" [label=""];
  "sha256:de33818f085d5af6e7fe92127cbb50285dd0b1345425524084ebb5045f061e68" -> "sha256:651d010de8ef963870ce1a8be94515f2326af0841e32a99b690ff74658fda596" [label=""];
  "sha256:651d010de8ef963870ce1a8be94515f2326af0841e32a99b690ff74658fda596" -> "sha256:9e30acaec24b779777256c65b07f74d21b7d708f3208b837a047c9336ad92de0" [label=""];
  "sha256:9e30acaec24b779777256c65b07f74d21b7d708f3208b837a047c9336ad92de0" -> "sha256:f8010278a2923363e3ca6c1f28aff58c0d9250521f9f42879b46badeaf024b15" [label=""];
  "sha256:7e222c66f4fb096fd5f5830534b8033ab6927ccf6dcf0a7a8933b2a5e42a60ff" -> "sha256:f8010278a2923363e3ca6c1f28aff58c0d9250521f9f42879b46badeaf024b15" [label=""];
  "sha256:f8010278a2923363e3ca6c1f28aff58c0d9250521f9f42879b46badeaf024b15" -> "sha256:7afd888333fdd72813514b46fd6476e6223b0a5576002e3673187023f6e25b87" [label=""];
}

