[app/sources/307166067.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:f2462fe7522fb9ae9fc38497055f24a8d419f69aa717d7c0429a2d2fb66b61b0" [label="/bin/sh -c apk update" shape="box"];
  "sha256:37773aa81bc1bda8b8b169782ae18167192105e7adaa2f710cd8e36a4b466916" [label="/bin/sh -c apk add --no-cache openssh python sudo curl wget bash bash-completion" shape="box"];
  "sha256:cced605e4c86cea1adc2c13fb5aa96d13aa578e12dba3fc74b0739ba7930f792" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:9dada827513aa2a2101b32e194f4e0b25a20850c12c8801861487e4a381e481f" [label="/bin/sh -c echo 'root:root' | chpasswd" shape="box"];
  "sha256:84780d61b4fd89b0f4471f0539bb4a2935872998354b3de3f68c4252f0929dcc" [label="/bin/sh -c sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config" shape="box"];
  "sha256:a90d770bbbfa9ce511d3a8a9e95fb57779fb500d5ffb556e8a0f87b81b65f6bb" [label="/bin/sh -c ssh-keygen -A" shape="box"];
  "sha256:934bc13316d2bfe1d19239e46de06445933966eb2b68149ecd34ec588d2b7886" [label="/bin/sh -c echo \"export VISIBLE=now\" >> /etc/profile" shape="box"];
  "sha256:cd3042ab104a5d1e334acbcc7826f2ac0f3ae1103bd645cb99ec31601fa0db0e" [label="/bin/sh -c adduser -s /bin/bash -D docker &&       echo 'docker:docker' | chpasswd" shape="box"];
  "sha256:b9163d09a9bc34b07b2fead39d51e61dbcb46038f75cebc2e763f335f9e925cb" [label="/bin/sh -c echo 'docker ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:da18a6870581ff1cce5ba77869e69b9560b056d5e497f60ac6ebf829d8246c26" [label="/bin/sh -c wget https://raw.githubusercontent.com/chusiang/ansible-jupyter.dockerfile/master/files/ssh/id_rsa.pub       -O /tmp/authorized_keys &&       mkdir /home/docker/.ssh &&       mv /tmp/authorized_keys /home/docker/.ssh/ &&       chown -R docker:docker /home/docker/.ssh/ &&       chmod 644 /home/docker/.ssh/authorized_keys &&       chmod 700 /home/docker/.ssh" shape="box"];
  "sha256:ee7a4961ed107c77b5938134ab7075fc6a03a646c3df7f6a164003c44f230fa7" [label="sha256:ee7a4961ed107c77b5938134ab7075fc6a03a646c3df7f6a164003c44f230fa7" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:f2462fe7522fb9ae9fc38497055f24a8d419f69aa717d7c0429a2d2fb66b61b0" [label=""];
  "sha256:f2462fe7522fb9ae9fc38497055f24a8d419f69aa717d7c0429a2d2fb66b61b0" -> "sha256:37773aa81bc1bda8b8b169782ae18167192105e7adaa2f710cd8e36a4b466916" [label=""];
  "sha256:37773aa81bc1bda8b8b169782ae18167192105e7adaa2f710cd8e36a4b466916" -> "sha256:cced605e4c86cea1adc2c13fb5aa96d13aa578e12dba3fc74b0739ba7930f792" [label=""];
  "sha256:cced605e4c86cea1adc2c13fb5aa96d13aa578e12dba3fc74b0739ba7930f792" -> "sha256:9dada827513aa2a2101b32e194f4e0b25a20850c12c8801861487e4a381e481f" [label=""];
  "sha256:9dada827513aa2a2101b32e194f4e0b25a20850c12c8801861487e4a381e481f" -> "sha256:84780d61b4fd89b0f4471f0539bb4a2935872998354b3de3f68c4252f0929dcc" [label=""];
  "sha256:84780d61b4fd89b0f4471f0539bb4a2935872998354b3de3f68c4252f0929dcc" -> "sha256:a90d770bbbfa9ce511d3a8a9e95fb57779fb500d5ffb556e8a0f87b81b65f6bb" [label=""];
  "sha256:a90d770bbbfa9ce511d3a8a9e95fb57779fb500d5ffb556e8a0f87b81b65f6bb" -> "sha256:934bc13316d2bfe1d19239e46de06445933966eb2b68149ecd34ec588d2b7886" [label=""];
  "sha256:934bc13316d2bfe1d19239e46de06445933966eb2b68149ecd34ec588d2b7886" -> "sha256:cd3042ab104a5d1e334acbcc7826f2ac0f3ae1103bd645cb99ec31601fa0db0e" [label=""];
  "sha256:cd3042ab104a5d1e334acbcc7826f2ac0f3ae1103bd645cb99ec31601fa0db0e" -> "sha256:b9163d09a9bc34b07b2fead39d51e61dbcb46038f75cebc2e763f335f9e925cb" [label=""];
  "sha256:b9163d09a9bc34b07b2fead39d51e61dbcb46038f75cebc2e763f335f9e925cb" -> "sha256:da18a6870581ff1cce5ba77869e69b9560b056d5e497f60ac6ebf829d8246c26" [label=""];
  "sha256:da18a6870581ff1cce5ba77869e69b9560b056d5e497f60ac6ebf829d8246c26" -> "sha256:ee7a4961ed107c77b5938134ab7075fc6a03a646c3df7f6a164003c44f230fa7" [label=""];
}

