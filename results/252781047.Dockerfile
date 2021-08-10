[app/sources/252781047.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:2d3493ebbbcf978d3bc1cd741b14f762e7e8cc62985b967de50986176ba06cd0" [label="/bin/sh -c apk add cvs openssl busybox-extras" shape="box"];
  "sha256:76c18f17b167e9eec74649c054ab173c810f58e9a9805cc05c5efe4b070c72f3" [label="local://context" shape="ellipse"];
  "sha256:cabcd22c776a6b938069050aed52545084aab872c8d2e38322b01321f2d4a3f1" [label="copy{src=/files/inetd.conf, dest=/etc/inetd.conf}" shape="note"];
  "sha256:5456c7a731c12a15224c40442190670d75ea69cefa4a45f1298589e36584b2c2" [label="copy{src=/files/run.sh, dest=/}" shape="note"];
  "sha256:6924580813b6ca70138fb93d688e021015d7495e9b8dcda63f5190d2f2b107b1" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:8b1ca10d45e4b83500f9242d691b6d52175581f40444a4ccd80e044b985845b8" [label="/bin/sh -c echo \"cvspserver 2401/tcp\" >> /etc/services" shape="box"];
  "sha256:9dace795b763f125eecb543b95483f3c8b5b2b14d82eea0e3e43ce4b1a853f86" [label="/bin/sh -c mkdir /var/cvsroot" shape="box"];
  "sha256:16a3b9c3624097082b42f4379b26eb0764204eaf291670df49902edf4d4c5f8c" [label="sha256:16a3b9c3624097082b42f4379b26eb0764204eaf291670df49902edf4d4c5f8c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:2d3493ebbbcf978d3bc1cd741b14f762e7e8cc62985b967de50986176ba06cd0" [label=""];
  "sha256:2d3493ebbbcf978d3bc1cd741b14f762e7e8cc62985b967de50986176ba06cd0" -> "sha256:cabcd22c776a6b938069050aed52545084aab872c8d2e38322b01321f2d4a3f1" [label=""];
  "sha256:76c18f17b167e9eec74649c054ab173c810f58e9a9805cc05c5efe4b070c72f3" -> "sha256:cabcd22c776a6b938069050aed52545084aab872c8d2e38322b01321f2d4a3f1" [label=""];
  "sha256:cabcd22c776a6b938069050aed52545084aab872c8d2e38322b01321f2d4a3f1" -> "sha256:5456c7a731c12a15224c40442190670d75ea69cefa4a45f1298589e36584b2c2" [label=""];
  "sha256:76c18f17b167e9eec74649c054ab173c810f58e9a9805cc05c5efe4b070c72f3" -> "sha256:5456c7a731c12a15224c40442190670d75ea69cefa4a45f1298589e36584b2c2" [label=""];
  "sha256:5456c7a731c12a15224c40442190670d75ea69cefa4a45f1298589e36584b2c2" -> "sha256:6924580813b6ca70138fb93d688e021015d7495e9b8dcda63f5190d2f2b107b1" [label=""];
  "sha256:6924580813b6ca70138fb93d688e021015d7495e9b8dcda63f5190d2f2b107b1" -> "sha256:8b1ca10d45e4b83500f9242d691b6d52175581f40444a4ccd80e044b985845b8" [label=""];
  "sha256:8b1ca10d45e4b83500f9242d691b6d52175581f40444a4ccd80e044b985845b8" -> "sha256:9dace795b763f125eecb543b95483f3c8b5b2b14d82eea0e3e43ce4b1a853f86" [label=""];
  "sha256:9dace795b763f125eecb543b95483f3c8b5b2b14d82eea0e3e43ce4b1a853f86" -> "sha256:16a3b9c3624097082b42f4379b26eb0764204eaf291670df49902edf4d4c5f8c" [label=""];
}

