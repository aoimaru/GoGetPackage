[app/sources/341713700.Dockerfile]
digraph {
  "sha256:14d01b185136b625f6b736680c5842c502b85ecd6c558087c166b03ae82229a2" [label="docker-image://docker.io/tensorflow/tensorflow:1.4.0" shape="ellipse"];
  "sha256:29f71e01264598b7076df7cd9ec73c6aed75b4a2848e115c00003c971a42f100" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7b44c9c2630b2454d963b2d313d2054bb1de64486a1a9aaf09d9d0f2f3e5976f" [label="/bin/sh -c apt-get -y install maven openjdk-8-jdk" shape="box"];
  "sha256:144ed92589598e930f5707e7fe2339fe1364ad35551e3e3882d7ddb6d8d020f2" [label="/bin/sh -c mvn dependency:get -Dartifact=org.tensorflow:tensorflow:1.4.0" shape="box"];
  "sha256:4721e9085ef1f362da6e83c710e3d9d10c631f2b091d3867c868f411419e2b2e" [label="/bin/sh -c mvn dependency:get -Dartifact=org.tensorflow:proto:1.4.0" shape="box"];
  "sha256:2b43b5f07c93206d7f9d035a47d3c63103839a0868f537b07b4056586c087ed9" [label="sha256:2b43b5f07c93206d7f9d035a47d3c63103839a0868f537b07b4056586c087ed9" shape="plaintext"];
  "sha256:14d01b185136b625f6b736680c5842c502b85ecd6c558087c166b03ae82229a2" -> "sha256:29f71e01264598b7076df7cd9ec73c6aed75b4a2848e115c00003c971a42f100" [label=""];
  "sha256:29f71e01264598b7076df7cd9ec73c6aed75b4a2848e115c00003c971a42f100" -> "sha256:7b44c9c2630b2454d963b2d313d2054bb1de64486a1a9aaf09d9d0f2f3e5976f" [label=""];
  "sha256:7b44c9c2630b2454d963b2d313d2054bb1de64486a1a9aaf09d9d0f2f3e5976f" -> "sha256:144ed92589598e930f5707e7fe2339fe1364ad35551e3e3882d7ddb6d8d020f2" [label=""];
  "sha256:144ed92589598e930f5707e7fe2339fe1364ad35551e3e3882d7ddb6d8d020f2" -> "sha256:4721e9085ef1f362da6e83c710e3d9d10c631f2b091d3867c868f411419e2b2e" [label=""];
  "sha256:4721e9085ef1f362da6e83c710e3d9d10c631f2b091d3867c868f411419e2b2e" -> "sha256:2b43b5f07c93206d7f9d035a47d3c63103839a0868f537b07b4056586c087ed9" [label=""];
}

