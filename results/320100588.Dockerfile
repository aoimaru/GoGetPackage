[app/sources/320100588.Dockerfile]
digraph {
  "sha256:c351685436ae510f17325ea477ac3286c54ef97fecc683319abb3b82b54205ae" [label="docker-image://docker.io/ncc0706/alpine-java8:latest" shape="ellipse"];
  "sha256:6e2b9aa9f86a3d408b957f6c7928244ba776d550bc04253f034819fdd570d27d" [label="/bin/sh -c apk --update add openssh         supervisor \t&& sed -i s/#PermitRootLogin.*/PermitRootLogin\\ yes/ /etc/ssh/sshd_config \t&& echo \"root:${ROOT_PASSWORD}\" | chpasswd \t&& mkdir -p /var/logs/supervisor \t&& mkdir -p /var/run/supervisor \t&& rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:eac6c101b16d8b4f68364c31330ed9893efc3f34e21ac0f5509f389695472a93" [label="/bin/sh -c ssh-keygen -A" shape="box"];
  "sha256:396f8826c619fb2c9c89eef6221f771bf184045ceb311303958530e9d4dc7df4" [label="sha256:396f8826c619fb2c9c89eef6221f771bf184045ceb311303958530e9d4dc7df4" shape="plaintext"];
  "sha256:c351685436ae510f17325ea477ac3286c54ef97fecc683319abb3b82b54205ae" -> "sha256:6e2b9aa9f86a3d408b957f6c7928244ba776d550bc04253f034819fdd570d27d" [label=""];
  "sha256:6e2b9aa9f86a3d408b957f6c7928244ba776d550bc04253f034819fdd570d27d" -> "sha256:eac6c101b16d8b4f68364c31330ed9893efc3f34e21ac0f5509f389695472a93" [label=""];
  "sha256:eac6c101b16d8b4f68364c31330ed9893efc3f34e21ac0f5509f389695472a93" -> "sha256:396f8826c619fb2c9c89eef6221f771bf184045ceb311303958530e9d4dc7df4" [label=""];
}

