[app/sources/263731914.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4d06210fb8f93f26b2c31b09c104df90df3ef0f4539160462508e43a42448948" [label="/bin/sh -c apt-get update &&  apt-get install -y apt-transport-https ca-certificates curl module-init-tools &&  curl -s 'https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | apt-key add --import &&  echo \"deb https://packages.docker.com/1.12/apt/repo ubuntu-trusty main\" > /etc/apt/sources.list.d/docker.list &&  apt-get update &&  apt-get install -y docker-engine &&  rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/docker.list" shape="box"];
  "sha256:a6a1d534e0a829a3bf9e66e07c9b7dc21527f19646a7889d432893e8e734e9a4" [label="local://context" shape="ellipse"];
  "sha256:4f6f98f5acadf45891de59dcaf317e8e71fd45541f902a5840aebe374040627c" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6b18ce282514c8dbf841083df8c371a8d75669376029b3af909abacc3f135490" [label="sha256:6b18ce282514c8dbf841083df8c371a8d75669376029b3af909abacc3f135490" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4d06210fb8f93f26b2c31b09c104df90df3ef0f4539160462508e43a42448948" [label=""];
  "sha256:4d06210fb8f93f26b2c31b09c104df90df3ef0f4539160462508e43a42448948" -> "sha256:4f6f98f5acadf45891de59dcaf317e8e71fd45541f902a5840aebe374040627c" [label=""];
  "sha256:a6a1d534e0a829a3bf9e66e07c9b7dc21527f19646a7889d432893e8e734e9a4" -> "sha256:4f6f98f5acadf45891de59dcaf317e8e71fd45541f902a5840aebe374040627c" [label=""];
  "sha256:4f6f98f5acadf45891de59dcaf317e8e71fd45541f902a5840aebe374040627c" -> "sha256:6b18ce282514c8dbf841083df8c371a8d75669376029b3af909abacc3f135490" [label=""];
}

