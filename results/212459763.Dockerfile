[app/sources/212459763.Dockerfile]
digraph {
  "sha256:d866e826eb0f20b56d8750ba2a841da444f20f8a872223bd9209a3bd26eac85e" [label="docker-image://docker.io/library/ubuntu:18.10@sha256:1da669e3481b6c2c8bb25ad287b75202871b1511249000e3bc35679d02e007f4" shape="ellipse"];
  "sha256:e5ed2f8f297df6eb3cf6ef2c25ff8fbc22d90f11590b0bacd66ccee4f03a01ad" [label="/bin/sh -c apt-get update &&     apt-get install -y python3-software-properties software-properties-common &&     add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y     curl     git     jq     libcairo2-dev     libgirepository1.0-dev     libssl-dev     openjdk-8-jdk     pkg-config     python-pip     python3     python3-cairo-dev     python3-dev     python3-pip     rsync     tox     software-properties-common     upx-ucl     wget     zip &&     rm -rf /var/lib/apt/lists/* &&     java -version" shape="box"];
  "sha256:0539cb782aeffec09b0660467c936806043520330ed0c79c4a07ac8f5e404bfd" [label="/bin/sh -c apt-get remove -y python3-crypto" shape="box"];
  "sha256:78c9c0b5f49697fdff89813c0267a979eafdad194b5376c4e79acc214d95baac" [label="sha256:78c9c0b5f49697fdff89813c0267a979eafdad194b5376c4e79acc214d95baac" shape="plaintext"];
  "sha256:d866e826eb0f20b56d8750ba2a841da444f20f8a872223bd9209a3bd26eac85e" -> "sha256:e5ed2f8f297df6eb3cf6ef2c25ff8fbc22d90f11590b0bacd66ccee4f03a01ad" [label=""];
  "sha256:e5ed2f8f297df6eb3cf6ef2c25ff8fbc22d90f11590b0bacd66ccee4f03a01ad" -> "sha256:0539cb782aeffec09b0660467c936806043520330ed0c79c4a07ac8f5e404bfd" [label=""];
  "sha256:0539cb782aeffec09b0660467c936806043520330ed0c79c4a07ac8f5e404bfd" -> "sha256:78c9c0b5f49697fdff89813c0267a979eafdad194b5376c4e79acc214d95baac" [label=""];
}

