[app/sources/359693429.Dockerfile]
digraph {
  "sha256:892d05fbad953946761816ed9ce5cec49783b6f96bf63a9f8fc350819eae519a" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" [label="/bin/sh -c apk add --no-cache \tbash \tca-certificates" shape="box"];
  "sha256:d15c1707bc402c1fbe4d46751ea95c0066261efd72adf2eeef1922bb57bb41ec" [label="copy{src=/, dest=/go/src/github.com/jessfraz/s3server}" shape="note"];
  "sha256:5a9d6c45e1ee28c51d7f54730c4444229d90b8af44ed29894c45411f9ce21768" [label="/bin/sh -c set -x \t&& apk add --no-cache --virtual .build-deps \t\tgit \t\tgcc \t\tlibc-dev \t\tlibgcc \t\tmake \t&& cd /go/src/github.com/jessfraz/s3server \t&& make static \t&& mv s3server /usr/bin/s3server \t&& apk del .build-deps \t&& rm -rf /go \t&& echo \"Build complete.\"" shape="box"];
  "sha256:ba505a9ed8df31dea86ab11bbbda6e14626b7624497938accf13ce1ab56a73f1" [label="copy{src=/usr/bin/s3server, dest=/usr/bin/s3server}" shape="note"];
  "sha256:d17d0b65d7028162af7923f6e1ca979b851da0f8855a6b9e77d5727ac3a6757e" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:dfa05cc2c299d9e661831881f10a386606c58b2c464b63b8c4f1377beaf45080" [label="copy{src=/static, dest=/static}" shape="note"];
  "sha256:3c5036177e0200f040d561048cdb09fb72a3be5657a26008bc6df1a8f61c6e34" [label="copy{src=/templates, dest=/templates}" shape="note"];
  "sha256:bd324e1a5a5d13aa0fbcdc1213858622282a3c1bc47d6c70a36d8591fe58fcf5" [label="sha256:bd324e1a5a5d13aa0fbcdc1213858622282a3c1bc47d6c70a36d8591fe58fcf5" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" [label=""];
  "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" -> "sha256:d15c1707bc402c1fbe4d46751ea95c0066261efd72adf2eeef1922bb57bb41ec" [label=""];
  "sha256:892d05fbad953946761816ed9ce5cec49783b6f96bf63a9f8fc350819eae519a" -> "sha256:d15c1707bc402c1fbe4d46751ea95c0066261efd72adf2eeef1922bb57bb41ec" [label=""];
  "sha256:d15c1707bc402c1fbe4d46751ea95c0066261efd72adf2eeef1922bb57bb41ec" -> "sha256:5a9d6c45e1ee28c51d7f54730c4444229d90b8af44ed29894c45411f9ce21768" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ba505a9ed8df31dea86ab11bbbda6e14626b7624497938accf13ce1ab56a73f1" [label=""];
  "sha256:5a9d6c45e1ee28c51d7f54730c4444229d90b8af44ed29894c45411f9ce21768" -> "sha256:ba505a9ed8df31dea86ab11bbbda6e14626b7624497938accf13ce1ab56a73f1" [label=""];
  "sha256:ba505a9ed8df31dea86ab11bbbda6e14626b7624497938accf13ce1ab56a73f1" -> "sha256:d17d0b65d7028162af7923f6e1ca979b851da0f8855a6b9e77d5727ac3a6757e" [label=""];
  "sha256:5a9d6c45e1ee28c51d7f54730c4444229d90b8af44ed29894c45411f9ce21768" -> "sha256:d17d0b65d7028162af7923f6e1ca979b851da0f8855a6b9e77d5727ac3a6757e" [label=""];
  "sha256:d17d0b65d7028162af7923f6e1ca979b851da0f8855a6b9e77d5727ac3a6757e" -> "sha256:dfa05cc2c299d9e661831881f10a386606c58b2c464b63b8c4f1377beaf45080" [label=""];
  "sha256:892d05fbad953946761816ed9ce5cec49783b6f96bf63a9f8fc350819eae519a" -> "sha256:dfa05cc2c299d9e661831881f10a386606c58b2c464b63b8c4f1377beaf45080" [label=""];
  "sha256:dfa05cc2c299d9e661831881f10a386606c58b2c464b63b8c4f1377beaf45080" -> "sha256:3c5036177e0200f040d561048cdb09fb72a3be5657a26008bc6df1a8f61c6e34" [label=""];
  "sha256:892d05fbad953946761816ed9ce5cec49783b6f96bf63a9f8fc350819eae519a" -> "sha256:3c5036177e0200f040d561048cdb09fb72a3be5657a26008bc6df1a8f61c6e34" [label=""];
  "sha256:3c5036177e0200f040d561048cdb09fb72a3be5657a26008bc6df1a8f61c6e34" -> "sha256:bd324e1a5a5d13aa0fbcdc1213858622282a3c1bc47d6c70a36d8591fe58fcf5" [label=""];
}

