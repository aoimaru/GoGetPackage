[app/sources/291181033.Dockerfile]
digraph {
  "sha256:8c8ea9ae0650514e1e0a2a4a5203bf5edf948c0cd60c0734eaeb09beda1bbee7" [label="docker-image://docker.io/circleci/mongo:3.4.13-jessie@sha256:491c07259ad4b30adce14871375d94a8e701bd81852fa47102f3407038f90b91" shape="ellipse"];
  "sha256:393f282f2bfbbfc4eb8808c83262edbdafb13e19532e3e43a2ac1cb9596c8b57" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:52f11928cc751797b228dd0def92a0df601f78c073d7d7d4ad6cd5596c744b27" [label="sha256:52f11928cc751797b228dd0def92a0df601f78c073d7d7d4ad6cd5596c744b27" shape="plaintext"];
  "sha256:8c8ea9ae0650514e1e0a2a4a5203bf5edf948c0cd60c0734eaeb09beda1bbee7" -> "sha256:393f282f2bfbbfc4eb8808c83262edbdafb13e19532e3e43a2ac1cb9596c8b57" [label=""];
  "sha256:393f282f2bfbbfc4eb8808c83262edbdafb13e19532e3e43a2ac1cb9596c8b57" -> "sha256:52f11928cc751797b228dd0def92a0df601f78c073d7d7d4ad6cd5596c744b27" [label=""];
}

