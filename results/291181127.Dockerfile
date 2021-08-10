[app/sources/291181127.Dockerfile]
digraph {
  "sha256:f2c92d12c561b83771b586abb86a853edb4fd31158fb0878864854f627f9c1b8" [label="docker-image://docker.io/circleci/mongo:3.7.1-jessie@sha256:a4cb347cb5eae1c07f95f346c506885431db9afca8051ad24b819bee20063027" shape="ellipse"];
  "sha256:bf14080a9a871cd5f9196839cca0bbf3711c0f21ea9382c545cf16b424048202" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:4956c0c5cab1a01e11b8c4370eefcf414eb8e8d36ff7c5d73ba7d04186aac7cf" [label="sha256:4956c0c5cab1a01e11b8c4370eefcf414eb8e8d36ff7c5d73ba7d04186aac7cf" shape="plaintext"];
  "sha256:f2c92d12c561b83771b586abb86a853edb4fd31158fb0878864854f627f9c1b8" -> "sha256:bf14080a9a871cd5f9196839cca0bbf3711c0f21ea9382c545cf16b424048202" [label=""];
  "sha256:bf14080a9a871cd5f9196839cca0bbf3711c0f21ea9382c545cf16b424048202" -> "sha256:4956c0c5cab1a01e11b8c4370eefcf414eb8e8d36ff7c5d73ba7d04186aac7cf" [label=""];
}

