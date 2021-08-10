[app/sources/407803181.Dockerfile]
digraph {
  "sha256:f3d8216f58dce016b2769f3444d29e6400c240e1ca30740080e208ed710cf387" [label="docker-image://docker.io/library/openjdk:8u131-jdk-alpine" shape="ellipse"];
  "sha256:b8948bb7de5136ba07dac0d25901372d0769f2a8e625479b51955503d4da23c7" [label="http://repo2.maven.org/maven2/com/h2database/h2/1.4.196/h2-1.4.196.jar" shape="ellipse"];
  "sha256:599276aa0ddc86d831d8e8a1c1558d8035bf971f4a5add49f874ef9a996837ad" [label="copy{src=/h2-1.4.196.jar, dest=/root/h2-1.4.196.jar}" shape="note"];
  "sha256:2af0834992ae1391659e1fb8f9fc693642b3a919a1824b675b243fca0eb899cf" [label="/bin/sh -c mkdir -p ${DATA_DIR}" shape="box"];
  "sha256:34eeffb2812f854c51d790b076403a1073d2e389251cedfca4b12f60b864f458" [label="sha256:34eeffb2812f854c51d790b076403a1073d2e389251cedfca4b12f60b864f458" shape="plaintext"];
  "sha256:f3d8216f58dce016b2769f3444d29e6400c240e1ca30740080e208ed710cf387" -> "sha256:599276aa0ddc86d831d8e8a1c1558d8035bf971f4a5add49f874ef9a996837ad" [label=""];
  "sha256:b8948bb7de5136ba07dac0d25901372d0769f2a8e625479b51955503d4da23c7" -> "sha256:599276aa0ddc86d831d8e8a1c1558d8035bf971f4a5add49f874ef9a996837ad" [label=""];
  "sha256:599276aa0ddc86d831d8e8a1c1558d8035bf971f4a5add49f874ef9a996837ad" -> "sha256:2af0834992ae1391659e1fb8f9fc693642b3a919a1824b675b243fca0eb899cf" [label=""];
  "sha256:2af0834992ae1391659e1fb8f9fc693642b3a919a1824b675b243fca0eb899cf" -> "sha256:34eeffb2812f854c51d790b076403a1073d2e389251cedfca4b12f60b864f458" [label=""];
}

