[app/sources/269910434.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" [label="mkdir{path=/app}" shape="note"];
  "sha256:d5d40502415f1d9b91cd2151d8acba19b1a8c0eb0b1ef709894ef0201f244fe1" [label="local://context" shape="ellipse"];
  "sha256:a2adec5d88ec9a0d671748fecd3c642c725b87eae1e564baafb6fdb063318a35" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:f9f4c1d969b66343b5f2c76f4678cb2f984178de29542e44fad0cd63719bd1dd" [label="/bin/sh -c npm install" shape="box"];
  "sha256:12a383aac86247671856868967a6ac0e94b3a67100d7a7a454ca9188e7a992e0" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:70739bba685685970accb02b9edba91117fc35bdbfe030c473a2d2c6912c906f" [label="sha256:70739bba685685970accb02b9edba91117fc35bdbfe030c473a2d2c6912c906f" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" [label=""];
  "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" -> "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" [label=""];
  "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" -> "sha256:a2adec5d88ec9a0d671748fecd3c642c725b87eae1e564baafb6fdb063318a35" [label=""];
  "sha256:d5d40502415f1d9b91cd2151d8acba19b1a8c0eb0b1ef709894ef0201f244fe1" -> "sha256:a2adec5d88ec9a0d671748fecd3c642c725b87eae1e564baafb6fdb063318a35" [label=""];
  "sha256:a2adec5d88ec9a0d671748fecd3c642c725b87eae1e564baafb6fdb063318a35" -> "sha256:f9f4c1d969b66343b5f2c76f4678cb2f984178de29542e44fad0cd63719bd1dd" [label=""];
  "sha256:f9f4c1d969b66343b5f2c76f4678cb2f984178de29542e44fad0cd63719bd1dd" -> "sha256:12a383aac86247671856868967a6ac0e94b3a67100d7a7a454ca9188e7a992e0" [label=""];
  "sha256:d5d40502415f1d9b91cd2151d8acba19b1a8c0eb0b1ef709894ef0201f244fe1" -> "sha256:12a383aac86247671856868967a6ac0e94b3a67100d7a7a454ca9188e7a992e0" [label=""];
  "sha256:12a383aac86247671856868967a6ac0e94b3a67100d7a7a454ca9188e7a992e0" -> "sha256:70739bba685685970accb02b9edba91117fc35bdbfe030c473a2d2c6912c906f" [label=""];
}

