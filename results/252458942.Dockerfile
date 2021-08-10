[app/sources/252458942.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:a326ec9fed17f37af1d7adbefff180ebde97918ba74ad64858b71e61eb106067" [label="local://context" shape="ellipse"];
  "sha256:881bca9c55e9e5b09668ce1659d6a05ccea492c97bc3802514f67a4e2c2ab5f6" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:b904bd3d2910d58116dc0fcf3b9484e2dbe1d8206c7f61c9946bfdcd62f32eac" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:e735f822f598f8ac9b71862933e74d94c805e1670e207071b9f124a766d77bbb" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:a6214b0f0fe7d5b136975dbdd741088012df4de3705402a33cd700e727cadbca" [label="sha256:a6214b0f0fe7d5b136975dbdd741088012df4de3705402a33cd700e727cadbca" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:881bca9c55e9e5b09668ce1659d6a05ccea492c97bc3802514f67a4e2c2ab5f6" [label=""];
  "sha256:a326ec9fed17f37af1d7adbefff180ebde97918ba74ad64858b71e61eb106067" -> "sha256:881bca9c55e9e5b09668ce1659d6a05ccea492c97bc3802514f67a4e2c2ab5f6" [label=""];
  "sha256:881bca9c55e9e5b09668ce1659d6a05ccea492c97bc3802514f67a4e2c2ab5f6" -> "sha256:b904bd3d2910d58116dc0fcf3b9484e2dbe1d8206c7f61c9946bfdcd62f32eac" [label=""];
  "sha256:b904bd3d2910d58116dc0fcf3b9484e2dbe1d8206c7f61c9946bfdcd62f32eac" -> "sha256:e735f822f598f8ac9b71862933e74d94c805e1670e207071b9f124a766d77bbb" [label=""];
  "sha256:e735f822f598f8ac9b71862933e74d94c805e1670e207071b9f124a766d77bbb" -> "sha256:a6214b0f0fe7d5b136975dbdd741088012df4de3705402a33cd700e727cadbca" [label=""];
}

