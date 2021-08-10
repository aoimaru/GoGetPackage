[app/sources/309737329.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:bc0f6d4990247f211ff0a82fc6c06d2c7716e5d5dda2f0ed43d8fd14c143a128" [label="docker-image://docker.io/library/golang:1.10.0-alpine3.7" shape="ellipse"];
  "sha256:a2009ca7d4dcaccc5227e3b935667863bf690205f22da7f64f408bb90168a44f" [label="/bin/sh -c apk add --no-cache gcc cyrus-sasl cyrus-sasl-dev musl-dev" shape="box"];
  "sha256:1f9f2812d95c3e0893ba6059b501bfb50367036a6710bedcb2118abc9ba8fad1" [label="/bin/sh -c mkdir -p /go/src/github.com/tulip/oplogtoredis" shape="box"];
  "sha256:3393fc4ac7e25c28bef40ece5a3c3a5e5b93b4e1d845c3c3f72eb84cec3ef6d3" [label="mkdir{path=/go/src/github.com/tulip/oplogtoredis}" shape="note"];
  "sha256:b160a3ba5ccf5f4ff59d2bb1ebda3738074c3446e69f235ac7e0962082fc0ab5" [label="local://context" shape="ellipse"];
  "sha256:697b5753aebb99a1b822d12fa2ed5da18215f27efab1df8f4daf42f3371f6be3" [label="copy{src=/, dest=/go/src/github.com/tulip/oplogtoredis/}" shape="note"];
  "sha256:631dda86c841d9a45dfa8b2c9b388d6e93b56d9a6b0706b56996f3588803e5fa" [label="/bin/sh -c go build -o app" shape="box"];
  "sha256:19da930f05d523440d4744920bb501c9da84464febc4707b2b8933b530a67a25" [label="copy{src=/go/src/github.com/tulip/oplogtoredis/app, dest=/bin/oplogtoredis}" shape="note"];
  "sha256:95fb8499380062988a6611c3cc33c7e80950080c4bcbe780a2576011140cc39b" [label="sha256:95fb8499380062988a6611c3cc33c7e80950080c4bcbe780a2576011140cc39b" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" [label=""];
  "sha256:bc0f6d4990247f211ff0a82fc6c06d2c7716e5d5dda2f0ed43d8fd14c143a128" -> "sha256:a2009ca7d4dcaccc5227e3b935667863bf690205f22da7f64f408bb90168a44f" [label=""];
  "sha256:a2009ca7d4dcaccc5227e3b935667863bf690205f22da7f64f408bb90168a44f" -> "sha256:1f9f2812d95c3e0893ba6059b501bfb50367036a6710bedcb2118abc9ba8fad1" [label=""];
  "sha256:1f9f2812d95c3e0893ba6059b501bfb50367036a6710bedcb2118abc9ba8fad1" -> "sha256:3393fc4ac7e25c28bef40ece5a3c3a5e5b93b4e1d845c3c3f72eb84cec3ef6d3" [label=""];
  "sha256:3393fc4ac7e25c28bef40ece5a3c3a5e5b93b4e1d845c3c3f72eb84cec3ef6d3" -> "sha256:697b5753aebb99a1b822d12fa2ed5da18215f27efab1df8f4daf42f3371f6be3" [label=""];
  "sha256:b160a3ba5ccf5f4ff59d2bb1ebda3738074c3446e69f235ac7e0962082fc0ab5" -> "sha256:697b5753aebb99a1b822d12fa2ed5da18215f27efab1df8f4daf42f3371f6be3" [label=""];
  "sha256:697b5753aebb99a1b822d12fa2ed5da18215f27efab1df8f4daf42f3371f6be3" -> "sha256:631dda86c841d9a45dfa8b2c9b388d6e93b56d9a6b0706b56996f3588803e5fa" [label=""];
  "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" -> "sha256:19da930f05d523440d4744920bb501c9da84464febc4707b2b8933b530a67a25" [label=""];
  "sha256:631dda86c841d9a45dfa8b2c9b388d6e93b56d9a6b0706b56996f3588803e5fa" -> "sha256:19da930f05d523440d4744920bb501c9da84464febc4707b2b8933b530a67a25" [label=""];
  "sha256:19da930f05d523440d4744920bb501c9da84464febc4707b2b8933b530a67a25" -> "sha256:95fb8499380062988a6611c3cc33c7e80950080c4bcbe780a2576011140cc39b" [label=""];
}

