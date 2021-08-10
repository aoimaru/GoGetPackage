[app/sources/237009380.Dockerfile]
digraph {
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" [label="local://context" shape="ellipse"];
  "sha256:fbf524bc50e01190b78f1a821644e917ae6f720792f62d8e849432544199e35b" [label="docker-image://docker.io/library/jenkins:2.19.4-alpine" shape="ellipse"];
  "sha256:3aa8ac748e37fba3853f7364d8f7897b6f43019cd59785aa8c557d13ad43ecb1" [label="copy{src=/jenkins-home/plugins.txt, dest=/usr/share/jenkins/ref/}" shape="note"];
  "sha256:73413f8a75a87febe2af616c8dd987e53fcd217e0c9f21ed54ba09dc1b326fce" [label="/bin/sh -c /usr/local/bin/plugins.sh $JENKINS_REF/plugins.txt" shape="box"];
  "sha256:b7b72eb035c8f66d500f16a018b9fb2710e54cf0834b70973b989447423f0585" [label="copy{src=/jenkins-home/*.*, dest=/usr/share/jenkins/ref/}" shape="note"];
  "sha256:6e55ac5800f9a7b23b82cfb6f55940e7afc86d6003f6d2a96113f0e5f3aeb711" [label="copy{src=/jenkins-home/userContent, dest=/usr/share/jenkins/ref/userContent}" shape="note"];
  "sha256:64571e9e4b6732e8139d862c40a3bf7f2f8ceae098471a5ba88f738dcc4f9633" [label="copy{src=/jenkins-home/jobs, dest=/usr/share/jenkins/ref/jobs/}" shape="note"];
  "sha256:c141f5454efcfee5c74e1844f1f0fbbf6930d260e5ebbd3ab050413fe02a4e0c" [label="copy{src=/jenkins-home/init.groovy.d, dest=/usr/share/jenkins/ref/init.groovy.d/}" shape="note"];
  "sha256:f8b0f06cb988b85add35c025746043bd4b91b3d46290dc9d9af71e8e26d17643" [label="sha256:f8b0f06cb988b85add35c025746043bd4b91b3d46290dc9d9af71e8e26d17643" shape="plaintext"];
  "sha256:fbf524bc50e01190b78f1a821644e917ae6f720792f62d8e849432544199e35b" -> "sha256:3aa8ac748e37fba3853f7364d8f7897b6f43019cd59785aa8c557d13ad43ecb1" [label=""];
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" -> "sha256:3aa8ac748e37fba3853f7364d8f7897b6f43019cd59785aa8c557d13ad43ecb1" [label=""];
  "sha256:3aa8ac748e37fba3853f7364d8f7897b6f43019cd59785aa8c557d13ad43ecb1" -> "sha256:73413f8a75a87febe2af616c8dd987e53fcd217e0c9f21ed54ba09dc1b326fce" [label=""];
  "sha256:73413f8a75a87febe2af616c8dd987e53fcd217e0c9f21ed54ba09dc1b326fce" -> "sha256:b7b72eb035c8f66d500f16a018b9fb2710e54cf0834b70973b989447423f0585" [label=""];
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" -> "sha256:b7b72eb035c8f66d500f16a018b9fb2710e54cf0834b70973b989447423f0585" [label=""];
  "sha256:b7b72eb035c8f66d500f16a018b9fb2710e54cf0834b70973b989447423f0585" -> "sha256:6e55ac5800f9a7b23b82cfb6f55940e7afc86d6003f6d2a96113f0e5f3aeb711" [label=""];
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" -> "sha256:6e55ac5800f9a7b23b82cfb6f55940e7afc86d6003f6d2a96113f0e5f3aeb711" [label=""];
  "sha256:6e55ac5800f9a7b23b82cfb6f55940e7afc86d6003f6d2a96113f0e5f3aeb711" -> "sha256:64571e9e4b6732e8139d862c40a3bf7f2f8ceae098471a5ba88f738dcc4f9633" [label=""];
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" -> "sha256:64571e9e4b6732e8139d862c40a3bf7f2f8ceae098471a5ba88f738dcc4f9633" [label=""];
  "sha256:64571e9e4b6732e8139d862c40a3bf7f2f8ceae098471a5ba88f738dcc4f9633" -> "sha256:c141f5454efcfee5c74e1844f1f0fbbf6930d260e5ebbd3ab050413fe02a4e0c" [label=""];
  "sha256:fdddb8b05cc29e485550975a74602bdcabbd1278f5fff19663d340ca23860543" -> "sha256:c141f5454efcfee5c74e1844f1f0fbbf6930d260e5ebbd3ab050413fe02a4e0c" [label=""];
  "sha256:c141f5454efcfee5c74e1844f1f0fbbf6930d260e5ebbd3ab050413fe02a4e0c" -> "sha256:f8b0f06cb988b85add35c025746043bd4b91b3d46290dc9d9af71e8e26d17643" [label=""];
}

