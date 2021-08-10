[app/sources/320953239.Dockerfile]
digraph {
  "sha256:e7f73af527bfa54041da778157002b9c811aab54689722a8856e4822185d1013" [label="docker-image://docker.io/lsiobase/alpine:3.9" shape="ellipse"];
  "sha256:b0be7d5e651d405f573904cb9676e85ca62d9a7aa884e754f4979dc3f096dc02" [label="/bin/sh -c echo \"**** install packages ****\" &&   apk add --no-cache --upgrade     gnupg" shape="box"];
  "sha256:8ea83a00b28b6a8d7b2cb3c2ad5531a791886b29492d32ad48cfad8e2dfab4ff" [label="local://context" shape="ellipse"];
  "sha256:d56912e9653db86a0b97b88edd91f41e859b56cbd58faf730cad35bd359008d2" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:6c8f697ec4bf1141156aa35b8703af13cd769aac77f8629d46651f44221d8996" [label="/bin/sh -c echo \"**** install packages ****\" &&   apk add --no-cache --upgrade     gnupg &&   echo \"**** encode text blob ****\" &&   echo \"${INPUT}\" > /input &&   echo \"${PASS}\" | gpg     --output /enc.gpg     --batch --yes     --pinentry-mode loopback     --passphrase-fd 0 -c /input" shape="box"];
  "sha256:bc539088a95ed4872828b05222a338fc679f8cb79fafbf51a50a10934e923afb" [label="copy{src=/enc.gpg, dest=/enc.gpg}" shape="note"];
  "sha256:8cff37ddbfba4300f06db72079879fffda2a419dd51f1b5e793f60b22ce1636d" [label="sha256:8cff37ddbfba4300f06db72079879fffda2a419dd51f1b5e793f60b22ce1636d" shape="plaintext"];
  "sha256:e7f73af527bfa54041da778157002b9c811aab54689722a8856e4822185d1013" -> "sha256:b0be7d5e651d405f573904cb9676e85ca62d9a7aa884e754f4979dc3f096dc02" [label=""];
  "sha256:b0be7d5e651d405f573904cb9676e85ca62d9a7aa884e754f4979dc3f096dc02" -> "sha256:d56912e9653db86a0b97b88edd91f41e859b56cbd58faf730cad35bd359008d2" [label=""];
  "sha256:8ea83a00b28b6a8d7b2cb3c2ad5531a791886b29492d32ad48cfad8e2dfab4ff" -> "sha256:d56912e9653db86a0b97b88edd91f41e859b56cbd58faf730cad35bd359008d2" [label=""];
  "sha256:e7f73af527bfa54041da778157002b9c811aab54689722a8856e4822185d1013" -> "sha256:6c8f697ec4bf1141156aa35b8703af13cd769aac77f8629d46651f44221d8996" [label=""];
  "sha256:d56912e9653db86a0b97b88edd91f41e859b56cbd58faf730cad35bd359008d2" -> "sha256:bc539088a95ed4872828b05222a338fc679f8cb79fafbf51a50a10934e923afb" [label=""];
  "sha256:6c8f697ec4bf1141156aa35b8703af13cd769aac77f8629d46651f44221d8996" -> "sha256:bc539088a95ed4872828b05222a338fc679f8cb79fafbf51a50a10934e923afb" [label=""];
  "sha256:bc539088a95ed4872828b05222a338fc679f8cb79fafbf51a50a10934e923afb" -> "sha256:8cff37ddbfba4300f06db72079879fffda2a419dd51f1b5e793f60b22ce1636d" [label=""];
}

