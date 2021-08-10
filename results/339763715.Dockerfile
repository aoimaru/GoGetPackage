[app/sources/339763715.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:918fb39ef7c01d5030c2a27b92bd17746a65c8a172725bb2d83ac457320f9c27" [label="/bin/sh -c sed -i 's/http\\:\\/\\/dl-cdn.alpinelinux.org/https\\:\\/\\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories &&   apk add --no-cache     iproute2     docker     dumb-init &&   rm -rf /usr/bin/docker?*" shape="box"];
  "sha256:762861dbd0f6eb0897377e3ee6f4f09450fafecac93521cb9790ddd5417eb30a" [label="local://context" shape="ellipse"];
  "sha256:a5d83f96b00ded095abdff03465b8fe483766f1db47efa95c5f66b207a2b9f58" [label="copy{src=/*.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:76171665524ba8c4c0750d7507d0d491188f77e99808e9c991bc4485ad3fdb89" [label="copy{src=/tests/*.sh, dest=/usr/local/bin/tests/}" shape="note"];
  "sha256:cfe63ca652321933b4f017df8ef738bc1c6fdf3b2cc3fbc1c6a25dfcfd1441c9" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:29d3d2d690c1c50bcdf0bb09f715a319373660ee4656f04a796c88cc610c5246" [label="sha256:29d3d2d690c1c50bcdf0bb09f715a319373660ee4656f04a796c88cc610c5246" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:918fb39ef7c01d5030c2a27b92bd17746a65c8a172725bb2d83ac457320f9c27" [label=""];
  "sha256:918fb39ef7c01d5030c2a27b92bd17746a65c8a172725bb2d83ac457320f9c27" -> "sha256:a5d83f96b00ded095abdff03465b8fe483766f1db47efa95c5f66b207a2b9f58" [label=""];
  "sha256:762861dbd0f6eb0897377e3ee6f4f09450fafecac93521cb9790ddd5417eb30a" -> "sha256:a5d83f96b00ded095abdff03465b8fe483766f1db47efa95c5f66b207a2b9f58" [label=""];
  "sha256:a5d83f96b00ded095abdff03465b8fe483766f1db47efa95c5f66b207a2b9f58" -> "sha256:76171665524ba8c4c0750d7507d0d491188f77e99808e9c991bc4485ad3fdb89" [label=""];
  "sha256:762861dbd0f6eb0897377e3ee6f4f09450fafecac93521cb9790ddd5417eb30a" -> "sha256:76171665524ba8c4c0750d7507d0d491188f77e99808e9c991bc4485ad3fdb89" [label=""];
  "sha256:76171665524ba8c4c0750d7507d0d491188f77e99808e9c991bc4485ad3fdb89" -> "sha256:cfe63ca652321933b4f017df8ef738bc1c6fdf3b2cc3fbc1c6a25dfcfd1441c9" [label=""];
  "sha256:cfe63ca652321933b4f017df8ef738bc1c6fdf3b2cc3fbc1c6a25dfcfd1441c9" -> "sha256:29d3d2d690c1c50bcdf0bb09f715a319373660ee4656f04a796c88cc610c5246" [label=""];
}

