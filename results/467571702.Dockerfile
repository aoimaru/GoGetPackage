[app/sources/467571702.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9f5ec494f7a9f14fb2cec8f341444f509492505f891e83c64975295d15215597" [label="/bin/sh -c apt-get update && apt-get install -y php5 php5-dev php-pear phpunit" shape="box"];
  "sha256:5a855bf43703dc7f8773c2448415de21e8afb3283a83f27edf2ba2a3e70e5965" [label="sha256:5a855bf43703dc7f8773c2448415de21e8afb3283a83f27edf2ba2a3e70e5965" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f5ec494f7a9f14fb2cec8f341444f509492505f891e83c64975295d15215597" [label=""];
  "sha256:9f5ec494f7a9f14fb2cec8f341444f509492505f891e83c64975295d15215597" -> "sha256:5a855bf43703dc7f8773c2448415de21e8afb3283a83f27edf2ba2a3e70e5965" [label=""];
}

