[app/sources/476668874.Dockerfile]
digraph {
  "sha256:409fc430dadf5fd5e44a23914f9c2f012d0517062650adf538a4ea9e9a8532ab" [label="local://context" shape="ellipse"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:88915600a89fcd5fbbf53bbfbde81a97527090db6cd6959f68b4a7f0bcf6947c" [label="copy{src=/sources.list.trusty, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:6e663aec7089d6060cbf8ae3d4d3008c6729a9f1d16c0ab857e16280b4d8ceb9" [label="/bin/sh -c apt-get  update" shape="box"];
  "sha256:08bd9866d866eefbe9458aeeeb7aefa841afcfd02b680773efbad883f35b3f1b" [label="/bin/sh -c apt-get install -y --force-yes ruby" shape="box"];
  "sha256:cc3771980a968e8af5c5ac4b5e91221d8c58e8f6abfe309e5b2ea9ad74331878" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:30d7567935fd8dd07546f09258c3b016fec20454fe4cf75a3e9ebebac668e5f3" [label="sha256:30d7567935fd8dd07546f09258c3b016fec20454fe4cf75a3e9ebebac668e5f3" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:88915600a89fcd5fbbf53bbfbde81a97527090db6cd6959f68b4a7f0bcf6947c" [label=""];
  "sha256:409fc430dadf5fd5e44a23914f9c2f012d0517062650adf538a4ea9e9a8532ab" -> "sha256:88915600a89fcd5fbbf53bbfbde81a97527090db6cd6959f68b4a7f0bcf6947c" [label=""];
  "sha256:88915600a89fcd5fbbf53bbfbde81a97527090db6cd6959f68b4a7f0bcf6947c" -> "sha256:6e663aec7089d6060cbf8ae3d4d3008c6729a9f1d16c0ab857e16280b4d8ceb9" [label=""];
  "sha256:6e663aec7089d6060cbf8ae3d4d3008c6729a9f1d16c0ab857e16280b4d8ceb9" -> "sha256:08bd9866d866eefbe9458aeeeb7aefa841afcfd02b680773efbad883f35b3f1b" [label=""];
  "sha256:08bd9866d866eefbe9458aeeeb7aefa841afcfd02b680773efbad883f35b3f1b" -> "sha256:cc3771980a968e8af5c5ac4b5e91221d8c58e8f6abfe309e5b2ea9ad74331878" [label=""];
  "sha256:cc3771980a968e8af5c5ac4b5e91221d8c58e8f6abfe309e5b2ea9ad74331878" -> "sha256:30d7567935fd8dd07546f09258c3b016fec20454fe4cf75a3e9ebebac668e5f3" [label=""];
}

