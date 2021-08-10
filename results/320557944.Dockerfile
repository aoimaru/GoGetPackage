[app/sources/320557944.Dockerfile]
digraph {
  "sha256:2ac1446e27efdc06ddd690b42d29eb3b1bf4aa133facccd89f1344a5cba52a0c" [label="docker-image://docker.io/arm64v8/alpine:3.9@sha256:f920ccc826134587fffcf1ddc6b2a554947e0f1a5ae5264bbf3435da5b2e8e61" shape="ellipse"];
  "sha256:196c71be7554f49a35fe264bf101692b283066a60e99b4bd912497acb4e55361" [label="local://context" shape="ellipse"];
  "sha256:8800a6852387a39834f7064b29eca59514f6a6d09481473d5599ec90ee1c44b6" [label="copy{src=/docker/linux/arm64v8/iotedge-diagnostics, dest=/iotedge-diagnostics}" shape="note"];
  "sha256:6d3fe71ab0fae17a54afe70065f73c6704f1e3ca02244c93dd29fdf05d9a1b0c" [label="sha256:6d3fe71ab0fae17a54afe70065f73c6704f1e3ca02244c93dd29fdf05d9a1b0c" shape="plaintext"];
  "sha256:2ac1446e27efdc06ddd690b42d29eb3b1bf4aa133facccd89f1344a5cba52a0c" -> "sha256:8800a6852387a39834f7064b29eca59514f6a6d09481473d5599ec90ee1c44b6" [label=""];
  "sha256:196c71be7554f49a35fe264bf101692b283066a60e99b4bd912497acb4e55361" -> "sha256:8800a6852387a39834f7064b29eca59514f6a6d09481473d5599ec90ee1c44b6" [label=""];
  "sha256:8800a6852387a39834f7064b29eca59514f6a6d09481473d5599ec90ee1c44b6" -> "sha256:6d3fe71ab0fae17a54afe70065f73c6704f1e3ca02244c93dd29fdf05d9a1b0c" [label=""];
}

