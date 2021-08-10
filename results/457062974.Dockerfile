[app/sources/457062974.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b2d25b9325bfad1de3d7e3e1271ca17ad2b3dd37aaab891a784d6e85c9d94d3a" [label="mkdir{path=/opt/work}" shape="note"];
  "sha256:b9bed7f50d63251688cecd6714076f3ba52e73b932285baf6b27127fc8a8f26c" [label="local://context" shape="ellipse"];
  "sha256:4cbc11f923c0acac306d977df42e33b031c8a93436ef5ee68ec26d09daae5fd2" [label="copy{src=/init.groovy, dest=/opt/work/jenkins/init.groovy.d/basic-security.groovy}" shape="note"];
  "sha256:fbfd195699aff7f24b41b4b8b9f41619ecaa80a455295e7d2bc604ae5dac8cf8" [label="copy{src=/jenkins-support, dest=/opt/work/jenkins/jenkins-support}" shape="note"];
  "sha256:8a594978740a905fe463a6a9417ebde813f780af3bef98af4e7af88bdb17e95c" [label="copy{src=/jenkins.sh, dest=/opt/work/jenkins/jenkins.sh}" shape="note"];
  "sha256:301c7650931ce35de39b0ab5057ace3fc229b3a70ac0540c09438c5b7b6a093d" [label="/bin/sh -c apt-get update && apt-get install -y git wget curl && rm -rf /var/lib/apt/lists/* &&     wget https://build.funtoo.org/distfiles/oracle-java/jdk-8u152-linux-x64.tar.gz &&     gunzip jdk-8u152-linux-x64.tar.gz &&     tar -xf jdk-8u152-linux-x64.tar -C /opt &&     rm jdk-8u152-linux-x64.tar &&     ln -s /opt/jdk1.8.0_152 ${JAVA_HOME} &&     curl -fsSL ${JENKINS_URL} -o ${JENKINS_HOME}/jenkins.war &&     echo \"${JENKINS_SHA}  ${JENKINS_HOME}/jenkins.war\" | sha256sum -c - &&     chmod +x ${JENKINS_HOME}/jenkins.sh" shape="box"];
  "sha256:75ccd0a7ce5bd87d2030e3e4f37b401d6c1d5bffebeab0cd3c96eb30d63ba76f" [label="sha256:75ccd0a7ce5bd87d2030e3e4f37b401d6c1d5bffebeab0cd3c96eb30d63ba76f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b2d25b9325bfad1de3d7e3e1271ca17ad2b3dd37aaab891a784d6e85c9d94d3a" [label=""];
  "sha256:b2d25b9325bfad1de3d7e3e1271ca17ad2b3dd37aaab891a784d6e85c9d94d3a" -> "sha256:4cbc11f923c0acac306d977df42e33b031c8a93436ef5ee68ec26d09daae5fd2" [label=""];
  "sha256:b9bed7f50d63251688cecd6714076f3ba52e73b932285baf6b27127fc8a8f26c" -> "sha256:4cbc11f923c0acac306d977df42e33b031c8a93436ef5ee68ec26d09daae5fd2" [label=""];
  "sha256:4cbc11f923c0acac306d977df42e33b031c8a93436ef5ee68ec26d09daae5fd2" -> "sha256:fbfd195699aff7f24b41b4b8b9f41619ecaa80a455295e7d2bc604ae5dac8cf8" [label=""];
  "sha256:b9bed7f50d63251688cecd6714076f3ba52e73b932285baf6b27127fc8a8f26c" -> "sha256:fbfd195699aff7f24b41b4b8b9f41619ecaa80a455295e7d2bc604ae5dac8cf8" [label=""];
  "sha256:fbfd195699aff7f24b41b4b8b9f41619ecaa80a455295e7d2bc604ae5dac8cf8" -> "sha256:8a594978740a905fe463a6a9417ebde813f780af3bef98af4e7af88bdb17e95c" [label=""];
  "sha256:b9bed7f50d63251688cecd6714076f3ba52e73b932285baf6b27127fc8a8f26c" -> "sha256:8a594978740a905fe463a6a9417ebde813f780af3bef98af4e7af88bdb17e95c" [label=""];
  "sha256:8a594978740a905fe463a6a9417ebde813f780af3bef98af4e7af88bdb17e95c" -> "sha256:301c7650931ce35de39b0ab5057ace3fc229b3a70ac0540c09438c5b7b6a093d" [label=""];
  "sha256:301c7650931ce35de39b0ab5057ace3fc229b3a70ac0540c09438c5b7b6a093d" -> "sha256:75ccd0a7ce5bd87d2030e3e4f37b401d6c1d5bffebeab0cd3c96eb30d63ba76f" [label=""];
}

