[app/sources/474939039.Dockerfile]
digraph {
  "sha256:57df5b70de895228afcc2d48c4a33476a9568d22c8b59ae7ed9fe5b1805ebac6" [label="docker-image://docker.io/library/node:lts-jessie" shape="ellipse"];
  "sha256:aa2f07d79800a410e6f2392f02c63541b86456e6dfb85165eea5865619554a97" [label="/bin/sh -c mkdir -p /usr/src/poinz/public" shape="box"];
  "sha256:b7eeb0feaccd1a21816ff18b41b4948d883a68c2f7f4daff1709bfc350f28bb0" [label="/bin/sh -c mkdir -p /usr/src/poinz/lib" shape="box"];
  "sha256:ab25ac43454f6e6cf41996e563a54f01a7f0fe1c912aca6872da77b7d4f24d0d" [label="mkdir{path=/usr/src/poinz}" shape="note"];
  "sha256:29d3eec0e652915cfb0e0c93bff97cc40289d4cd50ec3edbc6298c3208a29f3c" [label="local://context" shape="ellipse"];
  "sha256:76391ffa82685f9f9c199c0da85a353fe385d903d01cd036c62c88bcee8180f2" [label="copy{src=/deploy/public, dest=/usr/src/poinz/public}" shape="note"];
  "sha256:b1a6c72e0bafde75f270efb675307f704315aaec5b21865981922836d74d7844" [label="copy{src=/deploy/lib, dest=/usr/src/poinz/lib}" shape="note"];
  "sha256:f2925732c4d7733050b128fea0b76f301002700ae41816a1f92150839a308c62" [label="copy{src=/deploy/resources, dest=/usr/src/poinz/resources}" shape="note"];
  "sha256:d45edf784de4af8f279623168c1920b3a64b9ebd76a6025ec1f08e2511f32531" [label="copy{src=/deploy/package.json, dest=/usr/src/poinz/}" shape="note"];
  "sha256:6018e036c52c0af13f91f0848535d625007a0aead3f40e5bf16b30e3495ff627" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:4647b218709d6e6aa9c5d1cc4f0f245f585c0b3696b5740b1b2410534bc3ceed" [label="sha256:4647b218709d6e6aa9c5d1cc4f0f245f585c0b3696b5740b1b2410534bc3ceed" shape="plaintext"];
  "sha256:57df5b70de895228afcc2d48c4a33476a9568d22c8b59ae7ed9fe5b1805ebac6" -> "sha256:aa2f07d79800a410e6f2392f02c63541b86456e6dfb85165eea5865619554a97" [label=""];
  "sha256:aa2f07d79800a410e6f2392f02c63541b86456e6dfb85165eea5865619554a97" -> "sha256:b7eeb0feaccd1a21816ff18b41b4948d883a68c2f7f4daff1709bfc350f28bb0" [label=""];
  "sha256:b7eeb0feaccd1a21816ff18b41b4948d883a68c2f7f4daff1709bfc350f28bb0" -> "sha256:ab25ac43454f6e6cf41996e563a54f01a7f0fe1c912aca6872da77b7d4f24d0d" [label=""];
  "sha256:ab25ac43454f6e6cf41996e563a54f01a7f0fe1c912aca6872da77b7d4f24d0d" -> "sha256:76391ffa82685f9f9c199c0da85a353fe385d903d01cd036c62c88bcee8180f2" [label=""];
  "sha256:29d3eec0e652915cfb0e0c93bff97cc40289d4cd50ec3edbc6298c3208a29f3c" -> "sha256:76391ffa82685f9f9c199c0da85a353fe385d903d01cd036c62c88bcee8180f2" [label=""];
  "sha256:76391ffa82685f9f9c199c0da85a353fe385d903d01cd036c62c88bcee8180f2" -> "sha256:b1a6c72e0bafde75f270efb675307f704315aaec5b21865981922836d74d7844" [label=""];
  "sha256:29d3eec0e652915cfb0e0c93bff97cc40289d4cd50ec3edbc6298c3208a29f3c" -> "sha256:b1a6c72e0bafde75f270efb675307f704315aaec5b21865981922836d74d7844" [label=""];
  "sha256:b1a6c72e0bafde75f270efb675307f704315aaec5b21865981922836d74d7844" -> "sha256:f2925732c4d7733050b128fea0b76f301002700ae41816a1f92150839a308c62" [label=""];
  "sha256:29d3eec0e652915cfb0e0c93bff97cc40289d4cd50ec3edbc6298c3208a29f3c" -> "sha256:f2925732c4d7733050b128fea0b76f301002700ae41816a1f92150839a308c62" [label=""];
  "sha256:f2925732c4d7733050b128fea0b76f301002700ae41816a1f92150839a308c62" -> "sha256:d45edf784de4af8f279623168c1920b3a64b9ebd76a6025ec1f08e2511f32531" [label=""];
  "sha256:29d3eec0e652915cfb0e0c93bff97cc40289d4cd50ec3edbc6298c3208a29f3c" -> "sha256:d45edf784de4af8f279623168c1920b3a64b9ebd76a6025ec1f08e2511f32531" [label=""];
  "sha256:d45edf784de4af8f279623168c1920b3a64b9ebd76a6025ec1f08e2511f32531" -> "sha256:6018e036c52c0af13f91f0848535d625007a0aead3f40e5bf16b30e3495ff627" [label=""];
  "sha256:6018e036c52c0af13f91f0848535d625007a0aead3f40e5bf16b30e3495ff627" -> "sha256:4647b218709d6e6aa9c5d1cc4f0f245f585c0b3696b5740b1b2410534bc3ceed" [label=""];
}

