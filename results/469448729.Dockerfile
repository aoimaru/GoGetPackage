[app/sources/469448729.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:e61947b7c46b832c5cb8a69d5324a96601c992ee9cbba651e148e09a55350515" [label="local://context" shape="ellipse"];
  "sha256:a8638a0685c9485c8c061a9e4adb330f159562f0f8196f52da6050fef143bef5" [label="copy{src=/run.sh, dest=/home/run.sh}" shape="note"];
  "sha256:b2561f617e44168cae70d3483c8f72c9ef1c7eb053f323bbab5d8185e7cbab69" [label="/bin/sh -c apt-get update &&     apt-get install -y vim curl openssh-client git wget &&     curl -sSL https://get.docker.com/ | sh &&     curl -L --fail https://github.com/docker/compose/releases/download/1.23.2/run.sh -o /usr/local/bin/docker-compose &&     chmod +x /usr/local/bin/docker-compose &&     wget -O /usr/local/bin/fly https://github.com/Concourse/Concourse/releases/download/v4.2.1/fly_linux_amd64 &&     chmod +x /usr/local/bin/fly" shape="box"];
  "sha256:ab64f3bf6b25f55e1cc563ad2862a9b0f94b180393f6923832a399f8facd28e9" [label="sha256:ab64f3bf6b25f55e1cc563ad2862a9b0f94b180393f6923832a399f8facd28e9" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:a8638a0685c9485c8c061a9e4adb330f159562f0f8196f52da6050fef143bef5" [label=""];
  "sha256:e61947b7c46b832c5cb8a69d5324a96601c992ee9cbba651e148e09a55350515" -> "sha256:a8638a0685c9485c8c061a9e4adb330f159562f0f8196f52da6050fef143bef5" [label=""];
  "sha256:a8638a0685c9485c8c061a9e4adb330f159562f0f8196f52da6050fef143bef5" -> "sha256:b2561f617e44168cae70d3483c8f72c9ef1c7eb053f323bbab5d8185e7cbab69" [label=""];
  "sha256:b2561f617e44168cae70d3483c8f72c9ef1c7eb053f323bbab5d8185e7cbab69" -> "sha256:ab64f3bf6b25f55e1cc563ad2862a9b0f94b180393f6923832a399f8facd28e9" [label=""];
}

