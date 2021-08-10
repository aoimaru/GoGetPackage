[app/sources/467571735.Dockerfile]
digraph {
  "sha256:30e5972b9f9fb9bb72d43c6ce07555691b37e4bad395ca42e4e6b2cfec6c1b4f" [label="docker-image://docker.io/library/opensuse:42.1" shape="ellipse"];
  "sha256:1808912a2a739966f169ae0c9507ef88c871024c9841a32ad137f4a252c9dcc5" [label="/bin/sh -c zypper --non-interactive install curl" shape="box"];
  "sha256:e3db8aca360184cf33abba3a2fdc6835d524ea5f131f8da0c04ff92e5b255479" [label="/bin/sh -c zypper --non-interactive install tar which" shape="box"];
  "sha256:b6a92470b3acb9159a946b0eba90ae6eae17aab0abfff36aeabb8a32344d823a" [label="/bin/sh -c zypper --non-interactive install ca-certificates-mozilla" shape="box"];
  "sha256:b0a8959b12351a02f398f8b2bcbdc6ff19935c1bb4a20fdb4b9b419088bffe35" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3" shape="box"];
  "sha256:76df876a1c64d56ec5e259d9d9340c092bc964dbaa07a84cb3163cad2eaf3111" [label="/bin/sh -c \\curl -sSL https://get.rvm.io | bash -s stable --ruby" shape="box"];
  "sha256:b69f83ad0676e9363484bb4827778e5ea20315246c588895171fd2c045f1a65d" [label="/bin/sh -c /bin/bash -l -c \"echo '. /etc/profile.d/rvm.sh' >> ~/.profile\"" shape="box"];
  "sha256:1500337f869577469e6201febc479afa7f43daa5331ddfb634dfc29e99bfb7b4" [label="/bin/sh -c /bin/bash -l -c 'gem install --update bundler'" shape="box"];
  "sha256:0012ae30c1fb68263e773cc3b100e89fce424f0e8fbe2185b32e94de2987b135" [label="sha256:0012ae30c1fb68263e773cc3b100e89fce424f0e8fbe2185b32e94de2987b135" shape="plaintext"];
  "sha256:30e5972b9f9fb9bb72d43c6ce07555691b37e4bad395ca42e4e6b2cfec6c1b4f" -> "sha256:1808912a2a739966f169ae0c9507ef88c871024c9841a32ad137f4a252c9dcc5" [label=""];
  "sha256:1808912a2a739966f169ae0c9507ef88c871024c9841a32ad137f4a252c9dcc5" -> "sha256:e3db8aca360184cf33abba3a2fdc6835d524ea5f131f8da0c04ff92e5b255479" [label=""];
  "sha256:e3db8aca360184cf33abba3a2fdc6835d524ea5f131f8da0c04ff92e5b255479" -> "sha256:b6a92470b3acb9159a946b0eba90ae6eae17aab0abfff36aeabb8a32344d823a" [label=""];
  "sha256:b6a92470b3acb9159a946b0eba90ae6eae17aab0abfff36aeabb8a32344d823a" -> "sha256:b0a8959b12351a02f398f8b2bcbdc6ff19935c1bb4a20fdb4b9b419088bffe35" [label=""];
  "sha256:b0a8959b12351a02f398f8b2bcbdc6ff19935c1bb4a20fdb4b9b419088bffe35" -> "sha256:76df876a1c64d56ec5e259d9d9340c092bc964dbaa07a84cb3163cad2eaf3111" [label=""];
  "sha256:76df876a1c64d56ec5e259d9d9340c092bc964dbaa07a84cb3163cad2eaf3111" -> "sha256:b69f83ad0676e9363484bb4827778e5ea20315246c588895171fd2c045f1a65d" [label=""];
  "sha256:b69f83ad0676e9363484bb4827778e5ea20315246c588895171fd2c045f1a65d" -> "sha256:1500337f869577469e6201febc479afa7f43daa5331ddfb634dfc29e99bfb7b4" [label=""];
  "sha256:1500337f869577469e6201febc479afa7f43daa5331ddfb634dfc29e99bfb7b4" -> "sha256:0012ae30c1fb68263e773cc3b100e89fce424f0e8fbe2185b32e94de2987b135" [label=""];
}

