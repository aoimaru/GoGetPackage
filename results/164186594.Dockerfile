[app/sources/164186594.Dockerfile]
digraph {
  "sha256:8b2b24aacb9a6bd7446d209c0ea8feefc46d1727b0e6d70d3fff66151e5607ea" [label="local://context" shape="ellipse"];
  "sha256:82ac738dcb9855c9b94e3c5022f70f42d21ea4f69b08848e7129d5bc5d7bb203" [label="docker-image://docker.io/apache/hadoop-runner@sha256:11844e47624a5b67714b8324d96093180004523822b806dfd6dab7f29c576f39" shape="ellipse"];
  "sha256:95e2462b35f7fbcf18021ba40b0723b54d176c7cb8048de045bb92c1e74ff1ee" [label="/bin/sh -c sudo apt-get update && sudo apt-get install -y openssh-server" shape="box"];
  "sha256:7a4af3c7b42109b0a4583be32d1e5e28d9a565db42731eac78c9bb7be7cbe118" [label="/bin/sh -c sudo mkdir -p /run/sshd" shape="box"];
  "sha256:00f5b1f8b7c81d327d72209df9100c82ca98a20bb0d62b306742106f9ab7522d" [label="/bin/sh -c sudo sed -i \"s/.*UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g\" /etc/ssh/sshd_config" shape="box"];
  "sha256:01b127337074ffa435c2ca010af39dbc4c01ee329d3e9d7bbd1b749f9b311614" [label="/bin/sh -c sudo sed -i \"s/.*PermitUserEnvironment.*/PermitUserEnvironment yes/g\" /etc/ssh/sshd_config" shape="box"];
  "sha256:0dd57276b05599758a59d58d875d966d03da9320264a4c0c3524253f24140916" [label="/bin/sh -c sudo sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd" shape="box"];
  "sha256:e873e90d0c49a475af4594196b29af186cde66e6388c3eafc865d658d2f21ddf" [label="/bin/sh -c sudo usermod -d /opt hadoop" shape="box"];
  "sha256:98bd0d46ae145c258568b22c39f537b4c24014a41ac8f630e88e848eb77e62bf" [label="copy{src=/.ssh, dest=/opt/.ssh}" shape="note"];
  "sha256:1a2d19fd8f007be29fa381efeb747ff66b96555fe8d8905f9a39f04285616a2e" [label="/bin/sh -c sudo chown -R hadoop /opt/.ssh" shape="box"];
  "sha256:22c436c104c3de3621c377c02eb57d419e6757296b9ac2a7ceea7871495fe93b" [label="/bin/sh -c sudo chown hadoop /opt" shape="box"];
  "sha256:9910643d6f42d7661eec354b36e16443a98bbece8caa503ca01a05c1cad143c8" [label="/bin/sh -c sudo chmod 600 /opt/.ssh/*" shape="box"];
  "sha256:72b96fe38e1b10a12db6f8aeb99d53f087bd2aad9a46c1db03ea13bbd16b7335" [label="/bin/sh -c sudo chmod 700 /opt/.ssh" shape="box"];
  "sha256:e5370d6e09005fbfeaca75ba7f909f397ad9ecb534fe2a785463b27c70853670" [label="/bin/sh -c sudo sh -c 'echo \"export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/\" >> /etc/profile'" shape="box"];
  "sha256:d6a8d14bd2761d3f8eed8ab3fda56a736e4bd267c3894c10e481e6cd090043a8" [label="sha256:d6a8d14bd2761d3f8eed8ab3fda56a736e4bd267c3894c10e481e6cd090043a8" shape="plaintext"];
  "sha256:82ac738dcb9855c9b94e3c5022f70f42d21ea4f69b08848e7129d5bc5d7bb203" -> "sha256:95e2462b35f7fbcf18021ba40b0723b54d176c7cb8048de045bb92c1e74ff1ee" [label=""];
  "sha256:95e2462b35f7fbcf18021ba40b0723b54d176c7cb8048de045bb92c1e74ff1ee" -> "sha256:7a4af3c7b42109b0a4583be32d1e5e28d9a565db42731eac78c9bb7be7cbe118" [label=""];
  "sha256:7a4af3c7b42109b0a4583be32d1e5e28d9a565db42731eac78c9bb7be7cbe118" -> "sha256:00f5b1f8b7c81d327d72209df9100c82ca98a20bb0d62b306742106f9ab7522d" [label=""];
  "sha256:00f5b1f8b7c81d327d72209df9100c82ca98a20bb0d62b306742106f9ab7522d" -> "sha256:01b127337074ffa435c2ca010af39dbc4c01ee329d3e9d7bbd1b749f9b311614" [label=""];
  "sha256:01b127337074ffa435c2ca010af39dbc4c01ee329d3e9d7bbd1b749f9b311614" -> "sha256:0dd57276b05599758a59d58d875d966d03da9320264a4c0c3524253f24140916" [label=""];
  "sha256:0dd57276b05599758a59d58d875d966d03da9320264a4c0c3524253f24140916" -> "sha256:e873e90d0c49a475af4594196b29af186cde66e6388c3eafc865d658d2f21ddf" [label=""];
  "sha256:e873e90d0c49a475af4594196b29af186cde66e6388c3eafc865d658d2f21ddf" -> "sha256:98bd0d46ae145c258568b22c39f537b4c24014a41ac8f630e88e848eb77e62bf" [label=""];
  "sha256:8b2b24aacb9a6bd7446d209c0ea8feefc46d1727b0e6d70d3fff66151e5607ea" -> "sha256:98bd0d46ae145c258568b22c39f537b4c24014a41ac8f630e88e848eb77e62bf" [label=""];
  "sha256:98bd0d46ae145c258568b22c39f537b4c24014a41ac8f630e88e848eb77e62bf" -> "sha256:1a2d19fd8f007be29fa381efeb747ff66b96555fe8d8905f9a39f04285616a2e" [label=""];
  "sha256:1a2d19fd8f007be29fa381efeb747ff66b96555fe8d8905f9a39f04285616a2e" -> "sha256:22c436c104c3de3621c377c02eb57d419e6757296b9ac2a7ceea7871495fe93b" [label=""];
  "sha256:22c436c104c3de3621c377c02eb57d419e6757296b9ac2a7ceea7871495fe93b" -> "sha256:9910643d6f42d7661eec354b36e16443a98bbece8caa503ca01a05c1cad143c8" [label=""];
  "sha256:9910643d6f42d7661eec354b36e16443a98bbece8caa503ca01a05c1cad143c8" -> "sha256:72b96fe38e1b10a12db6f8aeb99d53f087bd2aad9a46c1db03ea13bbd16b7335" [label=""];
  "sha256:72b96fe38e1b10a12db6f8aeb99d53f087bd2aad9a46c1db03ea13bbd16b7335" -> "sha256:e5370d6e09005fbfeaca75ba7f909f397ad9ecb534fe2a785463b27c70853670" [label=""];
  "sha256:e5370d6e09005fbfeaca75ba7f909f397ad9ecb534fe2a785463b27c70853670" -> "sha256:d6a8d14bd2761d3f8eed8ab3fda56a736e4bd267c3894c10e481e6cd090043a8" [label=""];
}

