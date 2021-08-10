[app/sources/277816916.Dockerfile]
digraph {
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" [label="docker-image://docker.io/library/openjdk:alpine" shape="ellipse"];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" [label="local://context" shape="ellipse"];
  "sha256:c909087df370e74700955dcb1a9d31a75183daf10c1f5fe7c8f06b26e7a0376b" [label="copy{src=/pom.xml, dest=/app/}" shape="note"];
  "sha256:5e5c8ba5de5078f7684bd99d995f497bd89076fc631ce7e3dc83763a7dee1f24" [label="copy{src=/jaeger-spark-dependencies, dest=/app/jaeger-spark-dependencies}" shape="note"];
  "sha256:b29552378a25af63eda4f3789c583042b2978ac4c902e4c070c301bc6cc22d04" [label="copy{src=/jaeger-spark-dependencies-cassandra, dest=/app/jaeger-spark-dependencies-cassandra}" shape="note"];
  "sha256:8d6f7d4f946caf6ef28fce3ee7e301cc4b999a04e9be9600c9d27e78101173b8" [label="copy{src=/jaeger-spark-dependencies-elasticsearch, dest=/app/jaeger-spark-dependencies-elasticsearch}" shape="note"];
  "sha256:b718f87a43002e2dfc61682ae47d2baedadab0da706679378b5a1e99cb9ba9b6" [label="copy{src=/jaeger-spark-dependencies-common, dest=/app/jaeger-spark-dependencies-common}" shape="note"];
  "sha256:74d71f2c922ee34ecfdaf16c96806ffe43d0e8362abc9f32fcc7097e3651e853" [label="copy{src=/jaeger-spark-dependencies-test, dest=/app/jaeger-spark-dependencies-test}" shape="note"];
  "sha256:b2cc3939ee4693698a1b242211cb33774bd05aa216c51d2bbaf8266f422e35d2" [label="copy{src=/.mvn, dest=/app/.mvn}" shape="note"];
  "sha256:e705fdb219f9570d11f8cc52e448117da903f313a907023081cdf377abef473b" [label="copy{src=/mvnw, dest=/app/}" shape="note"];
  "sha256:a8c1322128a86c2ff90a01613b113cce06874d94e4d36f6edf944fa7f56bd186" [label="mkdir{path=/app}" shape="note"];
  "sha256:f3fce59783727c4701349ce45e060818fe459dbeeb75d157c70312cdb4b0a440" [label="/bin/sh -c ./mvnw package -Dlicense.skip=true -DskipTests && rm -rf ~/.m2" shape="box"];
  "sha256:d632b47fd5abf85af99745996c4e3c697ffeff9857cb6d1aeed9aec461c553c0" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:da79adf353c9f84a2d97450b2d1975307f1d3b8e29aeee2343edb0631ff563b5" [label="/bin/sh -c chgrp root /etc/passwd && chmod g+rw /etc/passwd" shape="box"];
  "sha256:6923b6d65e0424175b807ba490ce7688dfae5b599229748031dea23bc10dffbc" [label="sha256:6923b6d65e0424175b807ba490ce7688dfae5b599229748031dea23bc10dffbc" shape="plaintext"];
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" -> "sha256:c909087df370e74700955dcb1a9d31a75183daf10c1f5fe7c8f06b26e7a0376b" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:c909087df370e74700955dcb1a9d31a75183daf10c1f5fe7c8f06b26e7a0376b" [label=""];
  "sha256:c909087df370e74700955dcb1a9d31a75183daf10c1f5fe7c8f06b26e7a0376b" -> "sha256:5e5c8ba5de5078f7684bd99d995f497bd89076fc631ce7e3dc83763a7dee1f24" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:5e5c8ba5de5078f7684bd99d995f497bd89076fc631ce7e3dc83763a7dee1f24" [label=""];
  "sha256:5e5c8ba5de5078f7684bd99d995f497bd89076fc631ce7e3dc83763a7dee1f24" -> "sha256:b29552378a25af63eda4f3789c583042b2978ac4c902e4c070c301bc6cc22d04" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:b29552378a25af63eda4f3789c583042b2978ac4c902e4c070c301bc6cc22d04" [label=""];
  "sha256:b29552378a25af63eda4f3789c583042b2978ac4c902e4c070c301bc6cc22d04" -> "sha256:8d6f7d4f946caf6ef28fce3ee7e301cc4b999a04e9be9600c9d27e78101173b8" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:8d6f7d4f946caf6ef28fce3ee7e301cc4b999a04e9be9600c9d27e78101173b8" [label=""];
  "sha256:8d6f7d4f946caf6ef28fce3ee7e301cc4b999a04e9be9600c9d27e78101173b8" -> "sha256:b718f87a43002e2dfc61682ae47d2baedadab0da706679378b5a1e99cb9ba9b6" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:b718f87a43002e2dfc61682ae47d2baedadab0da706679378b5a1e99cb9ba9b6" [label=""];
  "sha256:b718f87a43002e2dfc61682ae47d2baedadab0da706679378b5a1e99cb9ba9b6" -> "sha256:74d71f2c922ee34ecfdaf16c96806ffe43d0e8362abc9f32fcc7097e3651e853" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:74d71f2c922ee34ecfdaf16c96806ffe43d0e8362abc9f32fcc7097e3651e853" [label=""];
  "sha256:74d71f2c922ee34ecfdaf16c96806ffe43d0e8362abc9f32fcc7097e3651e853" -> "sha256:b2cc3939ee4693698a1b242211cb33774bd05aa216c51d2bbaf8266f422e35d2" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:b2cc3939ee4693698a1b242211cb33774bd05aa216c51d2bbaf8266f422e35d2" [label=""];
  "sha256:b2cc3939ee4693698a1b242211cb33774bd05aa216c51d2bbaf8266f422e35d2" -> "sha256:e705fdb219f9570d11f8cc52e448117da903f313a907023081cdf377abef473b" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:e705fdb219f9570d11f8cc52e448117da903f313a907023081cdf377abef473b" [label=""];
  "sha256:e705fdb219f9570d11f8cc52e448117da903f313a907023081cdf377abef473b" -> "sha256:a8c1322128a86c2ff90a01613b113cce06874d94e4d36f6edf944fa7f56bd186" [label=""];
  "sha256:a8c1322128a86c2ff90a01613b113cce06874d94e4d36f6edf944fa7f56bd186" -> "sha256:f3fce59783727c4701349ce45e060818fe459dbeeb75d157c70312cdb4b0a440" [label=""];
  "sha256:f3fce59783727c4701349ce45e060818fe459dbeeb75d157c70312cdb4b0a440" -> "sha256:d632b47fd5abf85af99745996c4e3c697ffeff9857cb6d1aeed9aec461c553c0" [label=""];
  "sha256:cfaaac9b7333aa4f656d0d3c7f07b4ccefcba66aeff65f2f2f44d8845e19b477" -> "sha256:d632b47fd5abf85af99745996c4e3c697ffeff9857cb6d1aeed9aec461c553c0" [label=""];
  "sha256:d632b47fd5abf85af99745996c4e3c697ffeff9857cb6d1aeed9aec461c553c0" -> "sha256:da79adf353c9f84a2d97450b2d1975307f1d3b8e29aeee2343edb0631ff563b5" [label=""];
  "sha256:da79adf353c9f84a2d97450b2d1975307f1d3b8e29aeee2343edb0631ff563b5" -> "sha256:6923b6d65e0424175b807ba490ce7688dfae5b599229748031dea23bc10dffbc" [label=""];
}

