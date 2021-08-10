[app/sources/411758121.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:4e28bdfb3821c07a2b9e49dffd2529b1de84ce0d17d3e51901efa1fe3acc2a36" [label="/bin/sh -c apt-get update &&     apt-get install -qqy             less             libjna-java             gnuplot             openjdk-8-jdk             openssh-client             vim             wget" shape="box"];
  "sha256:8c00315821e557ae72a966652f012238a106f886dbf7521b7843f0f6896f328f" [label="/bin/sh -c wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein &&     mv lein /usr/bin &&     chmod +x /usr/bin/lein &&     lein self-install" shape="box"];
  "sha256:7e4b692d37b5ca8cf57e5a8f3dc697fb9d5761d4d01401f474aebc19f20fa263" [label="local://context" shape="ellipse"];
  "sha256:fe3cf46cc94e2165023857dde9c1c0f93b9e4e4ca45a80fc0c4bbb9cdcbb4b78" [label="copy{src=/id_rsa, dest=/root/.ssh/}" shape="note"];
  "sha256:b703919fe0de69c988b713b710de6eab8efe54332de8b68c65f791a088038567" [label="copy{src=/id_rsa.pub, dest=/root/.ssh/}" shape="note"];
  "sha256:4509c45dee93b7d82c16a0a753b098a3742d54e5f7a9c33af96a00ac7cd09567" [label="/bin/sh -c touch ~/.ssh/known_hosts" shape="box"];
  "sha256:2ae641010c1465a084e648ff09b8f057fc65fdbcb52828c40e296dcd5757cf35" [label="mkdir{path=/jepsen}" shape="note"];
  "sha256:ed9f3a51314bbe9e689e26971c7a5afdfcb7a41a8d26fe9cffc9e7a540ec2462" [label="sha256:ed9f3a51314bbe9e689e26971c7a5afdfcb7a41a8d26fe9cffc9e7a540ec2462" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:4e28bdfb3821c07a2b9e49dffd2529b1de84ce0d17d3e51901efa1fe3acc2a36" [label=""];
  "sha256:4e28bdfb3821c07a2b9e49dffd2529b1de84ce0d17d3e51901efa1fe3acc2a36" -> "sha256:8c00315821e557ae72a966652f012238a106f886dbf7521b7843f0f6896f328f" [label=""];
  "sha256:8c00315821e557ae72a966652f012238a106f886dbf7521b7843f0f6896f328f" -> "sha256:fe3cf46cc94e2165023857dde9c1c0f93b9e4e4ca45a80fc0c4bbb9cdcbb4b78" [label=""];
  "sha256:7e4b692d37b5ca8cf57e5a8f3dc697fb9d5761d4d01401f474aebc19f20fa263" -> "sha256:fe3cf46cc94e2165023857dde9c1c0f93b9e4e4ca45a80fc0c4bbb9cdcbb4b78" [label=""];
  "sha256:fe3cf46cc94e2165023857dde9c1c0f93b9e4e4ca45a80fc0c4bbb9cdcbb4b78" -> "sha256:b703919fe0de69c988b713b710de6eab8efe54332de8b68c65f791a088038567" [label=""];
  "sha256:7e4b692d37b5ca8cf57e5a8f3dc697fb9d5761d4d01401f474aebc19f20fa263" -> "sha256:b703919fe0de69c988b713b710de6eab8efe54332de8b68c65f791a088038567" [label=""];
  "sha256:b703919fe0de69c988b713b710de6eab8efe54332de8b68c65f791a088038567" -> "sha256:4509c45dee93b7d82c16a0a753b098a3742d54e5f7a9c33af96a00ac7cd09567" [label=""];
  "sha256:4509c45dee93b7d82c16a0a753b098a3742d54e5f7a9c33af96a00ac7cd09567" -> "sha256:2ae641010c1465a084e648ff09b8f057fc65fdbcb52828c40e296dcd5757cf35" [label=""];
  "sha256:2ae641010c1465a084e648ff09b8f057fc65fdbcb52828c40e296dcd5757cf35" -> "sha256:ed9f3a51314bbe9e689e26971c7a5afdfcb7a41a8d26fe9cffc9e7a540ec2462" [label=""];
}

