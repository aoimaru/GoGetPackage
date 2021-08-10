[app/sources/422459133.Dockerfile]
digraph {
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" [label="local://context" shape="ellipse"];
  "sha256:6502b8552d3ae304f84a20fa14271ad6250d23d7009045178d3eb557ab711f74" [label="docker-image://docker.io/jenkins/jenkins:2.150.1@sha256:09cf44600c260c50b63c866aa50b8a482b1ae6089ff213527963595f9612ec2a" shape="ellipse"];
  "sha256:20aad70da5fecc279097817b393fde7d1415570f71793e94622a3582bcc43631" [label="/bin/sh -c set -x     && curl -fSL \"https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz\" -o docker.tgz     && tar -xzvf docker.tgz     && mv docker/* /usr/local/bin/     && rmdir docker     && rm docker.tgz     && docker -v" shape="box"];
  "sha256:672186fafd743c21cf37d0ffac8ef22d0160c92cbdeb5c075145296713bd0d4b" [label="copy{src=/repo, dest=/tmp/repo}" shape="note"];
  "sha256:66ef7ce0bb9abea7a34ebbbe0e78096d2bb3ce7fbb1d04a77da307640ecf781c" [label="copy{src=/gen.sh, dest=/tmp/}" shape="note"];
  "sha256:528551ef0189f4877b8c3bf2556fd16ceb9ef41298b010e56014ea717931e7c6" [label="copy{src=/lib, dest=/tmp/lib}" shape="note"];
  "sha256:aaf4dd8e37ea379489ecc76dcdcea89048fcf142f786eef84851a40b9b3f2964" [label="copy{src=/plugins, dest=/usr/share/jenkins/ref/plugins}" shape="note"];
  "sha256:36a666f56ab466169091175e38543035aec20bf372a6d2324b1d2e2a5ee88b09" [label="/bin/sh -c chown -R jenkins.jenkins /tmp/repo /tmp/lib /usr/share/jenkins/ref/plugins" shape="box"];
  "sha256:625794d9e2443798522299702c16b6a436deaf62faefbac249bd54b1d6da8fc3" [label="/bin/sh -c cd /tmp/repo &&     bash ../gen.sh &&     git init &&     git add . &&     git -c user.email=demo@jenkins-ci.org -c user.name=\"Parallel Test Executor Demo\" commit -m 'demo' &&     cd /tmp/lib &&     git init &&     git add . &&     git -c user.email=demo@jenkins-ci.org -c user.name=\"Parallel Test Executor Demo\" commit -m 'demo'" shape="box"];
  "sha256:afc6f817dcb7395e899ba075b721324ac7a1d0439f87e54c977f38e9dcdf2bad" [label="copy{src=/JENKINS_HOME, dest=/usr/share/jenkins/ref}" shape="note"];
  "sha256:17c5b9f20f85375d1f0fc4d21ac8cebea6bf63bd60e98a72b3acf775c341ac64" [label="sha256:17c5b9f20f85375d1f0fc4d21ac8cebea6bf63bd60e98a72b3acf775c341ac64" shape="plaintext"];
  "sha256:6502b8552d3ae304f84a20fa14271ad6250d23d7009045178d3eb557ab711f74" -> "sha256:20aad70da5fecc279097817b393fde7d1415570f71793e94622a3582bcc43631" [label=""];
  "sha256:20aad70da5fecc279097817b393fde7d1415570f71793e94622a3582bcc43631" -> "sha256:672186fafd743c21cf37d0ffac8ef22d0160c92cbdeb5c075145296713bd0d4b" [label=""];
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" -> "sha256:672186fafd743c21cf37d0ffac8ef22d0160c92cbdeb5c075145296713bd0d4b" [label=""];
  "sha256:672186fafd743c21cf37d0ffac8ef22d0160c92cbdeb5c075145296713bd0d4b" -> "sha256:66ef7ce0bb9abea7a34ebbbe0e78096d2bb3ce7fbb1d04a77da307640ecf781c" [label=""];
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" -> "sha256:66ef7ce0bb9abea7a34ebbbe0e78096d2bb3ce7fbb1d04a77da307640ecf781c" [label=""];
  "sha256:66ef7ce0bb9abea7a34ebbbe0e78096d2bb3ce7fbb1d04a77da307640ecf781c" -> "sha256:528551ef0189f4877b8c3bf2556fd16ceb9ef41298b010e56014ea717931e7c6" [label=""];
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" -> "sha256:528551ef0189f4877b8c3bf2556fd16ceb9ef41298b010e56014ea717931e7c6" [label=""];
  "sha256:528551ef0189f4877b8c3bf2556fd16ceb9ef41298b010e56014ea717931e7c6" -> "sha256:aaf4dd8e37ea379489ecc76dcdcea89048fcf142f786eef84851a40b9b3f2964" [label=""];
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" -> "sha256:aaf4dd8e37ea379489ecc76dcdcea89048fcf142f786eef84851a40b9b3f2964" [label=""];
  "sha256:aaf4dd8e37ea379489ecc76dcdcea89048fcf142f786eef84851a40b9b3f2964" -> "sha256:36a666f56ab466169091175e38543035aec20bf372a6d2324b1d2e2a5ee88b09" [label=""];
  "sha256:36a666f56ab466169091175e38543035aec20bf372a6d2324b1d2e2a5ee88b09" -> "sha256:625794d9e2443798522299702c16b6a436deaf62faefbac249bd54b1d6da8fc3" [label=""];
  "sha256:625794d9e2443798522299702c16b6a436deaf62faefbac249bd54b1d6da8fc3" -> "sha256:afc6f817dcb7395e899ba075b721324ac7a1d0439f87e54c977f38e9dcdf2bad" [label=""];
  "sha256:c0a0fc017af9bb0a2b7e93b9ee9a84e2354a8bda15b32ee4350b6e4e0f117334" -> "sha256:afc6f817dcb7395e899ba075b721324ac7a1d0439f87e54c977f38e9dcdf2bad" [label=""];
  "sha256:afc6f817dcb7395e899ba075b721324ac7a1d0439f87e54c977f38e9dcdf2bad" -> "sha256:17c5b9f20f85375d1f0fc4d21ac8cebea6bf63bd60e98a72b3acf775c341ac64" [label=""];
}

