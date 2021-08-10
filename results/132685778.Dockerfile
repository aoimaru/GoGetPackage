[app/sources/132685778.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:1ee60b471831a37502d31d64f243c31046049c3ff21199ca25ad5c7f772950c1" [label="/bin/sh -c rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm" shape="box"];
  "sha256:e7b00e2c87be7f22bc681e24959d7aed8e27e59f5a10a8a8be35e2dd00e7281f" [label="/bin/sh -c yum -y groupinstall \"Development Tools\"" shape="box"];
  "sha256:504b3ff10208f20e0eeac64f0737d10ba263b44a8258f89a1adf944e79eaeff0" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:1ae5c368a940472cc9b0c67693f8c5012caab72b440251e6f14051d071d7624d" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:a30106d87e08ef4bd0cf388540b7affe5a0a8d42607267005cc3e49621ad954f" [label="local://context" shape="ellipse"];
  "sha256:aa249b1c8e8c655dfdbcd14cac748172e131d079831a8c2589ab862cb90e343a" [label="copy{src=/10gen.repo, dest=/etc/yum.repos.d/10gen.repo}" shape="note"];
  "sha256:78cc5ceff0ab6b47fe7b60335da5112eb0174d2ad281f6ad94230b86c6f6773c" [label="/bin/sh -c yum -y install mongo-10gen-server.x86_64 mongo-10gen.x86_64 --enablerepo=10gen" shape="box"];
  "sha256:45a6e1069860448946bb45cbf8e64c36a48b10999073bdc644ee4fb0c81fb03f" [label="sha256:45a6e1069860448946bb45cbf8e64c36a48b10999073bdc644ee4fb0c81fb03f" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:1ee60b471831a37502d31d64f243c31046049c3ff21199ca25ad5c7f772950c1" [label=""];
  "sha256:1ee60b471831a37502d31d64f243c31046049c3ff21199ca25ad5c7f772950c1" -> "sha256:e7b00e2c87be7f22bc681e24959d7aed8e27e59f5a10a8a8be35e2dd00e7281f" [label=""];
  "sha256:e7b00e2c87be7f22bc681e24959d7aed8e27e59f5a10a8a8be35e2dd00e7281f" -> "sha256:504b3ff10208f20e0eeac64f0737d10ba263b44a8258f89a1adf944e79eaeff0" [label=""];
  "sha256:504b3ff10208f20e0eeac64f0737d10ba263b44a8258f89a1adf944e79eaeff0" -> "sha256:1ae5c368a940472cc9b0c67693f8c5012caab72b440251e6f14051d071d7624d" [label=""];
  "sha256:1ae5c368a940472cc9b0c67693f8c5012caab72b440251e6f14051d071d7624d" -> "sha256:aa249b1c8e8c655dfdbcd14cac748172e131d079831a8c2589ab862cb90e343a" [label=""];
  "sha256:a30106d87e08ef4bd0cf388540b7affe5a0a8d42607267005cc3e49621ad954f" -> "sha256:aa249b1c8e8c655dfdbcd14cac748172e131d079831a8c2589ab862cb90e343a" [label=""];
  "sha256:aa249b1c8e8c655dfdbcd14cac748172e131d079831a8c2589ab862cb90e343a" -> "sha256:78cc5ceff0ab6b47fe7b60335da5112eb0174d2ad281f6ad94230b86c6f6773c" [label=""];
  "sha256:78cc5ceff0ab6b47fe7b60335da5112eb0174d2ad281f6ad94230b86c6f6773c" -> "sha256:45a6e1069860448946bb45cbf8e64c36a48b10999073bdc644ee4fb0c81fb03f" [label=""];
}

