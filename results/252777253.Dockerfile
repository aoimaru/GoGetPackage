[app/sources/252777253.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:ad12b5bf1218eebb74a893956a9155ed7ddd49379f1938c20066da9d94e4ac1e" [label="/bin/sh -c apt-get -y install mongodb" shape="box"];
  "sha256:b37cdcff12eb4f67607d160d507e93a131712e252054cb7b37f64317cce664a1" [label="/bin/sh -c apt-get install -y python-setuptools" shape="box"];
  "sha256:b193d83af35b64f975589fce021f003086c665dbd683d8745119cbdbb1508b6f" [label="/bin/sh -c apt-get -y install python-dev" shape="box"];
  "sha256:e5618114a1568f73aac7983c9817c80aded865df39b310aa159ef8f3ae9963b9" [label="/bin/sh -c apt-get -y install supervisor" shape="box"];
  "sha256:707b124a8cdbde7003bb1dfd389e893f7ded6410663ceac49ac0e55f27852d6b" [label="/bin/sh -c apt-get -y install build-essential" shape="box"];
  "sha256:05d1c4857fc75afd6ff32d05b1eb3547c589d42761106c65e998bacf987b8463" [label="/bin/sh -c apt-get -y install python-psycopg2" shape="box"];
  "sha256:2ac99312b01e3fd4f64b3794a31813af3ef9081033af320ce6afc66c263ccb31" [label="/bin/sh -c apt-get -y install libpq-dev" shape="box"];
  "sha256:2c87c77c3336a889c4ab120bbc4f105b381af443977d97983aa79c367b7ecc63" [label="/bin/sh -c apt-get -y install python-pip" shape="box"];
  "sha256:0a924c2a2dd0e094321d095d1f3bea5468fd3c442bc5cd619d49407d6ff2ccc4" [label="/bin/sh -c pip install mlab" shape="box"];
  "sha256:2c8e04bf48e31254ae1557907b51340c79d5f3408165a9f768035401a73c7643" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:be49184e3c7cdcec43bc330ee56ee678ef5614f26e89021def625a74d22e3312" [label="/bin/sh -c pip install mlab" shape="box"];
  "sha256:94e89979687ec72f4c0c6006da19205065d8df40e76c49c918ce36ba2fc719d4" [label="/bin/sh -c useradd -m docker && echo \"docker:docker\"" shape="box"];
  "sha256:e9ce2b672f53f674783ce4d76e877a733e2b68b978d772f7ee9d8b11c4116b10" [label="sha256:e9ce2b672f53f674783ce4d76e877a733e2b68b978d772f7ee9d8b11c4116b10" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" [label=""];
  "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" -> "sha256:ad12b5bf1218eebb74a893956a9155ed7ddd49379f1938c20066da9d94e4ac1e" [label=""];
  "sha256:ad12b5bf1218eebb74a893956a9155ed7ddd49379f1938c20066da9d94e4ac1e" -> "sha256:b37cdcff12eb4f67607d160d507e93a131712e252054cb7b37f64317cce664a1" [label=""];
  "sha256:b37cdcff12eb4f67607d160d507e93a131712e252054cb7b37f64317cce664a1" -> "sha256:b193d83af35b64f975589fce021f003086c665dbd683d8745119cbdbb1508b6f" [label=""];
  "sha256:b193d83af35b64f975589fce021f003086c665dbd683d8745119cbdbb1508b6f" -> "sha256:e5618114a1568f73aac7983c9817c80aded865df39b310aa159ef8f3ae9963b9" [label=""];
  "sha256:e5618114a1568f73aac7983c9817c80aded865df39b310aa159ef8f3ae9963b9" -> "sha256:707b124a8cdbde7003bb1dfd389e893f7ded6410663ceac49ac0e55f27852d6b" [label=""];
  "sha256:707b124a8cdbde7003bb1dfd389e893f7ded6410663ceac49ac0e55f27852d6b" -> "sha256:05d1c4857fc75afd6ff32d05b1eb3547c589d42761106c65e998bacf987b8463" [label=""];
  "sha256:05d1c4857fc75afd6ff32d05b1eb3547c589d42761106c65e998bacf987b8463" -> "sha256:2ac99312b01e3fd4f64b3794a31813af3ef9081033af320ce6afc66c263ccb31" [label=""];
  "sha256:2ac99312b01e3fd4f64b3794a31813af3ef9081033af320ce6afc66c263ccb31" -> "sha256:2c87c77c3336a889c4ab120bbc4f105b381af443977d97983aa79c367b7ecc63" [label=""];
  "sha256:2c87c77c3336a889c4ab120bbc4f105b381af443977d97983aa79c367b7ecc63" -> "sha256:0a924c2a2dd0e094321d095d1f3bea5468fd3c442bc5cd619d49407d6ff2ccc4" [label=""];
  "sha256:0a924c2a2dd0e094321d095d1f3bea5468fd3c442bc5cd619d49407d6ff2ccc4" -> "sha256:2c8e04bf48e31254ae1557907b51340c79d5f3408165a9f768035401a73c7643" [label=""];
  "sha256:2c8e04bf48e31254ae1557907b51340c79d5f3408165a9f768035401a73c7643" -> "sha256:be49184e3c7cdcec43bc330ee56ee678ef5614f26e89021def625a74d22e3312" [label=""];
  "sha256:be49184e3c7cdcec43bc330ee56ee678ef5614f26e89021def625a74d22e3312" -> "sha256:94e89979687ec72f4c0c6006da19205065d8df40e76c49c918ce36ba2fc719d4" [label=""];
  "sha256:94e89979687ec72f4c0c6006da19205065d8df40e76c49c918ce36ba2fc719d4" -> "sha256:e9ce2b672f53f674783ce4d76e877a733e2b68b978d772f7ee9d8b11c4116b10" [label=""];
}

