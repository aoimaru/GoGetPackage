[app/sources/176079626.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:c30d93691a237126a5a7a5de97ca58848174854fff1110ae324bfe110fc7d105" [label="/bin/sh -c yum update && yum install -y curl tar which" shape="box"];
  "sha256:5d18e4b80741d83d0cd98b751d2b2f901498e7872cb22a4f055abb7d0c718777" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB" shape="box"];
  "sha256:cb6849cd7f77098f1d0aca4b71ac075bde2afa38d70595931654f05a142eaa18" [label="/bin/sh -c curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:dd41fe3e57dde1f7229129f797125a670db885ff8081b5c663bb93e190582ae1" [label="/bin/sh -c /bin/bash -l -c \"rvm install ruby-2.3.8\"" shape="box"];
  "sha256:dc0cb62b67b61c201cce691acffb11754289bb885f31254cb298502cace6fcf6" [label="/bin/sh -c /bin/bash -l -c \"rvm use --default ruby-2.3.8\"" shape="box"];
  "sha256:a4ad1455cea450a07d684c29143a873c148ff3277ded33f832b624c5c349a958" [label="/bin/sh -c /bin/bash -l -c \"echo 'gem: --no-document' > ~/.gemrc\"" shape="box"];
  "sha256:f4eacaddf8f9251f4514d827fd73466bb217b7eff21dd52745a4ea2f3d89a2fc" [label="/bin/sh -c /bin/bash -l -c \"echo 'export PATH=/usr/local/rvm/bin:$PATH' >> ~/.bashrc\"" shape="box"];
  "sha256:abad3f1a0d461885b3f2f3d2c1209c1a5154049e83ff52dc8a8298e94319bd1b" [label="/bin/sh -c /bin/bash -l -c \"echo 'rvm --default use ruby-2.3.8' >> ~/.bashrc\"" shape="box"];
  "sha256:1668701958da57222fd4093c8fd48cda5ac88ea0a837e690be65419bf635950d" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler -v 1.17.3 --no-document\"" shape="box"];
  "sha256:fd6a1ef914fd2c20fa6b5c4931082d4a6e2d3622b77073dd3cc195d4931acccc" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:d6a3650a1b526e0f04071074ecb6975ab14aef4ab61e407773acb70cbe86cdf9" [label="/bin/sh -c /bin/bash -l -c \"echo '. /etc/profile.d/rvm.sh' >> ~/.bashrc\"" shape="box"];
  "sha256:dbc91b5b5ac79d87bc9d307f51c1360c67afaa00b1bf59a7b30a3fb2ab0f1a95" [label="sha256:dbc91b5b5ac79d87bc9d307f51c1360c67afaa00b1bf59a7b30a3fb2ab0f1a95" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:c30d93691a237126a5a7a5de97ca58848174854fff1110ae324bfe110fc7d105" [label=""];
  "sha256:c30d93691a237126a5a7a5de97ca58848174854fff1110ae324bfe110fc7d105" -> "sha256:5d18e4b80741d83d0cd98b751d2b2f901498e7872cb22a4f055abb7d0c718777" [label=""];
  "sha256:5d18e4b80741d83d0cd98b751d2b2f901498e7872cb22a4f055abb7d0c718777" -> "sha256:cb6849cd7f77098f1d0aca4b71ac075bde2afa38d70595931654f05a142eaa18" [label=""];
  "sha256:cb6849cd7f77098f1d0aca4b71ac075bde2afa38d70595931654f05a142eaa18" -> "sha256:dd41fe3e57dde1f7229129f797125a670db885ff8081b5c663bb93e190582ae1" [label=""];
  "sha256:dd41fe3e57dde1f7229129f797125a670db885ff8081b5c663bb93e190582ae1" -> "sha256:dc0cb62b67b61c201cce691acffb11754289bb885f31254cb298502cace6fcf6" [label=""];
  "sha256:dc0cb62b67b61c201cce691acffb11754289bb885f31254cb298502cace6fcf6" -> "sha256:a4ad1455cea450a07d684c29143a873c148ff3277ded33f832b624c5c349a958" [label=""];
  "sha256:a4ad1455cea450a07d684c29143a873c148ff3277ded33f832b624c5c349a958" -> "sha256:f4eacaddf8f9251f4514d827fd73466bb217b7eff21dd52745a4ea2f3d89a2fc" [label=""];
  "sha256:f4eacaddf8f9251f4514d827fd73466bb217b7eff21dd52745a4ea2f3d89a2fc" -> "sha256:abad3f1a0d461885b3f2f3d2c1209c1a5154049e83ff52dc8a8298e94319bd1b" [label=""];
  "sha256:abad3f1a0d461885b3f2f3d2c1209c1a5154049e83ff52dc8a8298e94319bd1b" -> "sha256:1668701958da57222fd4093c8fd48cda5ac88ea0a837e690be65419bf635950d" [label=""];
  "sha256:1668701958da57222fd4093c8fd48cda5ac88ea0a837e690be65419bf635950d" -> "sha256:fd6a1ef914fd2c20fa6b5c4931082d4a6e2d3622b77073dd3cc195d4931acccc" [label=""];
  "sha256:fd6a1ef914fd2c20fa6b5c4931082d4a6e2d3622b77073dd3cc195d4931acccc" -> "sha256:d6a3650a1b526e0f04071074ecb6975ab14aef4ab61e407773acb70cbe86cdf9" [label=""];
  "sha256:d6a3650a1b526e0f04071074ecb6975ab14aef4ab61e407773acb70cbe86cdf9" -> "sha256:dbc91b5b5ac79d87bc9d307f51c1360c67afaa00b1bf59a7b30a3fb2ab0f1a95" [label=""];
}

