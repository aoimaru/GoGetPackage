[app/sources/198508712.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:d6b618c4c692d7e3c8ba745633c1847bbf8c33a7f705efae6953ca5f6ef99395" [label="/bin/sh -c apk add --no-cache openssh git bash curl &&     ssh-keygen -A &&     adduser -D -s /usr/bin/git-shell git &&     echo git:12345 | chpasswd &&     mkdir /home/git/.ssh &&     git config --global user.email \"git@tweek\" &&     git config --global user.name \"git\" &&     mkdir /tweek && mkdir /tweek/repo && mkdir /tweek/tests &&     cd /tweek/repo && git init --bare &&     cd /tweek/tests && git init --bare" shape="box"];
  "sha256:5578a9f6dba70a7d1fbf5b726be3edc5a8b901409794693d3ec7af69e8655730" [label="mkdir{path=/tweek}" shape="note"];
  "sha256:d95823054f310f9a1b5bbfbd7591860456b49dc93a61277c9de11118582aadb8" [label="local://context" shape="ellipse"];
  "sha256:cefda2325ab718c1d2de3bf262566fe5a4630a5ea77dda49c148833c222fb1fd" [label="copy{src=/sshd_config, dest=/etc/ssh/sshd_config}" shape="note"];
  "sha256:217dff520e424b17298b0b180027893c332704b2be689b7c45bccef4e64db0ac" [label="copy{src=/init.sh, dest=/tweek/init.sh}" shape="note"];
  "sha256:0ffa82ada3d5ea1c4c10c8bf181c52e4b9f7525f8ff4e6ed2d5c2649e3535efb" [label="copy{src=/source, dest=/tweek/source}" shape="note"];
  "sha256:1517e5a5261b5d7e62b7cbacf093695870ac0e48db5eb84f4aa3f3b9739c0e55" [label="copy{src=/tests-source, dest=/tweek/tests-source}" shape="note"];
  "sha256:4363ee19c4779dbb0f2b9662d15bf2d9ac199d9a3aea7fafd5a8ae9aabf7b4c4" [label="/bin/sh -c cd ./source &&     git init && git add . && git commit -m \"init\"  && git push ../repo master &&     cd - && rm -rf source &&     cd ./tests-source &&     git init && git add . && git commit -m \"init\"  && git push ../tests master &&     cd - && rm -rf tests-source" shape="box"];
  "sha256:33386f49b6eb6e86c9f1b9d152b57048d8603cef2c5ef16e871620f14c074d95" [label="sha256:33386f49b6eb6e86c9f1b9d152b57048d8603cef2c5ef16e871620f14c074d95" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:d6b618c4c692d7e3c8ba745633c1847bbf8c33a7f705efae6953ca5f6ef99395" [label=""];
  "sha256:d6b618c4c692d7e3c8ba745633c1847bbf8c33a7f705efae6953ca5f6ef99395" -> "sha256:5578a9f6dba70a7d1fbf5b726be3edc5a8b901409794693d3ec7af69e8655730" [label=""];
  "sha256:5578a9f6dba70a7d1fbf5b726be3edc5a8b901409794693d3ec7af69e8655730" -> "sha256:cefda2325ab718c1d2de3bf262566fe5a4630a5ea77dda49c148833c222fb1fd" [label=""];
  "sha256:d95823054f310f9a1b5bbfbd7591860456b49dc93a61277c9de11118582aadb8" -> "sha256:cefda2325ab718c1d2de3bf262566fe5a4630a5ea77dda49c148833c222fb1fd" [label=""];
  "sha256:cefda2325ab718c1d2de3bf262566fe5a4630a5ea77dda49c148833c222fb1fd" -> "sha256:217dff520e424b17298b0b180027893c332704b2be689b7c45bccef4e64db0ac" [label=""];
  "sha256:d95823054f310f9a1b5bbfbd7591860456b49dc93a61277c9de11118582aadb8" -> "sha256:217dff520e424b17298b0b180027893c332704b2be689b7c45bccef4e64db0ac" [label=""];
  "sha256:217dff520e424b17298b0b180027893c332704b2be689b7c45bccef4e64db0ac" -> "sha256:0ffa82ada3d5ea1c4c10c8bf181c52e4b9f7525f8ff4e6ed2d5c2649e3535efb" [label=""];
  "sha256:d95823054f310f9a1b5bbfbd7591860456b49dc93a61277c9de11118582aadb8" -> "sha256:0ffa82ada3d5ea1c4c10c8bf181c52e4b9f7525f8ff4e6ed2d5c2649e3535efb" [label=""];
  "sha256:0ffa82ada3d5ea1c4c10c8bf181c52e4b9f7525f8ff4e6ed2d5c2649e3535efb" -> "sha256:1517e5a5261b5d7e62b7cbacf093695870ac0e48db5eb84f4aa3f3b9739c0e55" [label=""];
  "sha256:d95823054f310f9a1b5bbfbd7591860456b49dc93a61277c9de11118582aadb8" -> "sha256:1517e5a5261b5d7e62b7cbacf093695870ac0e48db5eb84f4aa3f3b9739c0e55" [label=""];
  "sha256:1517e5a5261b5d7e62b7cbacf093695870ac0e48db5eb84f4aa3f3b9739c0e55" -> "sha256:4363ee19c4779dbb0f2b9662d15bf2d9ac199d9a3aea7fafd5a8ae9aabf7b4c4" [label=""];
  "sha256:4363ee19c4779dbb0f2b9662d15bf2d9ac199d9a3aea7fafd5a8ae9aabf7b4c4" -> "sha256:33386f49b6eb6e86c9f1b9d152b57048d8603cef2c5ef16e871620f14c074d95" [label=""];
}

