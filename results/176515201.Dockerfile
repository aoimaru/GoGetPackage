[app/sources/176515201.Dockerfile]
digraph {
  "sha256:2219005046ed56d7ad2ce5fe4aeb0832c65a021961e9433172297efa65c3c575" [label="docker-image://docker.io/library/ruby:2.2-onbuild" shape="ellipse"];
  "sha256:419087fcb69e42dd70d6206091458a6c5587161fd917192fba303858d8928b77" [label="/bin/sh -c echo \"deb http://deb-multimedia.org jessie main non-free\" > /etc/apt/sources.list.d/non-free.list" shape="box"];
  "sha256:d969e31159d5e9f2357eef0aec53a118c2ec089c1b296b1e2b4e7c701d0119d2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f1ff8ea3bddacc469d2f6140e84f87033492e9408b3a55b93ba5d1eddfea3052" [label="/bin/sh -c apt-get install -y --force-yes deb-multimedia-keyring" shape="box"];
  "sha256:017eacd1ad8e803e0f039095b1219d81e2cb0311e12a0deafc5d9d579001ea79" [label="/bin/sh -c apt-get install -y --force-yes ffmpeg" shape="box"];
  "sha256:ea32a5f1e8cd708975e839f725cf0ad284906a2f3295cd06b177853a3956f57f" [label="/bin/sh -c apt-get install -y zsh rlwrap vim-common vim-scripts vim-nox" shape="box"];
  "sha256:105448ab092bd557c8cdc59cae8c75d833c25a907795d21d6e6d438590d18467" [label="/bin/sh -c useradd USERNAME -u UID -s SHELL --no-create-home" shape="box"];
  "sha256:a7880e889028ae4094bd49c94d99796a013145137838b6f51e72751fdcd4a1e9" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:dab2bd7dd250a58452b6bec092a670646d9b3b134059492e4001b690238adeaf" [label="sha256:dab2bd7dd250a58452b6bec092a670646d9b3b134059492e4001b690238adeaf" shape="plaintext"];
  "sha256:2219005046ed56d7ad2ce5fe4aeb0832c65a021961e9433172297efa65c3c575" -> "sha256:419087fcb69e42dd70d6206091458a6c5587161fd917192fba303858d8928b77" [label=""];
  "sha256:419087fcb69e42dd70d6206091458a6c5587161fd917192fba303858d8928b77" -> "sha256:d969e31159d5e9f2357eef0aec53a118c2ec089c1b296b1e2b4e7c701d0119d2" [label=""];
  "sha256:d969e31159d5e9f2357eef0aec53a118c2ec089c1b296b1e2b4e7c701d0119d2" -> "sha256:f1ff8ea3bddacc469d2f6140e84f87033492e9408b3a55b93ba5d1eddfea3052" [label=""];
  "sha256:f1ff8ea3bddacc469d2f6140e84f87033492e9408b3a55b93ba5d1eddfea3052" -> "sha256:017eacd1ad8e803e0f039095b1219d81e2cb0311e12a0deafc5d9d579001ea79" [label=""];
  "sha256:017eacd1ad8e803e0f039095b1219d81e2cb0311e12a0deafc5d9d579001ea79" -> "sha256:ea32a5f1e8cd708975e839f725cf0ad284906a2f3295cd06b177853a3956f57f" [label=""];
  "sha256:ea32a5f1e8cd708975e839f725cf0ad284906a2f3295cd06b177853a3956f57f" -> "sha256:105448ab092bd557c8cdc59cae8c75d833c25a907795d21d6e6d438590d18467" [label=""];
  "sha256:105448ab092bd557c8cdc59cae8c75d833c25a907795d21d6e6d438590d18467" -> "sha256:a7880e889028ae4094bd49c94d99796a013145137838b6f51e72751fdcd4a1e9" [label=""];
  "sha256:a7880e889028ae4094bd49c94d99796a013145137838b6f51e72751fdcd4a1e9" -> "sha256:dab2bd7dd250a58452b6bec092a670646d9b3b134059492e4001b690238adeaf" [label=""];
}

