[app/sources/252774203.Dockerfile]
digraph {
  "sha256:a64314088aca6d9c4a43f46e13f68ea24c3fae4c95ac935689c4e3b3351eabd5" [label="docker-image://docker.io/library/ruby:2.3@sha256:78cc821d95c48621e577b6b0d44c9d509f0f2a4e089b9fd0ca2ae86f274773a8" shape="ellipse"];
  "sha256:40e3528a597c0c07074549fcbfe0322d198cf6a70effbe4879376c306ecee4eb" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive && apt-get -y install nodejs postgresql-client iceweasel xvfb && echo \"StrictHostKeyChecking no\" >> /etc/ssh/ssh_config" shape="box"];
  "sha256:5aa47a0accfc23f309490d5ac0c30a76a185b0904f9cd3ed52bad18952de80fa" [label="sha256:5aa47a0accfc23f309490d5ac0c30a76a185b0904f9cd3ed52bad18952de80fa" shape="plaintext"];
  "sha256:a64314088aca6d9c4a43f46e13f68ea24c3fae4c95ac935689c4e3b3351eabd5" -> "sha256:40e3528a597c0c07074549fcbfe0322d198cf6a70effbe4879376c306ecee4eb" [label=""];
  "sha256:40e3528a597c0c07074549fcbfe0322d198cf6a70effbe4879376c306ecee4eb" -> "sha256:5aa47a0accfc23f309490d5ac0c30a76a185b0904f9cd3ed52bad18952de80fa" [label=""];
}

