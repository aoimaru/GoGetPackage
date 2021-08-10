[app/sources/347568175.Dockerfile]
digraph {
  "sha256:c5b72db51dfb3a2e6a2eca01a48c73e7101b0d834b62a3ed55855d68b29c93e3" [label="docker-image://docker.io/mykiwi/symfony-base:5.6-fpm-alpine@sha256:4a6c678e7169802467f0c52019f3637981198fcc0fb771a9f343d9f1a65d90e9" shape="ellipse"];
  "sha256:443293914711cd51b92fa876a1e45d52487a0241ee0ff99c64ac7d03dec4f94e" [label="/bin/sh -c install-composer.sh &&     curl http://get.sensiolabs.org/melody.phar -o /usr/local/bin/melody &&     chmod a+x /usr/local/bin/melody &&     melody run --trust --no-cache https://gist.github.com/mykiwi/c2c2a416854183aeb6ccf1694e05a8da" shape="box"];
  "sha256:f725585c19b395fef6f7d3359bb9a9b3cc01aa22b1e29fa8ecb3360b01024acc" [label="sha256:f725585c19b395fef6f7d3359bb9a9b3cc01aa22b1e29fa8ecb3360b01024acc" shape="plaintext"];
  "sha256:c5b72db51dfb3a2e6a2eca01a48c73e7101b0d834b62a3ed55855d68b29c93e3" -> "sha256:443293914711cd51b92fa876a1e45d52487a0241ee0ff99c64ac7d03dec4f94e" [label=""];
  "sha256:443293914711cd51b92fa876a1e45d52487a0241ee0ff99c64ac7d03dec4f94e" -> "sha256:f725585c19b395fef6f7d3359bb9a9b3cc01aa22b1e29fa8ecb3360b01024acc" [label=""];
}

