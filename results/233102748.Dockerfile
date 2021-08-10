[app/sources/233102748.Dockerfile]
digraph {
  "sha256:371eafcea4b4cb704d397db73870d2bae0f4b234eaa85e630c7be6764b796391" [label="docker-image://docker.io/adoptopenjdk/openjdk8:jdk8u212-b03" shape="ellipse"];
  "sha256:e1785877a619b82737564da94f0f2d8eecc13e441bc51c74f57e6c75152e4e56" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends     curl     netcat &&     rm -rf /var/lib/apt/lists/* &&     echo '[ ! -z \"$TERM\" -a -r /etc/motd ] && cat /etc/motd'     >> /etc/bash.bashrc     ; echo \"$MOTD\" > /etc/motd" shape="box"];
  "sha256:95acbde6f4159120fbf2396682bd24f40ddc10f4b27d6c6e3e5c873d4f90edc0" [label="/bin/sh -c groupadd --system -g ${USER_GROUP_ID} ${USER_GROUP} &&     useradd --system --create-home --home-dir ${USER_HOME} --no-log-init -g ${USER_GROUP_ID} -u ${USER_ID} ${USER}" shape="box"];
  "sha256:83e6f831421ba44181a20ee95ee9f7bce24e7eb42c8095dc3dcebc030e4e6f55" [label="/bin/sh -c mkdir -p ${USER_HOME}/.java/.systemPrefs &&     mkdir -p ${USER_HOME}/.java/.userPrefs  &&     chmod -R 755 ${USER_HOME}/.java &&     chown -R ${USER}:${USER_GROUP} ${USER_HOME}/.java" shape="box"];
  "sha256:6bf5c81113e3019ba27a71bf250c05c16cbe91f1c3d3eda7f6f8e9cc1dad8e96" [label="local://context" shape="ellipse"];
  "sha256:8106afbee44238d50467669e4b155a29856954f76df26630686935ecbd4548e2" [label="copy{src=/files/wso2ei-6.5.0, dest=/home/wso2carbon/wso2ei-6.5.0}" shape="note"];
  "sha256:e7eef2c0a6cda8b57653938112e28dc88f6e58ca30bcfb42aa827785c695fa35" [label="copy{src=/files/wso2ei-6.5.0/repository/deployment/server, dest=/home/wso2carbon/wso2-tmp/server/}" shape="note"];
  "sha256:64798154a29c1ce6ece23a5b5477bcd6976dfc8d26aac5cdf26fd9f94b07fcc0" [label="copy{src=/init.sh, dest=/home/wso2carbon/}" shape="note"];
  "sha256:3a3d3526be66539e134aab02e0b5e86f956c67e98c4067637b62b299a3e4547f" [label="copy{src=/files/mysql-connector-java-*-bin.jar, dest=/home/wso2carbon/wso2ei-6.5.0/lib/}" shape="note"];
  "sha256:288734063b6e338e674a60955a7b3efecd8b49df4b4507958f8b5d6b301a1685" [label="https://repo1.maven.org/maven2/dnsjava/dnsjava/2.1.8/dnsjava-2.1.8.jar" shape="ellipse"];
  "sha256:64f6236b33c73f39feb73946fcb990a807845324686b85dffbb9b5601cfa4920" [label="copy{src=/dnsjava-2.1.8.jar, dest=/home/wso2carbon/wso2ei-6.5.0/lib}" shape="note"];
  "sha256:8af3957cc98bc38938fc6b51d6e34cb3238f3dbe0495cbc10d4d6b032a2d3d22" [label="https://repo1.maven.org/maven2/org/wso2/carbon/kubernetes/artifacts/kubernetes-membership-scheme/1.0.5/kubernetes-membership-scheme-1.0.5.jar" shape="ellipse"];
  "sha256:590664d89cdaa43b470be6f13b4c9c0b60f3e9b0fb654394428fee3526458ecd" [label="copy{src=/kubernetes-membership-scheme-1.0.5.jar, dest=/home/wso2carbon/wso2ei-6.5.0/dropins}" shape="note"];
  "sha256:0df381709e6246318cc1ce97f031efc82325258162d4a7b8ac0ef22a4900cb0a" [label="mkdir{path=/home/wso2carbon}" shape="note"];
  "sha256:f4fbd82919750a445ec74a2f59467519a9eb1c6eff1d6b7b2cdbd8864644aa4f" [label="sha256:f4fbd82919750a445ec74a2f59467519a9eb1c6eff1d6b7b2cdbd8864644aa4f" shape="plaintext"];
  "sha256:371eafcea4b4cb704d397db73870d2bae0f4b234eaa85e630c7be6764b796391" -> "sha256:e1785877a619b82737564da94f0f2d8eecc13e441bc51c74f57e6c75152e4e56" [label=""];
  "sha256:e1785877a619b82737564da94f0f2d8eecc13e441bc51c74f57e6c75152e4e56" -> "sha256:95acbde6f4159120fbf2396682bd24f40ddc10f4b27d6c6e3e5c873d4f90edc0" [label=""];
  "sha256:95acbde6f4159120fbf2396682bd24f40ddc10f4b27d6c6e3e5c873d4f90edc0" -> "sha256:83e6f831421ba44181a20ee95ee9f7bce24e7eb42c8095dc3dcebc030e4e6f55" [label=""];
  "sha256:83e6f831421ba44181a20ee95ee9f7bce24e7eb42c8095dc3dcebc030e4e6f55" -> "sha256:8106afbee44238d50467669e4b155a29856954f76df26630686935ecbd4548e2" [label=""];
  "sha256:6bf5c81113e3019ba27a71bf250c05c16cbe91f1c3d3eda7f6f8e9cc1dad8e96" -> "sha256:8106afbee44238d50467669e4b155a29856954f76df26630686935ecbd4548e2" [label=""];
  "sha256:8106afbee44238d50467669e4b155a29856954f76df26630686935ecbd4548e2" -> "sha256:e7eef2c0a6cda8b57653938112e28dc88f6e58ca30bcfb42aa827785c695fa35" [label=""];
  "sha256:6bf5c81113e3019ba27a71bf250c05c16cbe91f1c3d3eda7f6f8e9cc1dad8e96" -> "sha256:e7eef2c0a6cda8b57653938112e28dc88f6e58ca30bcfb42aa827785c695fa35" [label=""];
  "sha256:e7eef2c0a6cda8b57653938112e28dc88f6e58ca30bcfb42aa827785c695fa35" -> "sha256:64798154a29c1ce6ece23a5b5477bcd6976dfc8d26aac5cdf26fd9f94b07fcc0" [label=""];
  "sha256:6bf5c81113e3019ba27a71bf250c05c16cbe91f1c3d3eda7f6f8e9cc1dad8e96" -> "sha256:64798154a29c1ce6ece23a5b5477bcd6976dfc8d26aac5cdf26fd9f94b07fcc0" [label=""];
  "sha256:64798154a29c1ce6ece23a5b5477bcd6976dfc8d26aac5cdf26fd9f94b07fcc0" -> "sha256:3a3d3526be66539e134aab02e0b5e86f956c67e98c4067637b62b299a3e4547f" [label=""];
  "sha256:6bf5c81113e3019ba27a71bf250c05c16cbe91f1c3d3eda7f6f8e9cc1dad8e96" -> "sha256:3a3d3526be66539e134aab02e0b5e86f956c67e98c4067637b62b299a3e4547f" [label=""];
  "sha256:3a3d3526be66539e134aab02e0b5e86f956c67e98c4067637b62b299a3e4547f" -> "sha256:64f6236b33c73f39feb73946fcb990a807845324686b85dffbb9b5601cfa4920" [label=""];
  "sha256:288734063b6e338e674a60955a7b3efecd8b49df4b4507958f8b5d6b301a1685" -> "sha256:64f6236b33c73f39feb73946fcb990a807845324686b85dffbb9b5601cfa4920" [label=""];
  "sha256:64f6236b33c73f39feb73946fcb990a807845324686b85dffbb9b5601cfa4920" -> "sha256:590664d89cdaa43b470be6f13b4c9c0b60f3e9b0fb654394428fee3526458ecd" [label=""];
  "sha256:8af3957cc98bc38938fc6b51d6e34cb3238f3dbe0495cbc10d4d6b032a2d3d22" -> "sha256:590664d89cdaa43b470be6f13b4c9c0b60f3e9b0fb654394428fee3526458ecd" [label=""];
  "sha256:590664d89cdaa43b470be6f13b4c9c0b60f3e9b0fb654394428fee3526458ecd" -> "sha256:0df381709e6246318cc1ce97f031efc82325258162d4a7b8ac0ef22a4900cb0a" [label=""];
  "sha256:0df381709e6246318cc1ce97f031efc82325258162d4a7b8ac0ef22a4900cb0a" -> "sha256:f4fbd82919750a445ec74a2f59467519a9eb1c6eff1d6b7b2cdbd8864644aa4f" [label=""];
}

