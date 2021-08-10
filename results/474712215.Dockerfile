[app/sources/474712215.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f6d8231909a7ef06c3e4931bafb0930a4ee2a73f351fede08affd429d21054a5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends       ca-certificates       curl       git       jq       make       openssh-client       realpath       rsync       sshpass       tar       wget &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:691a5b1a4e4c1eae26bdb6db912fdd5a6dacbd2973ca4b4da024d9b8629fc744" [label="local://context" shape="ellipse"];
  "sha256:753c9b838d7cb53368775bcf97ba68bde61300c6f6fdf3df820de25a12141606" [label="copy{src=/ruby-install, dest=/work/ruby-install/}" shape="note"];
  "sha256:34462c9912dbe5532a822a2580ebdae568e1584084968dc3b4dce47d27373aa1" [label="/bin/sh -c apt-get update &&     /work/ruby-install/bin/ruby-install       -c --system ruby $RUBY_VERSION -- --disable-install-doc &&     rm -rf /var/lib/apt/lists/* &&     gem install bundler --no-document" shape="box"];
  "sha256:3c984b972194028b64b34f670128792adbfcfcc5652dc66a45cf961d3acefc46" [label="/bin/sh -c cd /tmp &&     wget -nv https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz &&     (         echo '1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772 go1.8.3.linux-amd64.tar.gz' |         sha256sum -c -     ) &&     tar -C /usr/local -xzf go*.tar.gz &&     rm go*.tar.gz" shape="box"];
  "sha256:b415faf2571e764906ebaac23d6f22c9ac255c4cac245258c1423177eb779afd" [label="/bin/sh -c mkdir -p /opt/go" shape="box"];
  "sha256:455e0f0784cb195e5f1c29da6ecd48e818604535fba55d5461b2fc6aee1c2fce" [label="/bin/sh -c cd /tmp &&     wget -nv https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.45-linux-amd64 &&     (       echo bf04be72daa7da0c9bbeda16fda7fc7b2b8af51e bosh-cli-2.0.45-linux-amd64 |       sha1sum -c -     ) &&     install -Dm755 bosh-cli-2.0.45-linux-amd64 /usr/local/bin/bosh &&     rm -f bosh-cli-2.0.45-linux-amd64" shape="box"];
  "sha256:522400e0e0ecfce4ff017f1ae03f52a9fa0809a47b93c5d3a198000a22ee57cf" [label="sha256:522400e0e0ecfce4ff017f1ae03f52a9fa0809a47b93c5d3a198000a22ee57cf" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f6d8231909a7ef06c3e4931bafb0930a4ee2a73f351fede08affd429d21054a5" [label=""];
  "sha256:f6d8231909a7ef06c3e4931bafb0930a4ee2a73f351fede08affd429d21054a5" -> "sha256:753c9b838d7cb53368775bcf97ba68bde61300c6f6fdf3df820de25a12141606" [label=""];
  "sha256:691a5b1a4e4c1eae26bdb6db912fdd5a6dacbd2973ca4b4da024d9b8629fc744" -> "sha256:753c9b838d7cb53368775bcf97ba68bde61300c6f6fdf3df820de25a12141606" [label=""];
  "sha256:753c9b838d7cb53368775bcf97ba68bde61300c6f6fdf3df820de25a12141606" -> "sha256:34462c9912dbe5532a822a2580ebdae568e1584084968dc3b4dce47d27373aa1" [label=""];
  "sha256:34462c9912dbe5532a822a2580ebdae568e1584084968dc3b4dce47d27373aa1" -> "sha256:3c984b972194028b64b34f670128792adbfcfcc5652dc66a45cf961d3acefc46" [label=""];
  "sha256:3c984b972194028b64b34f670128792adbfcfcc5652dc66a45cf961d3acefc46" -> "sha256:b415faf2571e764906ebaac23d6f22c9ac255c4cac245258c1423177eb779afd" [label=""];
  "sha256:b415faf2571e764906ebaac23d6f22c9ac255c4cac245258c1423177eb779afd" -> "sha256:455e0f0784cb195e5f1c29da6ecd48e818604535fba55d5461b2fc6aee1c2fce" [label=""];
  "sha256:455e0f0784cb195e5f1c29da6ecd48e818604535fba55d5461b2fc6aee1c2fce" -> "sha256:522400e0e0ecfce4ff017f1ae03f52a9fa0809a47b93c5d3a198000a22ee57cf" [label=""];
}

