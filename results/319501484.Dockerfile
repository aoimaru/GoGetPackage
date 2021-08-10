[app/sources/319501484.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:08808c87b2d294ab67240ecb273f9a933c678eb1397e4321b5c9bdde67a51fa6" [label="/bin/sh -c apt-get update  && apt-get install -y -q --allow-downgrades     build-essential     curl     libssl-dev     gcc     git     libzmq3-dev     openssl     pkg-config     python3     unzip  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ce8b3c63001c1b51760b451982795e4f1489bafc514fe3e6d44d8877554fe6aa" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y  && curl -OLsS https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip  && unzip protoc-3.5.1-linux-x86_64.zip -d protoc3  && rm protoc-3.5.1-linux-x86_64.zip" shape="box"];
  "sha256:d21590afa4dd5b9641489a7a92c23ac733046880e281ff8e10b9301f7078cb1d" [label="/bin/sh -c /root/.cargo/bin/cargo install cargo-deb" shape="box"];
  "sha256:70d44c252655f22abfc4581b03935c176c5a6dbc13c3d702985ad0a83271616d" [label="local://context" shape="ellipse"];
  "sha256:3c53ba41f0546b3dac439232a87eab0122a3647e97d6861766068577d82d24e4" [label="copy{src=/, dest=/project/sawtooth-raft}" shape="note"];
  "sha256:4dd41e87493ff8e771907bbfdc78e2d2f8e35c7f5d9b50a888a68ee825153da5" [label="mkdir{path=/project/sawtooth-raft}" shape="note"];
  "sha256:f734dd563e9912f82f41f2eeb0b4ceb0295c017a620f5ed034a4f88ace2ec26b" [label="/bin/sh -c sed -i -e s/version.*$/version\\ =\\ \\\"$(bin/get_version)\\\"/ Cargo.toml" shape="box"];
  "sha256:ad82e2d185fbc7fd1ab28ae08ade2f85ce695fa9a13f28104bf4081c52edee1a" [label="/bin/sh -c /root/.cargo/bin/cargo deb" shape="box"];
  "sha256:b8d9bdcdb95a0baffd661bd8de6b684531c2c2f32f9e39c138ed0d58f325e0aa" [label="copy{src=/project/sawtooth-raft/target/debian/sawtooth*.deb, dest=/tmp}" shape="note"];
  "sha256:67b1d69168e52c4b09c2518820974ec449bc425cab16d4883ecb53edaad1e889" [label="/bin/sh -c apt-get update  && dpkg -i /tmp/sawtooth*.deb || true  && apt-get -f -y install" shape="box"];
  "sha256:7af20e6c140590ed3a5d6393c5b70129eaca985e18774b1e441aa2e9de228af7" [label="sha256:7af20e6c140590ed3a5d6393c5b70129eaca985e18774b1e441aa2e9de228af7" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:08808c87b2d294ab67240ecb273f9a933c678eb1397e4321b5c9bdde67a51fa6" [label=""];
  "sha256:08808c87b2d294ab67240ecb273f9a933c678eb1397e4321b5c9bdde67a51fa6" -> "sha256:ce8b3c63001c1b51760b451982795e4f1489bafc514fe3e6d44d8877554fe6aa" [label=""];
  "sha256:ce8b3c63001c1b51760b451982795e4f1489bafc514fe3e6d44d8877554fe6aa" -> "sha256:d21590afa4dd5b9641489a7a92c23ac733046880e281ff8e10b9301f7078cb1d" [label=""];
  "sha256:d21590afa4dd5b9641489a7a92c23ac733046880e281ff8e10b9301f7078cb1d" -> "sha256:3c53ba41f0546b3dac439232a87eab0122a3647e97d6861766068577d82d24e4" [label=""];
  "sha256:70d44c252655f22abfc4581b03935c176c5a6dbc13c3d702985ad0a83271616d" -> "sha256:3c53ba41f0546b3dac439232a87eab0122a3647e97d6861766068577d82d24e4" [label=""];
  "sha256:3c53ba41f0546b3dac439232a87eab0122a3647e97d6861766068577d82d24e4" -> "sha256:4dd41e87493ff8e771907bbfdc78e2d2f8e35c7f5d9b50a888a68ee825153da5" [label=""];
  "sha256:4dd41e87493ff8e771907bbfdc78e2d2f8e35c7f5d9b50a888a68ee825153da5" -> "sha256:f734dd563e9912f82f41f2eeb0b4ceb0295c017a620f5ed034a4f88ace2ec26b" [label=""];
  "sha256:f734dd563e9912f82f41f2eeb0b4ceb0295c017a620f5ed034a4f88ace2ec26b" -> "sha256:ad82e2d185fbc7fd1ab28ae08ade2f85ce695fa9a13f28104bf4081c52edee1a" [label=""];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:b8d9bdcdb95a0baffd661bd8de6b684531c2c2f32f9e39c138ed0d58f325e0aa" [label=""];
  "sha256:ad82e2d185fbc7fd1ab28ae08ade2f85ce695fa9a13f28104bf4081c52edee1a" -> "sha256:b8d9bdcdb95a0baffd661bd8de6b684531c2c2f32f9e39c138ed0d58f325e0aa" [label=""];
  "sha256:b8d9bdcdb95a0baffd661bd8de6b684531c2c2f32f9e39c138ed0d58f325e0aa" -> "sha256:67b1d69168e52c4b09c2518820974ec449bc425cab16d4883ecb53edaad1e889" [label=""];
  "sha256:67b1d69168e52c4b09c2518820974ec449bc425cab16d4883ecb53edaad1e889" -> "sha256:7af20e6c140590ed3a5d6393c5b70129eaca985e18774b1e441aa2e9de228af7" [label=""];
}

