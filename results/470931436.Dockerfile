[app/sources/470931436.Dockerfile]
digraph {
  "sha256:2a55183a898dda49c6fc07decf85af365c2ef32dcc0266a16ce10cba131c2a60" [label="docker-image://docker.io/jenkinsxio/jenkins-filerunner:0.1.49" shape="ellipse"];
  "sha256:b1a4ed1bb38efcbe18c808aef2694e48d6d206757b19676743791654bf829486" [label="/bin/sh -c apt-get install -y bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libxml2-dev libxslt-dev" shape="box"];
  "sha256:f0f20b8b69dc35419d99c1b38fe15f429137a192d4304ca619b1c7bd44c7f334" [label="/bin/sh -c git clone https://github.com/rbenv/rbenv.git ~/.rbenv" shape="box"];
  "sha256:5f76a4e4d8d576e06d64e8ac21a426f69c5774ed2209a5b88345280b1783b849" [label="/bin/sh -c echo 'export PATH=\"$HOME/.rbenv/bin:$PATH\"' >> ~/.bashrc" shape="box"];
  "sha256:a01f82999fab99ec4b16d6b7ceae1eab83635cbf66e1ddf2c43e5ff7c674ed87" [label="/bin/sh -c echo 'eval \"$(rbenv init -)\"' >> ~/.bashrc" shape="box"];
  "sha256:628502878ad2e59822a51c4e839fe511b1f00259dc0a8c0529ab0837a078317b" [label="/bin/sh -c /bin/bash -c \"source ~/.bashrc\"" shape="box"];
  "sha256:7e252ef6538e965adea93c516ce0ccaa7b1bd999f6cc2f6482ca70fd0cadf2d3" [label="/bin/sh -c git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build" shape="box"];
  "sha256:c8bcdc8aa5afbe180a674f493036c1e8bc1f660f5335d9adc9ee168bd3848597" [label="/bin/sh -c /bin/bash -c -l \"rbenv install 2.5.3\"" shape="box"];
  "sha256:bc9758254d58566adaed0174819253db8e9be400ca19e6ef27e95abca3c56548" [label="/bin/sh -c /bin/bash -c -l \"rbenv global 2.5.3\"" shape="box"];
  "sha256:1ecfada5eb651901e657e559fcaeefd330bb6290655e28eb676858f5844b8070" [label="/bin/sh -c /bin/bash -c -l \"gem install bundler\"" shape="box"];
  "sha256:e1daa69023ae31a84f2705af485c49448f83f892ea2a2a7775e45f4f4fc8c488" [label="/bin/sh -c curl -Lf https://github.com/jenkins-x/jx/releases/download/v${JX_VERSION}/jx-linux-amd64.tar.gz | tar xzv &&   mv jx /usr/bin/" shape="box"];
  "sha256:eec0424f8692e9e39b9e60941dd43ebeb9af032fc38d676bffa8bc8e8d9275ab" [label="sha256:eec0424f8692e9e39b9e60941dd43ebeb9af032fc38d676bffa8bc8e8d9275ab" shape="plaintext"];
  "sha256:2a55183a898dda49c6fc07decf85af365c2ef32dcc0266a16ce10cba131c2a60" -> "sha256:b1a4ed1bb38efcbe18c808aef2694e48d6d206757b19676743791654bf829486" [label=""];
  "sha256:b1a4ed1bb38efcbe18c808aef2694e48d6d206757b19676743791654bf829486" -> "sha256:f0f20b8b69dc35419d99c1b38fe15f429137a192d4304ca619b1c7bd44c7f334" [label=""];
  "sha256:f0f20b8b69dc35419d99c1b38fe15f429137a192d4304ca619b1c7bd44c7f334" -> "sha256:5f76a4e4d8d576e06d64e8ac21a426f69c5774ed2209a5b88345280b1783b849" [label=""];
  "sha256:5f76a4e4d8d576e06d64e8ac21a426f69c5774ed2209a5b88345280b1783b849" -> "sha256:a01f82999fab99ec4b16d6b7ceae1eab83635cbf66e1ddf2c43e5ff7c674ed87" [label=""];
  "sha256:a01f82999fab99ec4b16d6b7ceae1eab83635cbf66e1ddf2c43e5ff7c674ed87" -> "sha256:628502878ad2e59822a51c4e839fe511b1f00259dc0a8c0529ab0837a078317b" [label=""];
  "sha256:628502878ad2e59822a51c4e839fe511b1f00259dc0a8c0529ab0837a078317b" -> "sha256:7e252ef6538e965adea93c516ce0ccaa7b1bd999f6cc2f6482ca70fd0cadf2d3" [label=""];
  "sha256:7e252ef6538e965adea93c516ce0ccaa7b1bd999f6cc2f6482ca70fd0cadf2d3" -> "sha256:c8bcdc8aa5afbe180a674f493036c1e8bc1f660f5335d9adc9ee168bd3848597" [label=""];
  "sha256:c8bcdc8aa5afbe180a674f493036c1e8bc1f660f5335d9adc9ee168bd3848597" -> "sha256:bc9758254d58566adaed0174819253db8e9be400ca19e6ef27e95abca3c56548" [label=""];
  "sha256:bc9758254d58566adaed0174819253db8e9be400ca19e6ef27e95abca3c56548" -> "sha256:1ecfada5eb651901e657e559fcaeefd330bb6290655e28eb676858f5844b8070" [label=""];
  "sha256:1ecfada5eb651901e657e559fcaeefd330bb6290655e28eb676858f5844b8070" -> "sha256:e1daa69023ae31a84f2705af485c49448f83f892ea2a2a7775e45f4f4fc8c488" [label=""];
  "sha256:e1daa69023ae31a84f2705af485c49448f83f892ea2a2a7775e45f4f4fc8c488" -> "sha256:eec0424f8692e9e39b9e60941dd43ebeb9af032fc38d676bffa8bc8e8d9275ab" [label=""];
}

