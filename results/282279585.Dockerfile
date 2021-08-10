[app/sources/282279585.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:89fb4744dacc5a74d384a679907895944ee66e8ab709c5139744ccaf6a06d31b" [label="local://context" shape="ellipse"];
  "sha256:808e04c71934fae8b244e6665488079768f34112150525689205a95e72c91c2a" [label="copy{src=/env, dest=/usr/local/bin/env}" shape="note"];
  "sha256:f576167707a5776d41855c01f37070c74eed9d00f918652f3d4ae8c34f350de5" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:d8263628c9bff9875b0dfbe440ce1c106849db1ee267c7c45711bc5458cd6c46" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:bf9727b0e4819515aa3bc600d13a2cb41bcb5711d7494887f8e435c709848af3" [label="/bin/sh -c wget -O- \"http://downloads.lightbend.com/scala/2.10.2/scala-2.10.2.tgz\"     | tar xzf - -C /usr/local --strip-components=1" shape="box"];
  "sha256:0adda6b9d0422664a3f115820337f6f9b1eddc350873a1c49d4412aa6ff50f4b" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:bd46e5abfcf8982a13cfd6fca0cf79b762579bf6565f8d91924f3794e85b82a2" [label="mkdir{path=/app}" shape="note"];
  "sha256:0fc26311ae90f344f8100052756c0bc17121216f5d0e2b6cb6de62c6c12d842b" [label="sha256:0fc26311ae90f344f8100052756c0bc17121216f5d0e2b6cb6de62c6c12d842b" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:808e04c71934fae8b244e6665488079768f34112150525689205a95e72c91c2a" [label=""];
  "sha256:89fb4744dacc5a74d384a679907895944ee66e8ab709c5139744ccaf6a06d31b" -> "sha256:808e04c71934fae8b244e6665488079768f34112150525689205a95e72c91c2a" [label=""];
  "sha256:808e04c71934fae8b244e6665488079768f34112150525689205a95e72c91c2a" -> "sha256:f576167707a5776d41855c01f37070c74eed9d00f918652f3d4ae8c34f350de5" [label=""];
  "sha256:f576167707a5776d41855c01f37070c74eed9d00f918652f3d4ae8c34f350de5" -> "sha256:d8263628c9bff9875b0dfbe440ce1c106849db1ee267c7c45711bc5458cd6c46" [label=""];
  "sha256:d8263628c9bff9875b0dfbe440ce1c106849db1ee267c7c45711bc5458cd6c46" -> "sha256:bf9727b0e4819515aa3bc600d13a2cb41bcb5711d7494887f8e435c709848af3" [label=""];
  "sha256:bf9727b0e4819515aa3bc600d13a2cb41bcb5711d7494887f8e435c709848af3" -> "sha256:0adda6b9d0422664a3f115820337f6f9b1eddc350873a1c49d4412aa6ff50f4b" [label=""];
  "sha256:0adda6b9d0422664a3f115820337f6f9b1eddc350873a1c49d4412aa6ff50f4b" -> "sha256:bd46e5abfcf8982a13cfd6fca0cf79b762579bf6565f8d91924f3794e85b82a2" [label=""];
  "sha256:bd46e5abfcf8982a13cfd6fca0cf79b762579bf6565f8d91924f3794e85b82a2" -> "sha256:0fc26311ae90f344f8100052756c0bc17121216f5d0e2b6cb6de62c6c12d842b" [label=""];
}

