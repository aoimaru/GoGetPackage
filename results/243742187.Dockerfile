[app/sources/243742187.Dockerfile]
digraph {
  "sha256:53cfb679c59cdff055e3c70562ebea7596297bd9f09867cb9c4949b1c3f51fac" [label="local://context" shape="ellipse"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:2de4b3ebb5330069a32d2fe29ff662c663e7aad5377c45f6b3c81027533139cd" [label="/bin/sh -c apt-get install -y wget iputils-ping vim tmux less curl" shape="box"];
  "sha256:b78883c978210765e821567ff0b1b2622c42a2f62bb6825c3410674fd1c01264" [label="/bin/sh -c /bin/bash -c \"curl -sL https://deb.nodesource.com/setup_8.x | bash -\"" shape="box"];
  "sha256:19310c1422b808f74bf671a6efbbc46ae49b571eae8228917a3b0fdcaddd90d2" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:9ee8d09e29ffe2e90ba5bd4ac245c6e91077dbdc31031881892c59c9a9c5dc8d" [label="/bin/sh -c mkdir -p /roach" shape="box"];
  "sha256:d8beb751e8d5962f54f010e34def1d2606491db0d3cbdd503c3b905b3211cc02" [label="mkdir{path=/roach}" shape="note"];
  "sha256:dfbfbfb9956611582a4e167ac0e657005387f807958e6d644f114a8b0ed52de7" [label="/bin/sh -c wget https://binaries.cockroachdb.com/cockroach-latest.linux-amd64.tgz" shape="box"];
  "sha256:880e7e07c7c886b2d7ebcd2c0e8662762bf1686eb5f2d14c472e9bba42c037bc" [label="/bin/sh -c tar xzvf cockroach-latest.linux-amd64.tgz" shape="box"];
  "sha256:dd723b8890f20a06639c07d2dc7f58cd2ae585d120bff779e60cae50287b804f" [label="/bin/sh -c rm cockroach-latest.linux-amd64.tgz" shape="box"];
  "sha256:b86ff52d421d2c1630a828416ed09fd00d7396b3c9777e07dac128caa4943c01" [label="copy{src=/test.sh, dest=/roach/test.sh}" shape="note"];
  "sha256:73a93a8db876b3c0d04a7366a04be9eba838682b622d034eb37213b8492ba39d" [label="copy{src=/schema.sql, dest=/roach/schema.sql}" shape="note"];
  "sha256:5a3a88b8e91fcfc54d87ba92c9c5f7d97727a8fd9ebcc45ce30f475f5c2a4eb4" [label="copy{src=/app, dest=/roach/app}" shape="note"];
  "sha256:3587368e627df9a26ef506f7530cda772a38460da4ea2be8d27542e017c5a759" [label="copy{src=/lib, dest=/roach/lib}" shape="note"];
  "sha256:2b455a16842ca91391959d4cdf8db9828ead2bb624c55e21261dc1640f5a039b" [label="mkdir{path=/roach/app}" shape="note"];
  "sha256:1498a4deb7cabceb864d1d7c997c8a0a7eba40a8990508e91e12e6e65bcdc187" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fbcca6d43a93704a778fde67b422ab38a7c8800847c879e8588b4ea4554ecfde" [label="mkdir{path=/roach}" shape="note"];
  "sha256:d34fa84906d15a4044b7c1b3ed4584d31a2f2593a47a43933fdfa634d77ec350" [label="sha256:d34fa84906d15a4044b7c1b3ed4584d31a2f2593a47a43933fdfa634d77ec350" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" [label=""];
  "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" -> "sha256:2de4b3ebb5330069a32d2fe29ff662c663e7aad5377c45f6b3c81027533139cd" [label=""];
  "sha256:2de4b3ebb5330069a32d2fe29ff662c663e7aad5377c45f6b3c81027533139cd" -> "sha256:b78883c978210765e821567ff0b1b2622c42a2f62bb6825c3410674fd1c01264" [label=""];
  "sha256:b78883c978210765e821567ff0b1b2622c42a2f62bb6825c3410674fd1c01264" -> "sha256:19310c1422b808f74bf671a6efbbc46ae49b571eae8228917a3b0fdcaddd90d2" [label=""];
  "sha256:19310c1422b808f74bf671a6efbbc46ae49b571eae8228917a3b0fdcaddd90d2" -> "sha256:9ee8d09e29ffe2e90ba5bd4ac245c6e91077dbdc31031881892c59c9a9c5dc8d" [label=""];
  "sha256:9ee8d09e29ffe2e90ba5bd4ac245c6e91077dbdc31031881892c59c9a9c5dc8d" -> "sha256:d8beb751e8d5962f54f010e34def1d2606491db0d3cbdd503c3b905b3211cc02" [label=""];
  "sha256:d8beb751e8d5962f54f010e34def1d2606491db0d3cbdd503c3b905b3211cc02" -> "sha256:dfbfbfb9956611582a4e167ac0e657005387f807958e6d644f114a8b0ed52de7" [label=""];
  "sha256:dfbfbfb9956611582a4e167ac0e657005387f807958e6d644f114a8b0ed52de7" -> "sha256:880e7e07c7c886b2d7ebcd2c0e8662762bf1686eb5f2d14c472e9bba42c037bc" [label=""];
  "sha256:880e7e07c7c886b2d7ebcd2c0e8662762bf1686eb5f2d14c472e9bba42c037bc" -> "sha256:dd723b8890f20a06639c07d2dc7f58cd2ae585d120bff779e60cae50287b804f" [label=""];
  "sha256:dd723b8890f20a06639c07d2dc7f58cd2ae585d120bff779e60cae50287b804f" -> "sha256:b86ff52d421d2c1630a828416ed09fd00d7396b3c9777e07dac128caa4943c01" [label=""];
  "sha256:53cfb679c59cdff055e3c70562ebea7596297bd9f09867cb9c4949b1c3f51fac" -> "sha256:b86ff52d421d2c1630a828416ed09fd00d7396b3c9777e07dac128caa4943c01" [label=""];
  "sha256:b86ff52d421d2c1630a828416ed09fd00d7396b3c9777e07dac128caa4943c01" -> "sha256:73a93a8db876b3c0d04a7366a04be9eba838682b622d034eb37213b8492ba39d" [label=""];
  "sha256:53cfb679c59cdff055e3c70562ebea7596297bd9f09867cb9c4949b1c3f51fac" -> "sha256:73a93a8db876b3c0d04a7366a04be9eba838682b622d034eb37213b8492ba39d" [label=""];
  "sha256:73a93a8db876b3c0d04a7366a04be9eba838682b622d034eb37213b8492ba39d" -> "sha256:5a3a88b8e91fcfc54d87ba92c9c5f7d97727a8fd9ebcc45ce30f475f5c2a4eb4" [label=""];
  "sha256:53cfb679c59cdff055e3c70562ebea7596297bd9f09867cb9c4949b1c3f51fac" -> "sha256:5a3a88b8e91fcfc54d87ba92c9c5f7d97727a8fd9ebcc45ce30f475f5c2a4eb4" [label=""];
  "sha256:5a3a88b8e91fcfc54d87ba92c9c5f7d97727a8fd9ebcc45ce30f475f5c2a4eb4" -> "sha256:3587368e627df9a26ef506f7530cda772a38460da4ea2be8d27542e017c5a759" [label=""];
  "sha256:53cfb679c59cdff055e3c70562ebea7596297bd9f09867cb9c4949b1c3f51fac" -> "sha256:3587368e627df9a26ef506f7530cda772a38460da4ea2be8d27542e017c5a759" [label=""];
  "sha256:3587368e627df9a26ef506f7530cda772a38460da4ea2be8d27542e017c5a759" -> "sha256:2b455a16842ca91391959d4cdf8db9828ead2bb624c55e21261dc1640f5a039b" [label=""];
  "sha256:2b455a16842ca91391959d4cdf8db9828ead2bb624c55e21261dc1640f5a039b" -> "sha256:1498a4deb7cabceb864d1d7c997c8a0a7eba40a8990508e91e12e6e65bcdc187" [label=""];
  "sha256:1498a4deb7cabceb864d1d7c997c8a0a7eba40a8990508e91e12e6e65bcdc187" -> "sha256:fbcca6d43a93704a778fde67b422ab38a7c8800847c879e8588b4ea4554ecfde" [label=""];
  "sha256:fbcca6d43a93704a778fde67b422ab38a7c8800847c879e8588b4ea4554ecfde" -> "sha256:d34fa84906d15a4044b7c1b3ed4584d31a2f2593a47a43933fdfa634d77ec350" [label=""];
}

