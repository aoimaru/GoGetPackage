[app/sources/458286684.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:7233fea158b6ef305512fde63fabbc32f8ed54c6a8d5921222d6aaf79bd8e904" [label="mkdir{path=/home/litmus_paper}" shape="note"];
  "sha256:81dfdfa67ad22d50e8e01155248d9a7881e36085ca18e3437945477b72853cc2" [label="/bin/sh -c apt-get update && apt-get install -y ruby ruby-dev git curl rsyslog build-essential" shape="box"];
  "sha256:9722bd54e2d45333b5506149147bd773784f18d0e050b0b705ec40d5abe2f49d" [label="/bin/sh -c gem install --no-ri --no-rdoc bundler   && gem install sinatra --no-ri --no-rdoc --version \"~> 1.3.2\"   && gem install remote_syslog_logger --no-ri --no-rdoc --version \"~> 1.0.3\"   && gem install unicorn --no-ri --no-rdoc --version \"~> 4.6.2\"   && gem install colorize --no-ri --no-rdoc   && gem install rspec --no-ri --no-rdoc --version \"~> 2.9.0\"   && gem install rack-test --no-ri --no-rdoc --version \"~> 0.6.1\"   && gem install rake --no-ri --no-rdoc --version \"~> 0.9.2.2\"   && gem install rake_commit --no-ri --no-rdoc --version \"~> 0.13\"" shape="box"];
  "sha256:0cf449441400b37a7c1711065f5be6c626ef53d59ec232f1b5ba09f02c9e116a" [label="local://context" shape="ellipse"];
  "sha256:ac676a4c275efc6b5e2c263d74121ccc8fbbdf63c8a3d7e8af786b81eb12a501" [label="copy{src=/, dest=/home/litmus_paper}" shape="note"];
  "sha256:6a0fa06d7c7591859e17070d69bef10dbd1d20e8ecef0cc0795f24885fda880b" [label="/bin/sh -c ln -sf /home/litmus_paper/docker/litmus.conf /etc/litmus.conf   && ln -sf /home/litmus_paper/docker/litmus_unicorn.rb /etc/litmus_unicorn.rb" shape="box"];
  "sha256:4bc9a0aa314a3ea61f6bc6efbfaff1e06478320b4e87c5f6b221f61360d6ad89" [label="/bin/sh -c gem build litmus_paper.gemspec && gem install litmus_paper*.gem" shape="box"];
  "sha256:f24202ccf60fba27787bf96ec4e04bf8b315c551bad300dc1fff483d502b36cd" [label="sha256:f24202ccf60fba27787bf96ec4e04bf8b315c551bad300dc1fff483d502b36cd" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:7233fea158b6ef305512fde63fabbc32f8ed54c6a8d5921222d6aaf79bd8e904" [label=""];
  "sha256:7233fea158b6ef305512fde63fabbc32f8ed54c6a8d5921222d6aaf79bd8e904" -> "sha256:81dfdfa67ad22d50e8e01155248d9a7881e36085ca18e3437945477b72853cc2" [label=""];
  "sha256:81dfdfa67ad22d50e8e01155248d9a7881e36085ca18e3437945477b72853cc2" -> "sha256:9722bd54e2d45333b5506149147bd773784f18d0e050b0b705ec40d5abe2f49d" [label=""];
  "sha256:9722bd54e2d45333b5506149147bd773784f18d0e050b0b705ec40d5abe2f49d" -> "sha256:ac676a4c275efc6b5e2c263d74121ccc8fbbdf63c8a3d7e8af786b81eb12a501" [label=""];
  "sha256:0cf449441400b37a7c1711065f5be6c626ef53d59ec232f1b5ba09f02c9e116a" -> "sha256:ac676a4c275efc6b5e2c263d74121ccc8fbbdf63c8a3d7e8af786b81eb12a501" [label=""];
  "sha256:ac676a4c275efc6b5e2c263d74121ccc8fbbdf63c8a3d7e8af786b81eb12a501" -> "sha256:6a0fa06d7c7591859e17070d69bef10dbd1d20e8ecef0cc0795f24885fda880b" [label=""];
  "sha256:6a0fa06d7c7591859e17070d69bef10dbd1d20e8ecef0cc0795f24885fda880b" -> "sha256:4bc9a0aa314a3ea61f6bc6efbfaff1e06478320b4e87c5f6b221f61360d6ad89" [label=""];
  "sha256:4bc9a0aa314a3ea61f6bc6efbfaff1e06478320b4e87c5f6b221f61360d6ad89" -> "sha256:f24202ccf60fba27787bf96ec4e04bf8b315c551bad300dc1fff483d502b36cd" [label=""];
}

