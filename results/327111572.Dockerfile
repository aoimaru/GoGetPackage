[app/sources/327111572.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:84144751b0fea85939a5476e9a88256884d47edc91b837c3bb43ccc0dabd335b" [label="/bin/sh -c yum install -y epel-release &&     yum install -y --nogpgcheck https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm &&     yum update -y &&     yum install -y virt-what salt-minion &&     yum clean all &&     rm -rf /var/cache/yum" shape="box"];
  "sha256:bf22d805d597b5ac88d106518af0e04f6c4a0738f055a72a5c804a17e8eff3bd" [label="/bin/sh -c sed -i \"s|#master: salt|master: salt-master|g\" /etc/salt/minion" shape="box"];
  "sha256:36e81a70ee96f873f9ac933c15cb9ec8f429203411f1605b2e26f2182a0c9ccb" [label="sha256:36e81a70ee96f873f9ac933c15cb9ec8f429203411f1605b2e26f2182a0c9ccb" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:84144751b0fea85939a5476e9a88256884d47edc91b837c3bb43ccc0dabd335b" [label=""];
  "sha256:84144751b0fea85939a5476e9a88256884d47edc91b837c3bb43ccc0dabd335b" -> "sha256:bf22d805d597b5ac88d106518af0e04f6c4a0738f055a72a5c804a17e8eff3bd" [label=""];
  "sha256:bf22d805d597b5ac88d106518af0e04f6c4a0738f055a72a5c804a17e8eff3bd" -> "sha256:36e81a70ee96f873f9ac933c15cb9ec8f429203411f1605b2e26f2182a0c9ccb" [label=""];
}

