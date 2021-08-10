[app/sources/252773470.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d30d2db9bb3ad7b498f879c68b50531fbee5d34e8dc09e6db874eb755a727c58" [label="/bin/sh -c adduser -S -D -H -h /xmrig miner" shape="box"];
  "sha256:42cc3c6734e077c71b2290c30bfe069fd415378c74a4195e4d4fa66263ec117b" [label="/bin/sh -c apk --no-cache upgrade && apk --no-cache add git cmake libuv-dev build-base libmicrohttpd-dev && git clone https://github.com/xmrig/xmrig && cd xmrig && mkdir build && cmake -DCMAKE_BUILD_TYPE=Release . && make && apk del build-base cmake git" shape="box"];
  "sha256:6ffbf2e4729c0dfc9aad4e62834ff176eef60578b3793afbe75ab97bdaac97a8" [label="mkdir{path=/xmrig}" shape="note"];
  "sha256:accd1d78e3cdf336c06cd1389a1df80fbeaf64f5a00caa41119352ba73ba7fa2" [label="sha256:accd1d78e3cdf336c06cd1389a1df80fbeaf64f5a00caa41119352ba73ba7fa2" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d30d2db9bb3ad7b498f879c68b50531fbee5d34e8dc09e6db874eb755a727c58" [label=""];
  "sha256:d30d2db9bb3ad7b498f879c68b50531fbee5d34e8dc09e6db874eb755a727c58" -> "sha256:42cc3c6734e077c71b2290c30bfe069fd415378c74a4195e4d4fa66263ec117b" [label=""];
  "sha256:42cc3c6734e077c71b2290c30bfe069fd415378c74a4195e4d4fa66263ec117b" -> "sha256:6ffbf2e4729c0dfc9aad4e62834ff176eef60578b3793afbe75ab97bdaac97a8" [label=""];
  "sha256:6ffbf2e4729c0dfc9aad4e62834ff176eef60578b3793afbe75ab97bdaac97a8" -> "sha256:accd1d78e3cdf336c06cd1389a1df80fbeaf64f5a00caa41119352ba73ba7fa2" [label=""];
}

