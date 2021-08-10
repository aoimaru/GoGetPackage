[app/sources/339477058.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:0b1d7259e9b7301e7e78aba73d576e8504e98f4e2aad61b66b121bebb5daff15" [label="/bin/sh -c apt-get update && apt-get -y install curl build-essential python python-dev openjdk-8-jdk" shape="box"];
  "sha256:4a2fed07daf0bdcb47bf6cbe7c7c5ed19ecd9637aec4f373e73889adb473f219" [label="local://context" shape="ellipse"];
  "sha256:6dda8d9010fc6038dd610f9e3f2461e593bf016d6575e056852dd2bb46627f9b" [label="copy{src=/, dest=/beaker/}" shape="note"];
  "sha256:fb74cd26f03ae1e678b7d0e925d17747c7cc7844c5c36c6fbf0844a3b5cb99b9" [label="/bin/sh -c cd /beaker && ./pants compile ::" shape="box"];
  "sha256:07caea092634082e2d732faa14b5cb4fa00f2c06c46571b1c09cfdd44d2dc9c0" [label="mkdir{path=/beaker}" shape="note"];
  "sha256:abeaa087e65435f28475407bf272f109899ae51a3d04fe24c6777593ef69540a" [label="sha256:abeaa087e65435f28475407bf272f109899ae51a3d04fe24c6777593ef69540a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:0b1d7259e9b7301e7e78aba73d576e8504e98f4e2aad61b66b121bebb5daff15" [label=""];
  "sha256:0b1d7259e9b7301e7e78aba73d576e8504e98f4e2aad61b66b121bebb5daff15" -> "sha256:6dda8d9010fc6038dd610f9e3f2461e593bf016d6575e056852dd2bb46627f9b" [label=""];
  "sha256:4a2fed07daf0bdcb47bf6cbe7c7c5ed19ecd9637aec4f373e73889adb473f219" -> "sha256:6dda8d9010fc6038dd610f9e3f2461e593bf016d6575e056852dd2bb46627f9b" [label=""];
  "sha256:6dda8d9010fc6038dd610f9e3f2461e593bf016d6575e056852dd2bb46627f9b" -> "sha256:fb74cd26f03ae1e678b7d0e925d17747c7cc7844c5c36c6fbf0844a3b5cb99b9" [label=""];
  "sha256:fb74cd26f03ae1e678b7d0e925d17747c7cc7844c5c36c6fbf0844a3b5cb99b9" -> "sha256:07caea092634082e2d732faa14b5cb4fa00f2c06c46571b1c09cfdd44d2dc9c0" [label=""];
  "sha256:07caea092634082e2d732faa14b5cb4fa00f2c06c46571b1c09cfdd44d2dc9c0" -> "sha256:abeaa087e65435f28475407bf272f109899ae51a3d04fe24c6777593ef69540a" [label=""];
}

