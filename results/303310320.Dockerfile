[app/sources/303310320.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" [label="docker-image://docker.io/library/maven:latest" shape="ellipse"];
  "sha256:06261df890a6680efaf94c283271b6b45fd6b7bc104065c3701b0c7f15133dc3" [label="mkdir{path=/app}" shape="note"];
  "sha256:59d9aa18e41fb6c0ea7e241673039565f0bfd5e5236bdb23eea475ea40b21808" [label="local://context" shape="ellipse"];
  "sha256:c93a9d0c9becc661b562f1202a5b1456a59475a5421cb7ea92d1b6e620ac7de3" [label="copy{src=/pom.xml, dest=/app/}" shape="note"];
  "sha256:d5234dea951beea71fa99ace9eb092babc1744c17500916173e661406e17d39d" [label="/bin/sh -c mvn verify --fail-never" shape="box"];
  "sha256:2a51c787219d396883348cad53b3c72e865445c3498af9f146b2d5e6b683fbbf" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:1f83f2f5b642d7da1811b742f5453798692c5618a3f5b4582229494a0a6dd10f" [label="/bin/sh -c mvn -Dmaven.test.skip=true package" shape="box"];
  "sha256:715a13168358b9ef7cffc77c28b7dafe6bdcee217d2808297c55d3eba96554d5" [label="copy{src=/app/target, dest=/app/}" shape="note"];
  "sha256:7206e8033a9696b5e6c7dff0736606065e2d76c989bf7e976b7f7f6acd84f16a" [label="sha256:7206e8033a9696b5e6c7dff0736606065e2d76c989bf7e976b7f7f6acd84f16a" shape="plaintext"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" -> "sha256:06261df890a6680efaf94c283271b6b45fd6b7bc104065c3701b0c7f15133dc3" [label=""];
  "sha256:06261df890a6680efaf94c283271b6b45fd6b7bc104065c3701b0c7f15133dc3" -> "sha256:c93a9d0c9becc661b562f1202a5b1456a59475a5421cb7ea92d1b6e620ac7de3" [label=""];
  "sha256:59d9aa18e41fb6c0ea7e241673039565f0bfd5e5236bdb23eea475ea40b21808" -> "sha256:c93a9d0c9becc661b562f1202a5b1456a59475a5421cb7ea92d1b6e620ac7de3" [label=""];
  "sha256:c93a9d0c9becc661b562f1202a5b1456a59475a5421cb7ea92d1b6e620ac7de3" -> "sha256:d5234dea951beea71fa99ace9eb092babc1744c17500916173e661406e17d39d" [label=""];
  "sha256:d5234dea951beea71fa99ace9eb092babc1744c17500916173e661406e17d39d" -> "sha256:2a51c787219d396883348cad53b3c72e865445c3498af9f146b2d5e6b683fbbf" [label=""];
  "sha256:59d9aa18e41fb6c0ea7e241673039565f0bfd5e5236bdb23eea475ea40b21808" -> "sha256:2a51c787219d396883348cad53b3c72e865445c3498af9f146b2d5e6b683fbbf" [label=""];
  "sha256:2a51c787219d396883348cad53b3c72e865445c3498af9f146b2d5e6b683fbbf" -> "sha256:1f83f2f5b642d7da1811b742f5453798692c5618a3f5b4582229494a0a6dd10f" [label=""];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:715a13168358b9ef7cffc77c28b7dafe6bdcee217d2808297c55d3eba96554d5" [label=""];
  "sha256:1f83f2f5b642d7da1811b742f5453798692c5618a3f5b4582229494a0a6dd10f" -> "sha256:715a13168358b9ef7cffc77c28b7dafe6bdcee217d2808297c55d3eba96554d5" [label=""];
  "sha256:715a13168358b9ef7cffc77c28b7dafe6bdcee217d2808297c55d3eba96554d5" -> "sha256:7206e8033a9696b5e6c7dff0736606065e2d76c989bf7e976b7f7f6acd84f16a" [label=""];
}

