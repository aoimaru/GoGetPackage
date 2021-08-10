[app/sources/317571163.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:9bc3dbc3742c2008495c670ce1ea5bd65745917966a198db55e71baaaa8769fc" [label="/bin/sh -c apt-get update && apt-get install -y make autoconf automake libtool zlib1g-dev" shape="box"];
  "sha256:408813b3140c002e48dec18e123d990df28d27a56b0a487de0482d86baced3c1" [label="/bin/sh -c git clone --depth 1 https://github.com/glennrp/libpng.git" shape="box"];
  "sha256:ee278a572ac24482830cd17553a28fab030582045f548fcda2a7abaa6a994a0e" [label="/bin/sh -c (cd libpng; git log | head -1)" shape="box"];
  "sha256:fe10a0791cbdc63b9524637151054530cc649b0c1578c312bf3a3e9ba73c93d6" [label="mkdir{path=/src/libpng}" shape="note"];
  "sha256:46f52a30a08824095e678edefdf88872c274f63894fa0b34301cc9560dbd68b3" [label="local://context" shape="ellipse"];
  "sha256:d69359dfed56bca82796e9c1acb6b7d05df9dd2ae301f48fa365613ce7c98b91" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:035c25b4606e68d51d9c248f67ab95b0cc8e2b4bafe414d518efe403159805dc" [label="sha256:035c25b4606e68d51d9c248f67ab95b0cc8e2b4bafe414d518efe403159805dc" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:9bc3dbc3742c2008495c670ce1ea5bd65745917966a198db55e71baaaa8769fc" [label=""];
  "sha256:9bc3dbc3742c2008495c670ce1ea5bd65745917966a198db55e71baaaa8769fc" -> "sha256:408813b3140c002e48dec18e123d990df28d27a56b0a487de0482d86baced3c1" [label=""];
  "sha256:408813b3140c002e48dec18e123d990df28d27a56b0a487de0482d86baced3c1" -> "sha256:ee278a572ac24482830cd17553a28fab030582045f548fcda2a7abaa6a994a0e" [label=""];
  "sha256:ee278a572ac24482830cd17553a28fab030582045f548fcda2a7abaa6a994a0e" -> "sha256:fe10a0791cbdc63b9524637151054530cc649b0c1578c312bf3a3e9ba73c93d6" [label=""];
  "sha256:fe10a0791cbdc63b9524637151054530cc649b0c1578c312bf3a3e9ba73c93d6" -> "sha256:d69359dfed56bca82796e9c1acb6b7d05df9dd2ae301f48fa365613ce7c98b91" [label=""];
  "sha256:46f52a30a08824095e678edefdf88872c274f63894fa0b34301cc9560dbd68b3" -> "sha256:d69359dfed56bca82796e9c1acb6b7d05df9dd2ae301f48fa365613ce7c98b91" [label=""];
  "sha256:d69359dfed56bca82796e9c1acb6b7d05df9dd2ae301f48fa365613ce7c98b91" -> "sha256:035c25b4606e68d51d9c248f67ab95b0cc8e2b4bafe414d518efe403159805dc" [label=""];
}

