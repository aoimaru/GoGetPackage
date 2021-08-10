[app/sources/443677340.Dockerfile]
digraph {
  "sha256:a2d939784fcdbbbabc3b4d7924a65b69b069322e0defbff15037543e4b0f8687" [label="docker-image://docker.io/codingtony/java:latest" shape="ellipse"];
  "sha256:6f4917860ca4794bdac574819a5235617bfb1aabf001f2b3bccc56a86f44fedd" [label="/bin/sh -c wget https://repository.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.5.0/mule-standalone-3.5.0.tar.gz" shape="box"];
  "sha256:875eb33d3d95115251e0a47a87aff301beb4c89e5195a19de98f8c5f5d1bb199" [label="/bin/sh -c cd /opt && tar xvzf ~/mule-standalone-3.5.0.tar.gz" shape="box"];
  "sha256:e24be3f4281855f2fd56afe6adc3450b351815af4c36588fada2617d01a6d019" [label="/bin/sh -c echo \"4a94356f7401ac8be30a992a414ca9b9 /mule-standalone-3.5.0.tar.gz\" | md5sum -c" shape="box"];
  "sha256:f8be64cdee33c2bd1495555259add019b5ce398ecac84037c06d58a9fbb4261a" [label="/bin/sh -c rm ~/mule-standalone-3.5.0.tar.gz" shape="box"];
  "sha256:8275817bda77120464088f2bf63f006c6a88e030925e6ecdc89936952e2138b2" [label="/bin/sh -c ln -s /opt/mule-standalone-3.5.0 /opt/mule" shape="box"];
  "sha256:115dd9b275f1cff5db11066f2d15420435c98a61c46ed9ef4b4ab1546f3ae6e8" [label="sha256:115dd9b275f1cff5db11066f2d15420435c98a61c46ed9ef4b4ab1546f3ae6e8" shape="plaintext"];
  "sha256:a2d939784fcdbbbabc3b4d7924a65b69b069322e0defbff15037543e4b0f8687" -> "sha256:6f4917860ca4794bdac574819a5235617bfb1aabf001f2b3bccc56a86f44fedd" [label=""];
  "sha256:6f4917860ca4794bdac574819a5235617bfb1aabf001f2b3bccc56a86f44fedd" -> "sha256:875eb33d3d95115251e0a47a87aff301beb4c89e5195a19de98f8c5f5d1bb199" [label=""];
  "sha256:875eb33d3d95115251e0a47a87aff301beb4c89e5195a19de98f8c5f5d1bb199" -> "sha256:e24be3f4281855f2fd56afe6adc3450b351815af4c36588fada2617d01a6d019" [label=""];
  "sha256:e24be3f4281855f2fd56afe6adc3450b351815af4c36588fada2617d01a6d019" -> "sha256:f8be64cdee33c2bd1495555259add019b5ce398ecac84037c06d58a9fbb4261a" [label=""];
  "sha256:f8be64cdee33c2bd1495555259add019b5ce398ecac84037c06d58a9fbb4261a" -> "sha256:8275817bda77120464088f2bf63f006c6a88e030925e6ecdc89936952e2138b2" [label=""];
  "sha256:8275817bda77120464088f2bf63f006c6a88e030925e6ecdc89936952e2138b2" -> "sha256:115dd9b275f1cff5db11066f2d15420435c98a61c46ed9ef4b4ab1546f3ae6e8" [label=""];
}

