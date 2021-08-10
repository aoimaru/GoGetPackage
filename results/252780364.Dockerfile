[app/sources/252780364.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:3a6bfe8f57c3a8172387658d809d20d7d017a6943c81e87b65e2298ceecc9390" [label="local://context" shape="ellipse"];
  "sha256:56cd779fc506e1cb22135822f9ad31e06cc5dd314bbb9012edd4920025f24e3d" [label="copy{src=/src, dest=/home/root/helloworldjava/src}" shape="note"];
  "sha256:74d4ea35566e235e36489f065527e98a734c7081a1c8a562b5c5e936f6df85df" [label="mkdir{path=/home/root/helloworldjava}" shape="note"];
  "sha256:af324fc5fd755063bf44ff71e16d19ccc203b99865ac18b89e5c142b6887a3a9" [label="/bin/sh -c mkdir bin" shape="box"];
  "sha256:2f030a29ce02f561ac999dc4924a6bf0441361ddc5324d9c39ab2b6ec4c6a979" [label="/bin/sh -c javac -d bin src/HelloWorld.java" shape="box"];
  "sha256:4763223d5d57cf94d8c1b12f300154b215d6771bac029c678cd732f2de9095de" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:466d565e8ed5f4cd29e5caea8db76600b69fdfc197988290d969e2c8b6395394" [label="sha256:466d565e8ed5f4cd29e5caea8db76600b69fdfc197988290d969e2c8b6395394" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:56cd779fc506e1cb22135822f9ad31e06cc5dd314bbb9012edd4920025f24e3d" [label=""];
  "sha256:3a6bfe8f57c3a8172387658d809d20d7d017a6943c81e87b65e2298ceecc9390" -> "sha256:56cd779fc506e1cb22135822f9ad31e06cc5dd314bbb9012edd4920025f24e3d" [label=""];
  "sha256:56cd779fc506e1cb22135822f9ad31e06cc5dd314bbb9012edd4920025f24e3d" -> "sha256:74d4ea35566e235e36489f065527e98a734c7081a1c8a562b5c5e936f6df85df" [label=""];
  "sha256:74d4ea35566e235e36489f065527e98a734c7081a1c8a562b5c5e936f6df85df" -> "sha256:af324fc5fd755063bf44ff71e16d19ccc203b99865ac18b89e5c142b6887a3a9" [label=""];
  "sha256:af324fc5fd755063bf44ff71e16d19ccc203b99865ac18b89e5c142b6887a3a9" -> "sha256:2f030a29ce02f561ac999dc4924a6bf0441361ddc5324d9c39ab2b6ec4c6a979" [label=""];
  "sha256:2f030a29ce02f561ac999dc4924a6bf0441361ddc5324d9c39ab2b6ec4c6a979" -> "sha256:4763223d5d57cf94d8c1b12f300154b215d6771bac029c678cd732f2de9095de" [label=""];
  "sha256:4763223d5d57cf94d8c1b12f300154b215d6771bac029c678cd732f2de9095de" -> "sha256:466d565e8ed5f4cd29e5caea8db76600b69fdfc197988290d969e2c8b6395394" [label=""];
}

