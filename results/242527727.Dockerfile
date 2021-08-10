[app/sources/242527727.Dockerfile]
digraph {
  "sha256:733e01ed603f19f812586f6609a875d49b6da57ebb7eb89688b4fff841a18b70" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:13cebc771c43ddc05f9568104a034745883845a7ba180dcfeb5923347d2480d2" [label="/bin/sh -c adduser condor &&     echo \"condor:condor\" | chpasswd" shape="box"];
  "sha256:aa1d299ea5341fcbff3f952f8f9d6d6db80606df289d23b5af3a75c5295bb463" [label="/bin/sh -c yum -y install          docker          epel-release          openssh-clients          openssh-server          sudo          tar          which     &&     curl -O http://research.cs.wisc.edu/htcondor/yum/RPM-GPG-KEY-HTCondor &&     rpm --import RPM-GPG-KEY-HTCondor &&     yum-config-manager --add-repo https://research.cs.wisc.edu/htcondor/yum/repo.d/htcondor-stable-rhel7.repo &&     yum -y install --enablerepo=centosplus condor &&     yum clean all &&     rm -f RPM-GPG-KEY-HTCondor" shape="box"];
  "sha256:b437051d96885414170ad60a00f305bb32d5814b67ab08b823b62573f277730f" [label="copy{src=/condor.config, dest=/etc/condor/condor_config.local}" shape="note"];
  "sha256:4f4e00b401d20032622c3a7a7ba7baee1a76242b557432447aa66a7ab22c2c25" [label="copy{src=/slots.config, dest=/etc/condor/config.d/00-slots}" shape="note"];
  "sha256:f19b4c5a449326bf63104ad4491a2c5e7c78840e86243d1a8ea61b889cab32a3" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:0016ff666cdc0b81b32485189bbd652e13e21f1c78a7672238b06412f3f8fa77" [label="mkdir{path=/home/condor}" shape="note"];
  "sha256:54070f527ef104fac3244dcff7f9ae4bf3e1ee6e13c44f038a75035e61ddde7c" [label="/bin/sh -c echo \"condor ALL=NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:26c85de4200d0501940880904d06258fee8fb36eb995b8929ecb166ec6092bca" [label="/bin/sh -c usermod -aG input condor" shape="box"];
  "sha256:02bee6d989ef7906603aeca0bbc197ba282e9be5f3feb5d1ae8d47e4880ad0cd" [label="copy{src=/test_condor.submit, dest=/home/condor/}" shape="note"];
  "sha256:9f149b2c9385b1765af3d255f9e57bf68a7b6068ec020e91437091a76d8ec2b2" [label="sha256:9f149b2c9385b1765af3d255f9e57bf68a7b6068ec020e91437091a76d8ec2b2" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:13cebc771c43ddc05f9568104a034745883845a7ba180dcfeb5923347d2480d2" [label=""];
  "sha256:13cebc771c43ddc05f9568104a034745883845a7ba180dcfeb5923347d2480d2" -> "sha256:aa1d299ea5341fcbff3f952f8f9d6d6db80606df289d23b5af3a75c5295bb463" [label=""];
  "sha256:aa1d299ea5341fcbff3f952f8f9d6d6db80606df289d23b5af3a75c5295bb463" -> "sha256:b437051d96885414170ad60a00f305bb32d5814b67ab08b823b62573f277730f" [label=""];
  "sha256:733e01ed603f19f812586f6609a875d49b6da57ebb7eb89688b4fff841a18b70" -> "sha256:b437051d96885414170ad60a00f305bb32d5814b67ab08b823b62573f277730f" [label=""];
  "sha256:b437051d96885414170ad60a00f305bb32d5814b67ab08b823b62573f277730f" -> "sha256:4f4e00b401d20032622c3a7a7ba7baee1a76242b557432447aa66a7ab22c2c25" [label=""];
  "sha256:733e01ed603f19f812586f6609a875d49b6da57ebb7eb89688b4fff841a18b70" -> "sha256:4f4e00b401d20032622c3a7a7ba7baee1a76242b557432447aa66a7ab22c2c25" [label=""];
  "sha256:4f4e00b401d20032622c3a7a7ba7baee1a76242b557432447aa66a7ab22c2c25" -> "sha256:f19b4c5a449326bf63104ad4491a2c5e7c78840e86243d1a8ea61b889cab32a3" [label=""];
  "sha256:733e01ed603f19f812586f6609a875d49b6da57ebb7eb89688b4fff841a18b70" -> "sha256:f19b4c5a449326bf63104ad4491a2c5e7c78840e86243d1a8ea61b889cab32a3" [label=""];
  "sha256:f19b4c5a449326bf63104ad4491a2c5e7c78840e86243d1a8ea61b889cab32a3" -> "sha256:0016ff666cdc0b81b32485189bbd652e13e21f1c78a7672238b06412f3f8fa77" [label=""];
  "sha256:0016ff666cdc0b81b32485189bbd652e13e21f1c78a7672238b06412f3f8fa77" -> "sha256:54070f527ef104fac3244dcff7f9ae4bf3e1ee6e13c44f038a75035e61ddde7c" [label=""];
  "sha256:54070f527ef104fac3244dcff7f9ae4bf3e1ee6e13c44f038a75035e61ddde7c" -> "sha256:26c85de4200d0501940880904d06258fee8fb36eb995b8929ecb166ec6092bca" [label=""];
  "sha256:26c85de4200d0501940880904d06258fee8fb36eb995b8929ecb166ec6092bca" -> "sha256:02bee6d989ef7906603aeca0bbc197ba282e9be5f3feb5d1ae8d47e4880ad0cd" [label=""];
  "sha256:733e01ed603f19f812586f6609a875d49b6da57ebb7eb89688b4fff841a18b70" -> "sha256:02bee6d989ef7906603aeca0bbc197ba282e9be5f3feb5d1ae8d47e4880ad0cd" [label=""];
  "sha256:02bee6d989ef7906603aeca0bbc197ba282e9be5f3feb5d1ae8d47e4880ad0cd" -> "sha256:9f149b2c9385b1765af3d255f9e57bf68a7b6068ec020e91437091a76d8ec2b2" [label=""];
}

