[app/sources/176627585.Dockerfile]
digraph {
  "sha256:e592cdfdac012d8e33fc1e3e8eafd8102271b37be3377cadd3ef8fe6cb11d617" [label="local://context" shape="ellipse"];
  "sha256:fcbea7db0579a9260ec5ff0b10fe4be0b619f04e6e250cfd462fe9c22eba3865" [label="docker-image://docker.io/syncloud/rootfs-amd64:latest" shape="ellipse"];
  "sha256:bff355d1823138555af220baad046ec65047810b8b3291d4c2a9d778ee47031a" [label="copy{src=/deps.sh, dest=/}" shape="note"];
  "sha256:794f63e704d90cb566c24aa119e52a2e76d1127d54abc164fb3bffaa07a90a5f" [label="copy{src=/install-sam.sh, dest=/}" shape="note"];
  "sha256:66fe796bba50e0b664c77dab910046e5abb80e54ca1d6be3e6449234adba509f" [label="copy{src=/install-s3cmd.sh, dest=/}" shape="note"];
  "sha256:0c48ab3b50816d4868fdf79a5c3e25efac8b8fb40087b5980e753d3ae062af9b" [label="/bin/sh -c /deps.sh" shape="box"];
  "sha256:e490c4bbb41307545ec352ecec45f76a918298b4016eec26521211a3475679d2" [label="sha256:e490c4bbb41307545ec352ecec45f76a918298b4016eec26521211a3475679d2" shape="plaintext"];
  "sha256:fcbea7db0579a9260ec5ff0b10fe4be0b619f04e6e250cfd462fe9c22eba3865" -> "sha256:bff355d1823138555af220baad046ec65047810b8b3291d4c2a9d778ee47031a" [label=""];
  "sha256:e592cdfdac012d8e33fc1e3e8eafd8102271b37be3377cadd3ef8fe6cb11d617" -> "sha256:bff355d1823138555af220baad046ec65047810b8b3291d4c2a9d778ee47031a" [label=""];
  "sha256:bff355d1823138555af220baad046ec65047810b8b3291d4c2a9d778ee47031a" -> "sha256:794f63e704d90cb566c24aa119e52a2e76d1127d54abc164fb3bffaa07a90a5f" [label=""];
  "sha256:e592cdfdac012d8e33fc1e3e8eafd8102271b37be3377cadd3ef8fe6cb11d617" -> "sha256:794f63e704d90cb566c24aa119e52a2e76d1127d54abc164fb3bffaa07a90a5f" [label=""];
  "sha256:794f63e704d90cb566c24aa119e52a2e76d1127d54abc164fb3bffaa07a90a5f" -> "sha256:66fe796bba50e0b664c77dab910046e5abb80e54ca1d6be3e6449234adba509f" [label=""];
  "sha256:e592cdfdac012d8e33fc1e3e8eafd8102271b37be3377cadd3ef8fe6cb11d617" -> "sha256:66fe796bba50e0b664c77dab910046e5abb80e54ca1d6be3e6449234adba509f" [label=""];
  "sha256:66fe796bba50e0b664c77dab910046e5abb80e54ca1d6be3e6449234adba509f" -> "sha256:0c48ab3b50816d4868fdf79a5c3e25efac8b8fb40087b5980e753d3ae062af9b" [label=""];
  "sha256:0c48ab3b50816d4868fdf79a5c3e25efac8b8fb40087b5980e753d3ae062af9b" -> "sha256:e490c4bbb41307545ec352ecec45f76a918298b4016eec26521211a3475679d2" [label=""];
}

