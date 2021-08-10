[app/sources/284698015.Dockerfile]
digraph {
  "sha256:f6be1ab45d7abfa59880efb62163f6b1b3a6e1fd0e049b296eb693d183c90bab" [label="docker-image://docker.io/harishanand95/videoserver:latest" shape="ellipse"];
  "sha256:ca336e4f3aee4c38592bb16f228f3d17505b1af2937fe13c0c4509b6f02596ee" [label="/bin/sh -c echo \"TrustedUserCAKeys /etc/ssh/ca-user-certificate-key.pub\" >> /etc/ssh/sshd_config" shape="box"];
  "sha256:03613be55efeba0c6d288c19b82e436e4a951c95de6179367b3abca3ae279b7b" [label="local://context" shape="ellipse"];
  "sha256:e46c0185877919611b9c173ea57e48716294b7fe7f265b7c1d2f0443866c28c2" [label="copy{src=/config/certificate_authority/keys/ca-user-certificate-key.pub, dest=/etc/ssh/ca-user-certificate-key.pub}" shape="note"];
  "sha256:be116a766bbb1831c3c52c197d6116e64dbd6253db729d770206ae7fd0f6f2c5" [label="/bin/sh -c sed -i '$ a LANG=\"en_US.UTF-8\"' /etc/profile" shape="box"];
  "sha256:c8529834f0102cbc51f1549be667bd7ec749e08195c7e2b59c3006785ea7f9fd" [label="sha256:c8529834f0102cbc51f1549be667bd7ec749e08195c7e2b59c3006785ea7f9fd" shape="plaintext"];
  "sha256:f6be1ab45d7abfa59880efb62163f6b1b3a6e1fd0e049b296eb693d183c90bab" -> "sha256:ca336e4f3aee4c38592bb16f228f3d17505b1af2937fe13c0c4509b6f02596ee" [label=""];
  "sha256:ca336e4f3aee4c38592bb16f228f3d17505b1af2937fe13c0c4509b6f02596ee" -> "sha256:e46c0185877919611b9c173ea57e48716294b7fe7f265b7c1d2f0443866c28c2" [label=""];
  "sha256:03613be55efeba0c6d288c19b82e436e4a951c95de6179367b3abca3ae279b7b" -> "sha256:e46c0185877919611b9c173ea57e48716294b7fe7f265b7c1d2f0443866c28c2" [label=""];
  "sha256:e46c0185877919611b9c173ea57e48716294b7fe7f265b7c1d2f0443866c28c2" -> "sha256:be116a766bbb1831c3c52c197d6116e64dbd6253db729d770206ae7fd0f6f2c5" [label=""];
  "sha256:be116a766bbb1831c3c52c197d6116e64dbd6253db729d770206ae7fd0f6f2c5" -> "sha256:c8529834f0102cbc51f1549be667bd7ec749e08195c7e2b59c3006785ea7f9fd" [label=""];
}

