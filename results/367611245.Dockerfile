[app/sources/367611245.Dockerfile]
digraph {
  "sha256:eed7b99a2c65d18b236926b5927d0633ba55c7138138648079515d8e5281c2f9" [label="docker-image://docker.io/gliderlabs/alpine:edge" shape="ellipse"];
  "sha256:09c7033c287782d4cd4bf483045b4cea66786449c6af988893b2e67e5fc15651" [label="/bin/sh -c apk --update add redis &&  rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9f3c3633ac736a78335030d5fedee7c9aae9c4b1038bcd1640633fcf003fdcd7" [label="local://context" shape="ellipse"];
  "sha256:81340f9e9704bfaeaf1934d398e8fd1671c7e6d1285d70cc7e855ef0eb529504" [label="copy{src=/run.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:0b103d8a2cd6aae1f94d55dc49b9545578f996c0c200f0d8ce5fb3a0bd2bcc48" [label="mkdir{path=/data}" shape="note"];
  "sha256:1a251950ffd5e9f923bf760c00c09719b9cbea14415dcccab6b5593ee4c24e4b" [label="sha256:1a251950ffd5e9f923bf760c00c09719b9cbea14415dcccab6b5593ee4c24e4b" shape="plaintext"];
  "sha256:eed7b99a2c65d18b236926b5927d0633ba55c7138138648079515d8e5281c2f9" -> "sha256:09c7033c287782d4cd4bf483045b4cea66786449c6af988893b2e67e5fc15651" [label=""];
  "sha256:09c7033c287782d4cd4bf483045b4cea66786449c6af988893b2e67e5fc15651" -> "sha256:81340f9e9704bfaeaf1934d398e8fd1671c7e6d1285d70cc7e855ef0eb529504" [label=""];
  "sha256:9f3c3633ac736a78335030d5fedee7c9aae9c4b1038bcd1640633fcf003fdcd7" -> "sha256:81340f9e9704bfaeaf1934d398e8fd1671c7e6d1285d70cc7e855ef0eb529504" [label=""];
  "sha256:81340f9e9704bfaeaf1934d398e8fd1671c7e6d1285d70cc7e855ef0eb529504" -> "sha256:0b103d8a2cd6aae1f94d55dc49b9545578f996c0c200f0d8ce5fb3a0bd2bcc48" [label=""];
  "sha256:0b103d8a2cd6aae1f94d55dc49b9545578f996c0c200f0d8ce5fb3a0bd2bcc48" -> "sha256:1a251950ffd5e9f923bf760c00c09719b9cbea14415dcccab6b5593ee4c24e4b" [label=""];
}

