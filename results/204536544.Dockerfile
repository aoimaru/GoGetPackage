[app/sources/204536544.Dockerfile]
digraph {
  "sha256:42112c10ea34f04765ada2cbbd38a7c5255dd683304cb7b4a1f524d6de17459c" [label="docker-image://docker.io/library/openjdk:13-ea-19-jdk-alpine3.9" shape="ellipse"];
  "sha256:8a50895db0b2952bd7db1ba0abc7f6e9fdde672945d7fc4c862e9957baf57a3b" [label="/bin/sh -c apk add --no-cache --update bash sudo wget busybox-suid openssh-client  &&     adduser -h /home/appuser -s /bin/bash -D -u 1025 appuser wheel          &&     echo 'appuser ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers                  &&     sed -i 's/.*requiretty$/Defaults !requiretty/' /etc/sudoers             &&     apk del --no-cache busybox-suid openssh-client                          &&     ( rm -rf /var/cache/apk/* /tmp/* || echo 'oops...' )" shape="box"];
  "sha256:eef1056b1a3b9beb4eb476e054edb703b98d6c2fe5cc621af511247551476c16" [label="mkdir{path=/home/appuser}" shape="note"];
  "sha256:c3ae02c7408078c21cdce5c932b860fdd66d58b0eea16ca3ceefef9abd239d93" [label="sha256:c3ae02c7408078c21cdce5c932b860fdd66d58b0eea16ca3ceefef9abd239d93" shape="plaintext"];
  "sha256:42112c10ea34f04765ada2cbbd38a7c5255dd683304cb7b4a1f524d6de17459c" -> "sha256:8a50895db0b2952bd7db1ba0abc7f6e9fdde672945d7fc4c862e9957baf57a3b" [label=""];
  "sha256:8a50895db0b2952bd7db1ba0abc7f6e9fdde672945d7fc4c862e9957baf57a3b" -> "sha256:eef1056b1a3b9beb4eb476e054edb703b98d6c2fe5cc621af511247551476c16" [label=""];
  "sha256:eef1056b1a3b9beb4eb476e054edb703b98d6c2fe5cc621af511247551476c16" -> "sha256:c3ae02c7408078c21cdce5c932b860fdd66d58b0eea16ca3ceefef9abd239d93" [label=""];
}

