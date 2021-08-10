[app/sources/195659812.Dockerfile]
digraph {
  "sha256:d4206abec32e23fc23f305e7e6c43a1bbf5785571711ee000f8bb1c7b39ded73" [label="docker-image://docker.io/library/golang:1.12-stretch" shape="ellipse"];
  "sha256:24c757e525f4b0d47e246359c40882555a75a0af8acafe6df02ee5d44fcaf2f8" [label="mkdir{path=/go/src/github.com/alifarah9/echoip}" shape="note"];
  "sha256:473bd3ef60cd0f448c68d184352e5483a3f536fd28441e413445cdd5f66cf3a5" [label="local://context" shape="ellipse"];
  "sha256:566a405649a42aa792a0d31fa03395270b537196c2114ad760a84d6a9e58c547" [label="copy{src=/, dest=/go/src/github.com/alifarah9/echoip/}" shape="note"];
  "sha256:f2d9c7310337ccba96fe03607018dea2c58ba13044bf06924b319f733ab64274" [label="/bin/sh -c make" shape="box"];
  "sha256:70773e6000ba76e973aead821514f7303674456a6a2968fd55b7c93cb7a14cbb" [label="copy{src=/go/bin/echoip, dest=/opt/echoip/},copy{src=/go/src/github.com/alifarah9/echoip/index.html, dest=/opt/echoip/}" shape="note"];
  "sha256:368486bb8e6cb0b19bee48a1a4c68c9d30a1789df742ffef0e7ae03b35678e76" [label="mkdir{path=/opt/echoip}" shape="note"];
  "sha256:2a895e7dfa79061203f24caad473a31630d9b0aa2628bde934db6aa79dd05107" [label="sha256:2a895e7dfa79061203f24caad473a31630d9b0aa2628bde934db6aa79dd05107" shape="plaintext"];
  "sha256:d4206abec32e23fc23f305e7e6c43a1bbf5785571711ee000f8bb1c7b39ded73" -> "sha256:24c757e525f4b0d47e246359c40882555a75a0af8acafe6df02ee5d44fcaf2f8" [label=""];
  "sha256:24c757e525f4b0d47e246359c40882555a75a0af8acafe6df02ee5d44fcaf2f8" -> "sha256:566a405649a42aa792a0d31fa03395270b537196c2114ad760a84d6a9e58c547" [label=""];
  "sha256:473bd3ef60cd0f448c68d184352e5483a3f536fd28441e413445cdd5f66cf3a5" -> "sha256:566a405649a42aa792a0d31fa03395270b537196c2114ad760a84d6a9e58c547" [label=""];
  "sha256:566a405649a42aa792a0d31fa03395270b537196c2114ad760a84d6a9e58c547" -> "sha256:f2d9c7310337ccba96fe03607018dea2c58ba13044bf06924b319f733ab64274" [label=""];
  "sha256:f2d9c7310337ccba96fe03607018dea2c58ba13044bf06924b319f733ab64274" -> "sha256:70773e6000ba76e973aead821514f7303674456a6a2968fd55b7c93cb7a14cbb" [label=""];
  "sha256:70773e6000ba76e973aead821514f7303674456a6a2968fd55b7c93cb7a14cbb" -> "sha256:368486bb8e6cb0b19bee48a1a4c68c9d30a1789df742ffef0e7ae03b35678e76" [label=""];
  "sha256:368486bb8e6cb0b19bee48a1a4c68c9d30a1789df742ffef0e7ae03b35678e76" -> "sha256:2a895e7dfa79061203f24caad473a31630d9b0aa2628bde934db6aa79dd05107" [label=""];
}

