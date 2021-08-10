[app/sources/240469363.Dockerfile]
digraph {
  "sha256:77eb4ab5ccb7ccf6971f4181cd239a4442bbf2a00a3bf549ca7b963522201127" [label="docker-image://docker.io/bigtruedata/scala:2.11.9-alpine" shape="ellipse"];
  "sha256:b52798bdb22262187389ad11d381470a9ec9341d9bbe0f836bd5eeb16ee2bde8" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:48db572405bdc7fbc09e115205282c30e4c149595fe6ba6b059ee22bdf338463" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.2/sbt-1.0.2.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:929b26c6eae84c36d29b8ac6439b96ac6429d9218e4350fc60dee3b85cc7486b" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:9a9073cf22fd9abedf08d8c5d9ed777a18d135f3f980db1575a44bab59571779" [label="mkdir{path=/app}" shape="note"];
  "sha256:acac368f8721c94c5efca57163d0fa9cc699f4020eb238ba70f08fa51484d161" [label="sha256:acac368f8721c94c5efca57163d0fa9cc699f4020eb238ba70f08fa51484d161" shape="plaintext"];
  "sha256:77eb4ab5ccb7ccf6971f4181cd239a4442bbf2a00a3bf549ca7b963522201127" -> "sha256:b52798bdb22262187389ad11d381470a9ec9341d9bbe0f836bd5eeb16ee2bde8" [label=""];
  "sha256:b52798bdb22262187389ad11d381470a9ec9341d9bbe0f836bd5eeb16ee2bde8" -> "sha256:48db572405bdc7fbc09e115205282c30e4c149595fe6ba6b059ee22bdf338463" [label=""];
  "sha256:48db572405bdc7fbc09e115205282c30e4c149595fe6ba6b059ee22bdf338463" -> "sha256:929b26c6eae84c36d29b8ac6439b96ac6429d9218e4350fc60dee3b85cc7486b" [label=""];
  "sha256:929b26c6eae84c36d29b8ac6439b96ac6429d9218e4350fc60dee3b85cc7486b" -> "sha256:9a9073cf22fd9abedf08d8c5d9ed777a18d135f3f980db1575a44bab59571779" [label=""];
  "sha256:9a9073cf22fd9abedf08d8c5d9ed777a18d135f3f980db1575a44bab59571779" -> "sha256:acac368f8721c94c5efca57163d0fa9cc699f4020eb238ba70f08fa51484d161" [label=""];
}

