[app/sources/273927827.Dockerfile]
digraph {
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:a752ca08bc5b2b3cc1354ca50f09c46211dd52663d295fd09023a431237dd2b8" shape="ellipse"];
  "sha256:ec8aa4b2e771a635105f440f4fdc6b0ce4a46399d44126cb1511b440a6104794" [label="/bin/sh -c apt-get update &&     apt-get install -y make autoconf automake libtool" shape="box"];
  "sha256:e4300bd2e9348c4398bba01346f45c6ffc2594209e7ffc6459ace5128567e8a3" [label="/bin/sh -c git clone --depth 1 https://github.com/madler/zlib.git" shape="box"];
  "sha256:a53cf90cdd72e5e470fe850dc220f07cef65e469e46dacf322654fbdc6af1368" [label="/bin/sh -c git clone --depth 1 https://github.com/glennrp/libpng.git" shape="box"];
  "sha256:23c2f122417336ae9393296e0716fd4f718b319045f264bebe02fd129884acdb" [label="/bin/sh -c cp libpng/contrib/oss-fuzz/build.sh $SRC" shape="box"];
  "sha256:00fc1765a0b4608b953b1bf5b207cbfc9d48640d13c9501e381ac872529d0000" [label="mkdir{path=/src/libpng}" shape="note"];
  "sha256:1ddf3591fcca2526a3a55cae7e711e1c45cb88638c534bff1dde6085dac77796" [label="sha256:1ddf3591fcca2526a3a55cae7e711e1c45cb88638c534bff1dde6085dac77796" shape="plaintext"];
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" -> "sha256:ec8aa4b2e771a635105f440f4fdc6b0ce4a46399d44126cb1511b440a6104794" [label=""];
  "sha256:ec8aa4b2e771a635105f440f4fdc6b0ce4a46399d44126cb1511b440a6104794" -> "sha256:e4300bd2e9348c4398bba01346f45c6ffc2594209e7ffc6459ace5128567e8a3" [label=""];
  "sha256:e4300bd2e9348c4398bba01346f45c6ffc2594209e7ffc6459ace5128567e8a3" -> "sha256:a53cf90cdd72e5e470fe850dc220f07cef65e469e46dacf322654fbdc6af1368" [label=""];
  "sha256:a53cf90cdd72e5e470fe850dc220f07cef65e469e46dacf322654fbdc6af1368" -> "sha256:23c2f122417336ae9393296e0716fd4f718b319045f264bebe02fd129884acdb" [label=""];
  "sha256:23c2f122417336ae9393296e0716fd4f718b319045f264bebe02fd129884acdb" -> "sha256:00fc1765a0b4608b953b1bf5b207cbfc9d48640d13c9501e381ac872529d0000" [label=""];
  "sha256:00fc1765a0b4608b953b1bf5b207cbfc9d48640d13c9501e381ac872529d0000" -> "sha256:1ddf3591fcca2526a3a55cae7e711e1c45cb88638c534bff1dde6085dac77796" [label=""];
}

