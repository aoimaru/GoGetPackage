[app/sources/436966990.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:e3d7538893f4e5ef1a16a0d61292b51141a0f5af47190c136327ad1d90cf22e2" [label="/bin/sh -c mkdir -p /usr/local/bin" shape="box"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:995d3b24b53e5ee4b988cb2ea67adbef8c93d67507760de80d0dca607c34a59e" [label="mkdir{path=/go/src/github.com/vfreex/gones}" shape="note"];
  "sha256:7f64721bd7bd0091848eafe260da0c63c6fc7c7a45b1bc27ebc38ce1753eed74" [label="/bin/sh -c apt-get update && apt-get install -y libgl1-mesa-dev xorg-dev" shape="box"];
  "sha256:d9d85cf4b4ee69ca94bfebc4f66af917425bd9040db160927afab2e2931da158" [label="local://context" shape="ellipse"];
  "sha256:ca464aed30a817e86bab5b8a1dad0f21515dc8ded3a0814e43e3798bb7adbe63" [label="copy{src=/, dest=/go/src/github.com/vfreex/gones/}" shape="note"];
  "sha256:008608e1950075ddd5cd49f3bce6c371c11aef6e5fa62ee2bdbdd317a3fb2f4d" [label="/bin/sh -c make build" shape="box"];
  "sha256:88073087aff0280e392a646dc70228304f7e9893aa92d13d58a7e9cbeb5858b6" [label="copy{src=/go/src/github.com/vfreex/gones/gones, dest=/usr/local/bin/}" shape="note"];
  "sha256:3a4d9b71b1eb212be883d3ffa8fd7efcde6dd2241b8e034d9905e491287331ff" [label="sha256:3a4d9b71b1eb212be883d3ffa8fd7efcde6dd2241b8e034d9905e491287331ff" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:e3d7538893f4e5ef1a16a0d61292b51141a0f5af47190c136327ad1d90cf22e2" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:995d3b24b53e5ee4b988cb2ea67adbef8c93d67507760de80d0dca607c34a59e" [label=""];
  "sha256:995d3b24b53e5ee4b988cb2ea67adbef8c93d67507760de80d0dca607c34a59e" -> "sha256:7f64721bd7bd0091848eafe260da0c63c6fc7c7a45b1bc27ebc38ce1753eed74" [label=""];
  "sha256:7f64721bd7bd0091848eafe260da0c63c6fc7c7a45b1bc27ebc38ce1753eed74" -> "sha256:ca464aed30a817e86bab5b8a1dad0f21515dc8ded3a0814e43e3798bb7adbe63" [label=""];
  "sha256:d9d85cf4b4ee69ca94bfebc4f66af917425bd9040db160927afab2e2931da158" -> "sha256:ca464aed30a817e86bab5b8a1dad0f21515dc8ded3a0814e43e3798bb7adbe63" [label=""];
  "sha256:ca464aed30a817e86bab5b8a1dad0f21515dc8ded3a0814e43e3798bb7adbe63" -> "sha256:008608e1950075ddd5cd49f3bce6c371c11aef6e5fa62ee2bdbdd317a3fb2f4d" [label=""];
  "sha256:e3d7538893f4e5ef1a16a0d61292b51141a0f5af47190c136327ad1d90cf22e2" -> "sha256:88073087aff0280e392a646dc70228304f7e9893aa92d13d58a7e9cbeb5858b6" [label=""];
  "sha256:008608e1950075ddd5cd49f3bce6c371c11aef6e5fa62ee2bdbdd317a3fb2f4d" -> "sha256:88073087aff0280e392a646dc70228304f7e9893aa92d13d58a7e9cbeb5858b6" [label=""];
  "sha256:88073087aff0280e392a646dc70228304f7e9893aa92d13d58a7e9cbeb5858b6" -> "sha256:3a4d9b71b1eb212be883d3ffa8fd7efcde6dd2241b8e034d9905e491287331ff" [label=""];
}

