[app/sources/183526682.Dockerfile]
digraph {
  "sha256:d2e02c66c912d09417a6b8f6827a8585d91c31a4f03855009a54d70dbe98b6c1" [label="local://context" shape="ellipse"];
  "sha256:bb8a8435a6278b6f7aeb1041b2819df726b061abd17e4db51f08d3974bfeba31" [label="docker-image://docker.io/library/postfix-forwarder-base:latest" shape="ellipse"];
  "sha256:c7c358ae9267b26473fa6d2fff3eb80394e913633f091792063be1de18159823" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     less     man     emacs23-nox     procps" shape="box"];
  "sha256:793ee9d1b0cc38c123cfff1397d822f058120d7a8edb6e1e7615a53bd4e76198" [label="copy{src=/, dest=/opt}" shape="note"];
  "sha256:eb102a38bb198af69bd57c175f221836ebaa10fa6b05e1add7105910289b5df0" [label="sha256:eb102a38bb198af69bd57c175f221836ebaa10fa6b05e1add7105910289b5df0" shape="plaintext"];
  "sha256:bb8a8435a6278b6f7aeb1041b2819df726b061abd17e4db51f08d3974bfeba31" -> "sha256:c7c358ae9267b26473fa6d2fff3eb80394e913633f091792063be1de18159823" [label=""];
  "sha256:c7c358ae9267b26473fa6d2fff3eb80394e913633f091792063be1de18159823" -> "sha256:793ee9d1b0cc38c123cfff1397d822f058120d7a8edb6e1e7615a53bd4e76198" [label=""];
  "sha256:d2e02c66c912d09417a6b8f6827a8585d91c31a4f03855009a54d70dbe98b6c1" -> "sha256:793ee9d1b0cc38c123cfff1397d822f058120d7a8edb6e1e7615a53bd4e76198" [label=""];
  "sha256:793ee9d1b0cc38c123cfff1397d822f058120d7a8edb6e1e7615a53bd4e76198" -> "sha256:eb102a38bb198af69bd57c175f221836ebaa10fa6b05e1add7105910289b5df0" [label=""];
}

