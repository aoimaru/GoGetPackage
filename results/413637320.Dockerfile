[app/sources/413637320.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:fd36ea998b77ca36cdce6031808969e051325e822ed27cb518c4a6f024928287" [label="/bin/sh -c rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm   && yum install -y puppet-agent   && yum install -y ruby   && gem install bundler -N" shape="box"];
  "sha256:55610a161e64632f96882e304aeeae447ee0f5948547a221f82e92b17af9bc60" [label="sha256:55610a161e64632f96882e304aeeae447ee0f5948547a221f82e92b17af9bc60" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:fd36ea998b77ca36cdce6031808969e051325e822ed27cb518c4a6f024928287" [label=""];
  "sha256:fd36ea998b77ca36cdce6031808969e051325e822ed27cb518c4a6f024928287" -> "sha256:55610a161e64632f96882e304aeeae447ee0f5948547a221f82e92b17af9bc60" [label=""];
}

