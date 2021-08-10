[app/sources/273939588.Dockerfile]
digraph {
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:a752ca08bc5b2b3cc1354ca50f09c46211dd52663d295fd09023a431237dd2b8" shape="ellipse"];
  "sha256:5efdef19eb9d8cc16034e582938b879bc93aac9aafb41a90cc200339e461e51b" [label="/bin/sh -c apt-get update && apt-get install -y automake autoconf libtool pkg-config gettext perl python flex bison gperf lcov libgmp3-dev" shape="box"];
  "sha256:728904389984b76da94b2a7f7d55d7844eecc8465af876931898a0b811864efb" [label="/bin/sh -c git clone --depth 1 https://github.com/strongswan/strongswan.git strongswan" shape="box"];
  "sha256:7fddd987c0be26c6682db2a07eee7817b3b91b3bf0ca2c4cc7abf1c9219b302a" [label="/bin/sh -c git clone --depth 1 https://github.com/strongswan/fuzzing-corpora.git strongswan/fuzzing-corpora" shape="box"];
  "sha256:985efc0a8758fbd05365edf0401f6737a40f51af66fbc9469cb133a3b9347e59" [label="mkdir{path=/src/strongswan}" shape="note"];
  "sha256:23dcc9b204f68b276ad7ca803637374a5fd45338ce29adb85d55ced38f7fcabc" [label="local://context" shape="ellipse"];
  "sha256:5afbce48f26978021decb7626e20d0f15989cd426a82727b50f889fd0147c5ec" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:903a60358fa1f3fb47425e949e46692e25ff97f812c4fed04c5b8fe2831cea41" [label="sha256:903a60358fa1f3fb47425e949e46692e25ff97f812c4fed04c5b8fe2831cea41" shape="plaintext"];
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" -> "sha256:5efdef19eb9d8cc16034e582938b879bc93aac9aafb41a90cc200339e461e51b" [label=""];
  "sha256:5efdef19eb9d8cc16034e582938b879bc93aac9aafb41a90cc200339e461e51b" -> "sha256:728904389984b76da94b2a7f7d55d7844eecc8465af876931898a0b811864efb" [label=""];
  "sha256:728904389984b76da94b2a7f7d55d7844eecc8465af876931898a0b811864efb" -> "sha256:7fddd987c0be26c6682db2a07eee7817b3b91b3bf0ca2c4cc7abf1c9219b302a" [label=""];
  "sha256:7fddd987c0be26c6682db2a07eee7817b3b91b3bf0ca2c4cc7abf1c9219b302a" -> "sha256:985efc0a8758fbd05365edf0401f6737a40f51af66fbc9469cb133a3b9347e59" [label=""];
  "sha256:985efc0a8758fbd05365edf0401f6737a40f51af66fbc9469cb133a3b9347e59" -> "sha256:5afbce48f26978021decb7626e20d0f15989cd426a82727b50f889fd0147c5ec" [label=""];
  "sha256:23dcc9b204f68b276ad7ca803637374a5fd45338ce29adb85d55ced38f7fcabc" -> "sha256:5afbce48f26978021decb7626e20d0f15989cd426a82727b50f889fd0147c5ec" [label=""];
  "sha256:5afbce48f26978021decb7626e20d0f15989cd426a82727b50f889fd0147c5ec" -> "sha256:903a60358fa1f3fb47425e949e46692e25ff97f812c4fed04c5b8fe2831cea41" [label=""];
}

