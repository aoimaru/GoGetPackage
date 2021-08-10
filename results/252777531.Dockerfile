[app/sources/252777531.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:be2acb99d97928579e9b319d1d2e9070c13e5700b33fbddebd26dff68b751660" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:30437ea86dd873b5dbe7d9fb3b1f59f975a3e0ad9e4f0a3bf605348076b613da" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:17f0ba109f92c1aac29f1141b555ab5b30c84ea541a66271c464783476589c51" [label="local://context" shape="ellipse"];
  "sha256:a6c9e2d8bfe6678f2a49ecbd31bb4667db3eefb5a55d93b7949a0a410ad3bf88" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:a8876c10868869387976e231b40fa3b3b91e4d6588571eb0343c6eaa7d4b0aa6" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c74761f21ff9b798e879524aa925428e692b25a10e4f27d55043f774b3027969" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:223f692572a3f9c09488db949ef81bcc1ae0f12743bea4d6ee7f9243d27f2a97" [label="sha256:223f692572a3f9c09488db949ef81bcc1ae0f12743bea4d6ee7f9243d27f2a97" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" [label=""];
  "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" -> "sha256:be2acb99d97928579e9b319d1d2e9070c13e5700b33fbddebd26dff68b751660" [label=""];
  "sha256:be2acb99d97928579e9b319d1d2e9070c13e5700b33fbddebd26dff68b751660" -> "sha256:30437ea86dd873b5dbe7d9fb3b1f59f975a3e0ad9e4f0a3bf605348076b613da" [label=""];
  "sha256:30437ea86dd873b5dbe7d9fb3b1f59f975a3e0ad9e4f0a3bf605348076b613da" -> "sha256:a6c9e2d8bfe6678f2a49ecbd31bb4667db3eefb5a55d93b7949a0a410ad3bf88" [label=""];
  "sha256:17f0ba109f92c1aac29f1141b555ab5b30c84ea541a66271c464783476589c51" -> "sha256:a6c9e2d8bfe6678f2a49ecbd31bb4667db3eefb5a55d93b7949a0a410ad3bf88" [label=""];
  "sha256:a6c9e2d8bfe6678f2a49ecbd31bb4667db3eefb5a55d93b7949a0a410ad3bf88" -> "sha256:a8876c10868869387976e231b40fa3b3b91e4d6588571eb0343c6eaa7d4b0aa6" [label=""];
  "sha256:a8876c10868869387976e231b40fa3b3b91e4d6588571eb0343c6eaa7d4b0aa6" -> "sha256:c74761f21ff9b798e879524aa925428e692b25a10e4f27d55043f774b3027969" [label=""];
  "sha256:17f0ba109f92c1aac29f1141b555ab5b30c84ea541a66271c464783476589c51" -> "sha256:c74761f21ff9b798e879524aa925428e692b25a10e4f27d55043f774b3027969" [label=""];
  "sha256:c74761f21ff9b798e879524aa925428e692b25a10e4f27d55043f774b3027969" -> "sha256:223f692572a3f9c09488db949ef81bcc1ae0f12743bea4d6ee7f9243d27f2a97" [label=""];
}

