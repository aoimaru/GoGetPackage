[app/sources/468086452.Dockerfile]
digraph {
  "sha256:b417c5826e322934e9ff971ae126b693284b2fe3d3645d0ed1754059f04d0dcc" [label="docker-image://docker.io/fabric8/java-alpine-openjdk8-jre:latest" shape="ellipse"];
  "sha256:2c957f7dc7b93e35d4e580c20ad8984eb12f5a28e6922aa143a0815784611339" [label="local://context" shape="ellipse"];
  "sha256:f87315f47c4086d1bf05254d2ae73039f8432b352df6eeaef16bdff434e66506" [label="copy{src=/target/lib/*, dest=/deployments/lib/}" shape="note"];
  "sha256:ce46b931a7a7b00bd4f561aaee521739558a9eaf43c2df8dc1783b35b1ee497a" [label="copy{src=/target/*-runner.jar, dest=/deployments/app.jar}" shape="note"];
  "sha256:9659c55142c9c77282f30304c37e46a154481c47f8732de0a64818c6a29fa598" [label="sha256:9659c55142c9c77282f30304c37e46a154481c47f8732de0a64818c6a29fa598" shape="plaintext"];
  "sha256:b417c5826e322934e9ff971ae126b693284b2fe3d3645d0ed1754059f04d0dcc" -> "sha256:f87315f47c4086d1bf05254d2ae73039f8432b352df6eeaef16bdff434e66506" [label=""];
  "sha256:2c957f7dc7b93e35d4e580c20ad8984eb12f5a28e6922aa143a0815784611339" -> "sha256:f87315f47c4086d1bf05254d2ae73039f8432b352df6eeaef16bdff434e66506" [label=""];
  "sha256:f87315f47c4086d1bf05254d2ae73039f8432b352df6eeaef16bdff434e66506" -> "sha256:ce46b931a7a7b00bd4f561aaee521739558a9eaf43c2df8dc1783b35b1ee497a" [label=""];
  "sha256:2c957f7dc7b93e35d4e580c20ad8984eb12f5a28e6922aa143a0815784611339" -> "sha256:ce46b931a7a7b00bd4f561aaee521739558a9eaf43c2df8dc1783b35b1ee497a" [label=""];
  "sha256:ce46b931a7a7b00bd4f561aaee521739558a9eaf43c2df8dc1783b35b1ee497a" -> "sha256:9659c55142c9c77282f30304c37e46a154481c47f8732de0a64818c6a29fa598" [label=""];
}

