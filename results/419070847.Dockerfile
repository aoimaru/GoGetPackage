[app/sources/419070847.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:72a4056504b38ab71884a727e4ef15d9deb4b9ced1488407533705dee682abe0" [label="mkdir{path=/build}" shape="note"];
  "sha256:3750181d9a3a06dca7e65fdb924b6cc1cd1b618929a88e9c93a9a2c5d6d0b6fa" [label="local://context" shape="ellipse"];
  "sha256:92781c048cb2f2fff39258a9addcfc8fd74f02573fec421ff5481eeadab47419" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:254241313f757e8c4e636d863e9c51e9f7cd92c0a192868c13571f05ef5f50e8" [label="/bin/sh -c apk add git cmake gcc g++ make libuv-dev glib-dev intltool" shape="box"];
  "sha256:0ee3c64388c8e1473978eb0e34dae8b078265c365f1ee39fc37e26b9888c34a0" [label="/bin/sh -c mkdir depends &&  cd depends &&  wget https://dl.bintray.com/alligatormon/generic/cutter-1.2.6.tar.gz &&  tar xvzf cutter-1.2.6.tar.gz &&  cd cutter-1.2.6 &&  ./configure --prefix=/usr && ls && make && ls && make install" shape="box"];
  "sha256:6ea9f2cf7bca12469afb19a33402d026afa25eb619c6bc5c08112d12794869b2" [label="/bin/sh -c cd src && cmake . && make && cutter ." shape="box"];
  "sha256:f249fe9635bef7a97394e58edfa3f233603b391bd66ef7af67d7c5a430b37819" [label="copy{src=/build/src/alligator, dest=/usr/bin/alligator}" shape="note"];
  "sha256:9d1cea43c6712193366e1f9e54e813a1fca0883712fdfefae46af92ddc3ac7dc" [label="sha256:9d1cea43c6712193366e1f9e54e813a1fca0883712fdfefae46af92ddc3ac7dc" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:72a4056504b38ab71884a727e4ef15d9deb4b9ced1488407533705dee682abe0" [label=""];
  "sha256:72a4056504b38ab71884a727e4ef15d9deb4b9ced1488407533705dee682abe0" -> "sha256:92781c048cb2f2fff39258a9addcfc8fd74f02573fec421ff5481eeadab47419" [label=""];
  "sha256:3750181d9a3a06dca7e65fdb924b6cc1cd1b618929a88e9c93a9a2c5d6d0b6fa" -> "sha256:92781c048cb2f2fff39258a9addcfc8fd74f02573fec421ff5481eeadab47419" [label=""];
  "sha256:92781c048cb2f2fff39258a9addcfc8fd74f02573fec421ff5481eeadab47419" -> "sha256:254241313f757e8c4e636d863e9c51e9f7cd92c0a192868c13571f05ef5f50e8" [label=""];
  "sha256:254241313f757e8c4e636d863e9c51e9f7cd92c0a192868c13571f05ef5f50e8" -> "sha256:0ee3c64388c8e1473978eb0e34dae8b078265c365f1ee39fc37e26b9888c34a0" [label=""];
  "sha256:0ee3c64388c8e1473978eb0e34dae8b078265c365f1ee39fc37e26b9888c34a0" -> "sha256:6ea9f2cf7bca12469afb19a33402d026afa25eb619c6bc5c08112d12794869b2" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f249fe9635bef7a97394e58edfa3f233603b391bd66ef7af67d7c5a430b37819" [label=""];
  "sha256:6ea9f2cf7bca12469afb19a33402d026afa25eb619c6bc5c08112d12794869b2" -> "sha256:f249fe9635bef7a97394e58edfa3f233603b391bd66ef7af67d7c5a430b37819" [label=""];
  "sha256:f249fe9635bef7a97394e58edfa3f233603b391bd66ef7af67d7c5a430b37819" -> "sha256:9d1cea43c6712193366e1f9e54e813a1fca0883712fdfefae46af92ddc3ac7dc" [label=""];
}

