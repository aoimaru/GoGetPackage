[app/sources/243133351.Dockerfile]
digraph {
  "sha256:fe97f124117132c3a76cda68996ba4db07ae157abd2ea000bbc0d74e98f0e849" [label="docker-image://docker.io/library/node:10.9.0-stretch" shape="ellipse"];
  "sha256:aea82c34a2b84cbdf98c0a1c01c130a42b8c9ccd43866a7556e9ec17aebb2b16" [label="/bin/sh -c apt-get update && apt-get install -y build-essential && \tgit clone https://github.com/jaredhanson/passport-oauth.git && cd passport-oauth && \tnpm install && npm test && \tapt-get purge -y build-essential && apt-get autoremove -y" shape="box"];
  "sha256:d73f43fd4fe82068c96fc910a5509196cdf2587655be99c2ee48c025771e9d02" [label="mkdir{path=/passport-oauth}" shape="note"];
  "sha256:e2b7f00990787f5419c62cc03cfee8e053ec2798f267038dce2c1eb06ee83f3b" [label="sha256:e2b7f00990787f5419c62cc03cfee8e053ec2798f267038dce2c1eb06ee83f3b" shape="plaintext"];
  "sha256:fe97f124117132c3a76cda68996ba4db07ae157abd2ea000bbc0d74e98f0e849" -> "sha256:aea82c34a2b84cbdf98c0a1c01c130a42b8c9ccd43866a7556e9ec17aebb2b16" [label=""];
  "sha256:aea82c34a2b84cbdf98c0a1c01c130a42b8c9ccd43866a7556e9ec17aebb2b16" -> "sha256:d73f43fd4fe82068c96fc910a5509196cdf2587655be99c2ee48c025771e9d02" [label=""];
  "sha256:d73f43fd4fe82068c96fc910a5509196cdf2587655be99c2ee48c025771e9d02" -> "sha256:e2b7f00990787f5419c62cc03cfee8e053ec2798f267038dce2c1eb06ee83f3b" [label=""];
}

