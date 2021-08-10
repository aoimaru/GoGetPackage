[app/sources/203105687.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1cfdc924743162f9888183d6acd4fc98f09d35581e1f47a679b29e03ffb35860" [label="/bin/sh -c apk --no-cache add       busybox       libcrypto1.0       libssl1.0       libuuid       libwebsockets       musl" shape="box"];
  "sha256:8d495c4d82b303756fa285d73a5d9f5e80679e1b6a59bd45109e98360224c445" [label="/bin/sh -c test -n \"${VERSION}\"" shape="box"];
  "sha256:6c80c10c03a91078d513d1a62f1cf2d368d5e60da48fc20b19e7164d779f0c4c" [label="/bin/sh -c apk --no-cache add       build-base       libressl-dev       c-ares-dev       curl       util-linux-dev       libwebsockets-dev       libxslt       python2" shape="box"];
  "sha256:604575eb4ec5263f63c3992bb57b8585bb8fa44d588cef167b0c9b3dcbbc9ef9" [label="/bin/sh -c mkdir -p /build /install &&     curl -SL https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz       | tar --strip=1 -xzC /build &&     make -C /build       WITH_MEMORY_TRACKING=no       WITH_WEBSOCKETS=yes       WITH_SRV=yes       WITH_TLS_PSK=no       WITH_ADNS=no       prefix=/usr       binary &&     make -C /build       prefix=/usr       DESTDIR=\"/install\"       install &&     mv /install/etc/mosquitto/mosquitto.conf.example /install/etc/mosquitto/mosquitto.conf &&     sed -i -e 's/#log_dest stderr/log_dest syslog/' /install/etc/mosquitto/mosquitto.conf" shape="box"];
  "sha256:ae07b012eba9b113141ad39bde9c4be7ff2ad84e57d0f2ca08d32e078d95149c" [label="copy{src=/install, dest=/}" shape="note"];
  "sha256:a67c6b3fe72324667e55526151af02ecddcfce6c4307d8ff21de9d79219dc24c" [label="/bin/sh -c addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto" shape="box"];
  "sha256:4893f95f6235db121de41611575d1389e144ac33a7e7a3ec5249b76af16184ca" [label="local://context" shape="ellipse"];
  "sha256:2e8e87e9204ecb5a1130ba0cfde88b68cf70385c8e9974fffa6149c0c4dce897" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:c19846f0b2f5480eab6edb17335865e753f77a4e6a202f67207c9fe66ee261d1" [label="sha256:c19846f0b2f5480eab6edb17335865e753f77a4e6a202f67207c9fe66ee261d1" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1cfdc924743162f9888183d6acd4fc98f09d35581e1f47a679b29e03ffb35860" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8d495c4d82b303756fa285d73a5d9f5e80679e1b6a59bd45109e98360224c445" [label=""];
  "sha256:8d495c4d82b303756fa285d73a5d9f5e80679e1b6a59bd45109e98360224c445" -> "sha256:6c80c10c03a91078d513d1a62f1cf2d368d5e60da48fc20b19e7164d779f0c4c" [label=""];
  "sha256:6c80c10c03a91078d513d1a62f1cf2d368d5e60da48fc20b19e7164d779f0c4c" -> "sha256:604575eb4ec5263f63c3992bb57b8585bb8fa44d588cef167b0c9b3dcbbc9ef9" [label=""];
  "sha256:1cfdc924743162f9888183d6acd4fc98f09d35581e1f47a679b29e03ffb35860" -> "sha256:ae07b012eba9b113141ad39bde9c4be7ff2ad84e57d0f2ca08d32e078d95149c" [label=""];
  "sha256:604575eb4ec5263f63c3992bb57b8585bb8fa44d588cef167b0c9b3dcbbc9ef9" -> "sha256:ae07b012eba9b113141ad39bde9c4be7ff2ad84e57d0f2ca08d32e078d95149c" [label=""];
  "sha256:ae07b012eba9b113141ad39bde9c4be7ff2ad84e57d0f2ca08d32e078d95149c" -> "sha256:a67c6b3fe72324667e55526151af02ecddcfce6c4307d8ff21de9d79219dc24c" [label=""];
  "sha256:a67c6b3fe72324667e55526151af02ecddcfce6c4307d8ff21de9d79219dc24c" -> "sha256:2e8e87e9204ecb5a1130ba0cfde88b68cf70385c8e9974fffa6149c0c4dce897" [label=""];
  "sha256:4893f95f6235db121de41611575d1389e144ac33a7e7a3ec5249b76af16184ca" -> "sha256:2e8e87e9204ecb5a1130ba0cfde88b68cf70385c8e9974fffa6149c0c4dce897" [label=""];
  "sha256:2e8e87e9204ecb5a1130ba0cfde88b68cf70385c8e9974fffa6149c0c4dce897" -> "sha256:c19846f0b2f5480eab6edb17335865e753f77a4e6a202f67207c9fe66ee261d1" [label=""];
}

