[app/sources/317097715.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:c3028dd5035de60162d6db153868fb877818c36d6735c4956374ba137d86a0ea" [label="/bin/sh -c mkdir -p /etc/patroneos" shape="box"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:003bd0c231f4c6c579b2d26e5bff45b22486e9c4f7b75d6635301e8ab0ff0a94" [label="local://context" shape="ellipse"];
  "sha256:f9194e20489ca0ff2c88badb873c10da570b3b1e7fb24ba7ffca1456b2cb681f" [label="copy{src=/, dest=/repo}" shape="note"];
  "sha256:a8c7649e548b1c7ee55852d48de360b0193fabd485957ca5b47f7046d54f2857" [label="/bin/sh -c cd /repo && go build -o patroneosd *.go" shape="box"];
  "sha256:662f31031509a2172c478ba3244da4b9c1802a971e1cfc826089298cec3828d7" [label="copy{src=/repo/patroneosd, dest=/usr/bin/patroneosd}" shape="note"];
  "sha256:0d6c488768f2be06fe48f4bfa6e8af0d0cb30f5554b9d7b4415ebcc2d8f96912" [label="copy{src=/docker/filter/config.json, dest=/etc/patroneos/config.json}" shape="note"];
  "sha256:79a63cf87890e4dac8df7a44c128a176866afaaf219dbd0345733424c7af230f" [label="mkdir{path=/etc/patroneos}" shape="note"];
  "sha256:a9d381c35d930f2ff4a9e3a20d565203805f1b2fefd07b1c65ca843566feb8c5" [label="sha256:a9d381c35d930f2ff4a9e3a20d565203805f1b2fefd07b1c65ca843566feb8c5" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:c3028dd5035de60162d6db153868fb877818c36d6735c4956374ba137d86a0ea" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:f9194e20489ca0ff2c88badb873c10da570b3b1e7fb24ba7ffca1456b2cb681f" [label=""];
  "sha256:003bd0c231f4c6c579b2d26e5bff45b22486e9c4f7b75d6635301e8ab0ff0a94" -> "sha256:f9194e20489ca0ff2c88badb873c10da570b3b1e7fb24ba7ffca1456b2cb681f" [label=""];
  "sha256:f9194e20489ca0ff2c88badb873c10da570b3b1e7fb24ba7ffca1456b2cb681f" -> "sha256:a8c7649e548b1c7ee55852d48de360b0193fabd485957ca5b47f7046d54f2857" [label=""];
  "sha256:c3028dd5035de60162d6db153868fb877818c36d6735c4956374ba137d86a0ea" -> "sha256:662f31031509a2172c478ba3244da4b9c1802a971e1cfc826089298cec3828d7" [label=""];
  "sha256:a8c7649e548b1c7ee55852d48de360b0193fabd485957ca5b47f7046d54f2857" -> "sha256:662f31031509a2172c478ba3244da4b9c1802a971e1cfc826089298cec3828d7" [label=""];
  "sha256:662f31031509a2172c478ba3244da4b9c1802a971e1cfc826089298cec3828d7" -> "sha256:0d6c488768f2be06fe48f4bfa6e8af0d0cb30f5554b9d7b4415ebcc2d8f96912" [label=""];
  "sha256:003bd0c231f4c6c579b2d26e5bff45b22486e9c4f7b75d6635301e8ab0ff0a94" -> "sha256:0d6c488768f2be06fe48f4bfa6e8af0d0cb30f5554b9d7b4415ebcc2d8f96912" [label=""];
  "sha256:0d6c488768f2be06fe48f4bfa6e8af0d0cb30f5554b9d7b4415ebcc2d8f96912" -> "sha256:79a63cf87890e4dac8df7a44c128a176866afaaf219dbd0345733424c7af230f" [label=""];
  "sha256:79a63cf87890e4dac8df7a44c128a176866afaaf219dbd0345733424c7af230f" -> "sha256:a9d381c35d930f2ff4a9e3a20d565203805f1b2fefd07b1c65ca843566feb8c5" [label=""];
}

