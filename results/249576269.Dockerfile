[app/sources/249576269.Dockerfile]
digraph {
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" [label="docker-image://docker.io/library/ruby:2.5.0" shape="ellipse"];
  "sha256:edd0f799f8caecf5d5dfd19082910f9eb21ec07c678d4a11aaae6f19993c04f7" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:a9b245bfd53406402e95ddd5805c94c96e5127facb5a1a6ca58c36d61958ed72" [label="/bin/sh -c apt-get update &&     apt-get install -y nodejs                        mysql-client                        --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:73a798a0420f429d71a47f5609a91fbae8652e63fe0178d05b6a0eff423d97e2" [label="local://context" shape="ellipse"];
  "sha256:3857ffdeea0c55b3d94dca52ff3f871df3fd96ae4b455d18f61ae16239e398c8" [label="copy{src=/Gemfile, dest=/var/app}" shape="note"];
  "sha256:16ad584107c3ccbf2c6a213356a81a024bf7cf795fc173a2cfdffc58d798ccf9" [label="copy{src=/Gemfile.lock, dest=/var/app}" shape="note"];
  "sha256:eb1184d3b8d6fb60e00e0090a286027c07b885f99fdbf9a7c0d781c4c33da498" [label="/bin/sh -c echo 'gem: --no-document' >> ~/.gemrc &&   cp ~/.gemrc /etc/gemrc &&   chmod uog+r /etc/gemrc &&   bundle config --global jobs 4 &&   bundle install &&   rm -rf ~/.gem" shape="box"];
  "sha256:80d8c00690a3777d12b59bb943fa39fa05e5e3e21ff30aebfc2fd4d04626c91d" [label="copy{src=/, dest=/var/app}" shape="note"];
  "sha256:a387146bd10c5f86e291e857e4eb20a5294703811782ecbfcb55b5228640f922" [label="sha256:a387146bd10c5f86e291e857e4eb20a5294703811782ecbfcb55b5228640f922" shape="plaintext"];
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" -> "sha256:edd0f799f8caecf5d5dfd19082910f9eb21ec07c678d4a11aaae6f19993c04f7" [label=""];
  "sha256:edd0f799f8caecf5d5dfd19082910f9eb21ec07c678d4a11aaae6f19993c04f7" -> "sha256:a9b245bfd53406402e95ddd5805c94c96e5127facb5a1a6ca58c36d61958ed72" [label=""];
  "sha256:a9b245bfd53406402e95ddd5805c94c96e5127facb5a1a6ca58c36d61958ed72" -> "sha256:3857ffdeea0c55b3d94dca52ff3f871df3fd96ae4b455d18f61ae16239e398c8" [label=""];
  "sha256:73a798a0420f429d71a47f5609a91fbae8652e63fe0178d05b6a0eff423d97e2" -> "sha256:3857ffdeea0c55b3d94dca52ff3f871df3fd96ae4b455d18f61ae16239e398c8" [label=""];
  "sha256:3857ffdeea0c55b3d94dca52ff3f871df3fd96ae4b455d18f61ae16239e398c8" -> "sha256:16ad584107c3ccbf2c6a213356a81a024bf7cf795fc173a2cfdffc58d798ccf9" [label=""];
  "sha256:73a798a0420f429d71a47f5609a91fbae8652e63fe0178d05b6a0eff423d97e2" -> "sha256:16ad584107c3ccbf2c6a213356a81a024bf7cf795fc173a2cfdffc58d798ccf9" [label=""];
  "sha256:16ad584107c3ccbf2c6a213356a81a024bf7cf795fc173a2cfdffc58d798ccf9" -> "sha256:eb1184d3b8d6fb60e00e0090a286027c07b885f99fdbf9a7c0d781c4c33da498" [label=""];
  "sha256:eb1184d3b8d6fb60e00e0090a286027c07b885f99fdbf9a7c0d781c4c33da498" -> "sha256:80d8c00690a3777d12b59bb943fa39fa05e5e3e21ff30aebfc2fd4d04626c91d" [label=""];
  "sha256:73a798a0420f429d71a47f5609a91fbae8652e63fe0178d05b6a0eff423d97e2" -> "sha256:80d8c00690a3777d12b59bb943fa39fa05e5e3e21ff30aebfc2fd4d04626c91d" [label=""];
  "sha256:80d8c00690a3777d12b59bb943fa39fa05e5e3e21ff30aebfc2fd4d04626c91d" -> "sha256:a387146bd10c5f86e291e857e4eb20a5294703811782ecbfcb55b5228640f922" [label=""];
}

