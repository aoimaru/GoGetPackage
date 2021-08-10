[app/sources/210933045.Dockerfile]
digraph {
  "sha256:b5294240bcfd6e2b8d028afe5c1d5a745f0cfc266f504fda9d4f5ce3cbad6ba3" [label="docker-image://docker.io/drecom/centos-base:7" shape="ellipse"];
  "sha256:e73968d64082702c89e54af3c0d3925c170af9383eb81e2514b7d29fd038c14b" [label="/bin/sh -c git clone git://github.com/rbenv/ruby-build.git $RUBY_PATH/plugins/ruby-build &&  $RUBY_PATH/plugins/ruby-build/install.sh" shape="box"];
  "sha256:5ee505856db230d983d2d4e459e49645120bc0c05c2369e4a116c1ab7d20206f" [label="/bin/sh -c ruby-build $RUBY_VERSION $RUBY_PATH/" shape="box"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:24ac8eeac4aef58e9c61d8df5fa911c5a267526ba383e6d5aeea22ab91120969" [label="/bin/sh -c yum -y install         epel-release         make         gcc         git         openssl-devel         zlib-devel         mysql-devel         redis         sqlite-devel" shape="box"];
  "sha256:db0a3532508dd08b1d9846ff4f32cade51bf8e829b722320a65d2c3bea089cb6" [label="copy{src=/usr/local, dest=/usr/local}" shape="note"];
  "sha256:29e3012fac993389f1779d72c2336f0913219b615df04848dc6aea3e521a3939" [label="/bin/sh -c gem update --system" shape="box"];
  "sha256:de28b2a9060a2dd96beb2ab479aad2a41ef4c49ebda977461b68aacb491a37b6" [label="sha256:de28b2a9060a2dd96beb2ab479aad2a41ef4c49ebda977461b68aacb491a37b6" shape="plaintext"];
  "sha256:b5294240bcfd6e2b8d028afe5c1d5a745f0cfc266f504fda9d4f5ce3cbad6ba3" -> "sha256:e73968d64082702c89e54af3c0d3925c170af9383eb81e2514b7d29fd038c14b" [label=""];
  "sha256:e73968d64082702c89e54af3c0d3925c170af9383eb81e2514b7d29fd038c14b" -> "sha256:5ee505856db230d983d2d4e459e49645120bc0c05c2369e4a116c1ab7d20206f" [label=""];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:24ac8eeac4aef58e9c61d8df5fa911c5a267526ba383e6d5aeea22ab91120969" [label=""];
  "sha256:24ac8eeac4aef58e9c61d8df5fa911c5a267526ba383e6d5aeea22ab91120969" -> "sha256:db0a3532508dd08b1d9846ff4f32cade51bf8e829b722320a65d2c3bea089cb6" [label=""];
  "sha256:5ee505856db230d983d2d4e459e49645120bc0c05c2369e4a116c1ab7d20206f" -> "sha256:db0a3532508dd08b1d9846ff4f32cade51bf8e829b722320a65d2c3bea089cb6" [label=""];
  "sha256:db0a3532508dd08b1d9846ff4f32cade51bf8e829b722320a65d2c3bea089cb6" -> "sha256:29e3012fac993389f1779d72c2336f0913219b615df04848dc6aea3e521a3939" [label=""];
  "sha256:29e3012fac993389f1779d72c2336f0913219b615df04848dc6aea3e521a3939" -> "sha256:de28b2a9060a2dd96beb2ab479aad2a41ef4c49ebda977461b68aacb491a37b6" [label=""];
}

