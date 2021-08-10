[app/sources/358899979.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:a5de6454a70bae13fade75ff4fa86fe77425434d85041cc40e8eb7ab3df9f91a" [label="mkdir{path=/go/src/hotmid}" shape="note"];
  "sha256:ac25239fcb0518abbba4cd9f7fbffeff7002110b735b54d26b292c76601102a6" [label="local://context" shape="ellipse"];
  "sha256:bad2ff1812d747df66431be381f85a0d0bf23b0f757c0b1f4c34eb9c195b457d" [label="copy{src=/*.go, dest=/go/src/hotmid/}" shape="note"];
  "sha256:ca9331658db33c6b93c7990c0122252a2ecabbc72613a9d69c415aec21b10efd" [label="/bin/sh -c apk update     && apk add --no-cache git     && go get -d ./...     && apk del git" shape="box"];
  "sha256:16bef875413ae299430970177b0cf053e19dd39355fa7af34d7684fd9fa7fc25" [label="/bin/sh -c go install ./..." shape="box"];
  "sha256:e483217fbd1c399a4fe07df1f88cf5800a1a926ab2bb3138b2377c12a5f7538c" [label="sha256:e483217fbd1c399a4fe07df1f88cf5800a1a926ab2bb3138b2377c12a5f7538c" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:a5de6454a70bae13fade75ff4fa86fe77425434d85041cc40e8eb7ab3df9f91a" [label=""];
  "sha256:a5de6454a70bae13fade75ff4fa86fe77425434d85041cc40e8eb7ab3df9f91a" -> "sha256:bad2ff1812d747df66431be381f85a0d0bf23b0f757c0b1f4c34eb9c195b457d" [label=""];
  "sha256:ac25239fcb0518abbba4cd9f7fbffeff7002110b735b54d26b292c76601102a6" -> "sha256:bad2ff1812d747df66431be381f85a0d0bf23b0f757c0b1f4c34eb9c195b457d" [label=""];
  "sha256:bad2ff1812d747df66431be381f85a0d0bf23b0f757c0b1f4c34eb9c195b457d" -> "sha256:ca9331658db33c6b93c7990c0122252a2ecabbc72613a9d69c415aec21b10efd" [label=""];
  "sha256:ca9331658db33c6b93c7990c0122252a2ecabbc72613a9d69c415aec21b10efd" -> "sha256:16bef875413ae299430970177b0cf053e19dd39355fa7af34d7684fd9fa7fc25" [label=""];
  "sha256:16bef875413ae299430970177b0cf053e19dd39355fa7af34d7684fd9fa7fc25" -> "sha256:e483217fbd1c399a4fe07df1f88cf5800a1a926ab2bb3138b2377c12a5f7538c" [label=""];
}

