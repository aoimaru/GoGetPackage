[app/sources/240731561.Dockerfile]
digraph {
  "sha256:06e20ca9dd93bc0124f585d02b5bc289d1f7e0e83e1ec6f99f4692320eec2ef1" [label="docker-image://docker.io/jenkinsci/jenkins:lts-alpine" shape="ellipse"];
  "sha256:94d7348b61fa292774cae2277c6965e23e93a302ee5e1d97589d058953850fab" [label="local://context" shape="ellipse"];
  "sha256:47aca65e39b9baaa880563b7fd0a34307660dbde09f72364ed71d91b45b1b1e7" [label="copy{src=/security.groovy, dest=/usr/share/jenkins/ref/init.groovy.d/security.groovy}" shape="note"];
  "sha256:b12811c2c5ee6c8e547e710d55f7971676179c8cc572f1f081d87c51c36a5819" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/ref/plugins.txt}" shape="note"];
  "sha256:eaa52c436e0c84e40b2f6dfe52b1a94ebf163b5aecf1bdc6bcc1d95eda6e752c" [label="/bin/sh -c /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt" shape="box"];
  "sha256:aaeb87a71e6216bce9f9bbd2a11ec66c5ec24a0f93545315e03f77e02fc2c2d1" [label="sha256:aaeb87a71e6216bce9f9bbd2a11ec66c5ec24a0f93545315e03f77e02fc2c2d1" shape="plaintext"];
  "sha256:06e20ca9dd93bc0124f585d02b5bc289d1f7e0e83e1ec6f99f4692320eec2ef1" -> "sha256:47aca65e39b9baaa880563b7fd0a34307660dbde09f72364ed71d91b45b1b1e7" [label=""];
  "sha256:94d7348b61fa292774cae2277c6965e23e93a302ee5e1d97589d058953850fab" -> "sha256:47aca65e39b9baaa880563b7fd0a34307660dbde09f72364ed71d91b45b1b1e7" [label=""];
  "sha256:47aca65e39b9baaa880563b7fd0a34307660dbde09f72364ed71d91b45b1b1e7" -> "sha256:b12811c2c5ee6c8e547e710d55f7971676179c8cc572f1f081d87c51c36a5819" [label=""];
  "sha256:94d7348b61fa292774cae2277c6965e23e93a302ee5e1d97589d058953850fab" -> "sha256:b12811c2c5ee6c8e547e710d55f7971676179c8cc572f1f081d87c51c36a5819" [label=""];
  "sha256:b12811c2c5ee6c8e547e710d55f7971676179c8cc572f1f081d87c51c36a5819" -> "sha256:eaa52c436e0c84e40b2f6dfe52b1a94ebf163b5aecf1bdc6bcc1d95eda6e752c" [label=""];
  "sha256:eaa52c436e0c84e40b2f6dfe52b1a94ebf163b5aecf1bdc6bcc1d95eda6e752c" -> "sha256:aaeb87a71e6216bce9f9bbd2a11ec66c5ec24a0f93545315e03f77e02fc2c2d1" [label=""];
}

