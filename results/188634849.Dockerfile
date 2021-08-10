[app/sources/188634849.Dockerfile]
digraph {
  "sha256:131041a45d49cfcef5dc31f0223cabf6b941e0452d4c0bc4621e1ac8b52c9bae" [label="docker-image://docker.io/frolvlad/alpine-glibc:alpine-3.9" shape="ellipse"];
  "sha256:06e8ecac68a1e4cdc423aecbc6da58a8b265a97ae172fe8c3584f420d28f1490" [label="docker-image://docker.io/docker/compose:1.23.2@sha256:f6e4963cd17f709fb57f7cf0842e269ed6ba173c3490055b50c701a257feb860" shape="ellipse"];
  "sha256:3fc1b9df226b85902c018342492fedcff83441f1022b27567a8b7619ae065112" [label="docker-image://docker.io/library/docker:18.09" shape="ellipse"];
  "sha256:7568dde6eeb018901251b7a96dad333f363058e1f18c4c93782ab74d6885c4f5" [label="copy{src=/usr/local/bin/docker, dest=/usr/local/bin/}" shape="note"];
  "sha256:cd00bf11ba9adc27b0e631e18f1997bd6530c12544fa244d2c66eb7c156f8b9c" [label="copy{src=/usr/local/bin/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:e95f4d4dabaf9996866b2c331b31a8b3529c54bd0a95c1ef0c9bf0465f0a632a" [label="copy{src=/usr/local/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:29bee071427d9efc28f05f9156b4f8f3ea15e0d784906fbb8e16a86a85773e37" [label="/bin/sh -c DEPS=\"bash make curl\"     apk add $DEPS" shape="box"];
  "sha256:3ae8d22cf9a694651c1cec9ba34ccd21249cfb2878444763140e84cfd5e9c232" [label="sha256:3ae8d22cf9a694651c1cec9ba34ccd21249cfb2878444763140e84cfd5e9c232" shape="plaintext"];
  "sha256:06e8ecac68a1e4cdc423aecbc6da58a8b265a97ae172fe8c3584f420d28f1490" -> "sha256:7568dde6eeb018901251b7a96dad333f363058e1f18c4c93782ab74d6885c4f5" [label=""];
  "sha256:3fc1b9df226b85902c018342492fedcff83441f1022b27567a8b7619ae065112" -> "sha256:7568dde6eeb018901251b7a96dad333f363058e1f18c4c93782ab74d6885c4f5" [label=""];
  "sha256:7568dde6eeb018901251b7a96dad333f363058e1f18c4c93782ab74d6885c4f5" -> "sha256:cd00bf11ba9adc27b0e631e18f1997bd6530c12544fa244d2c66eb7c156f8b9c" [label=""];
  "sha256:3fc1b9df226b85902c018342492fedcff83441f1022b27567a8b7619ae065112" -> "sha256:cd00bf11ba9adc27b0e631e18f1997bd6530c12544fa244d2c66eb7c156f8b9c" [label=""];
  "sha256:131041a45d49cfcef5dc31f0223cabf6b941e0452d4c0bc4621e1ac8b52c9bae" -> "sha256:e95f4d4dabaf9996866b2c331b31a8b3529c54bd0a95c1ef0c9bf0465f0a632a" [label=""];
  "sha256:cd00bf11ba9adc27b0e631e18f1997bd6530c12544fa244d2c66eb7c156f8b9c" -> "sha256:e95f4d4dabaf9996866b2c331b31a8b3529c54bd0a95c1ef0c9bf0465f0a632a" [label=""];
  "sha256:e95f4d4dabaf9996866b2c331b31a8b3529c54bd0a95c1ef0c9bf0465f0a632a" -> "sha256:29bee071427d9efc28f05f9156b4f8f3ea15e0d784906fbb8e16a86a85773e37" [label=""];
  "sha256:29bee071427d9efc28f05f9156b4f8f3ea15e0d784906fbb8e16a86a85773e37" -> "sha256:3ae8d22cf9a694651c1cec9ba34ccd21249cfb2878444763140e84cfd5e9c232" [label=""];
}

