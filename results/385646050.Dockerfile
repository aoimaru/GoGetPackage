[app/sources/385646050.Dockerfile]
digraph {
  "sha256:479f1274fa1a6976d71e2acb9bdbae0958db41e706cab11ff7f26c30365db165" [label="docker-image://docker.io/mozillamarketplace/centos-mysql-mkt:latest" shape="ellipse"];
  "sha256:ecbb2ec5b94f2c25c2e3c89998ca94cd55be1bd15ae5d3d603d2af747cffbd88" [label="/bin/sh -c yum install -y supervisor bash-completion cronie && yum clean all" shape="box"];
  "sha256:dbf889ae961cba9a085e6fcf68b7108b04bf190f031f5b4230896e3baf2f1481" [label="local://context" shape="ellipse"];
  "sha256:e081c6f2d81aad7477a715ca52da1c7d56e4f2815da1b7a7307e7ad9a88016f5" [label="copy{src=/requirements, dest=/srv/solitude/requirements}" shape="note"];
  "sha256:40db7ad52aedea320f0d11de737f0b3bf12f58ef5d6ee2da5b6a888aa80b5b5d" [label="/bin/sh -c pip install --no-deps --find-links https://pyrepo.stage.mozaws.net/ peep" shape="box"];
  "sha256:0978e0bf1305b67b04a922176083a353f1382038a3bc234704221ad9d48b541c" [label="/bin/sh -c peep install     --no-deps     -r /srv/solitude/requirements/dev.txt     -r /srv/solitude/requirements/compiled.txt     --find-links https://pyrepo.stage.mozaws.net/" shape="box"];
  "sha256:30f65b571b7305e13e57c88752c5588cd66e028be471acf8e94eddbc1eda7e76" [label="copy{src=/, dest=/srv/solitude}" shape="note"];
  "sha256:fe6b5a5fc6fa236568c91e0ae2bbc8b9c22d14ee71fe7839e3026de874e76bac" [label="/bin/sh -c cd /srv/solitude && git show -s --pretty=\"format:%h\" > git-rev.txt" shape="box"];
  "sha256:2b380d42d41ca76b6b30dad6d932c387af0d05ef8880e57fe6e9d0b703af18c3" [label="/bin/sh -c mkdir -p /var/log/solitude/transactions/" shape="box"];
  "sha256:e1f332fd07e767040d87516ff297feeba5fd802e56f5b90756f579be9e8714ef" [label="/bin/sh -c python /srv/solitude/bin/crontab/gen-crons.py -w /srv/solitude -p python --dir /var/log | crontab -" shape="box"];
  "sha256:7f96f240ed17447a86854cd9c0644412c610d5eefafd0c3aed49666e2b6e2a60" [label="sha256:7f96f240ed17447a86854cd9c0644412c610d5eefafd0c3aed49666e2b6e2a60" shape="plaintext"];
  "sha256:479f1274fa1a6976d71e2acb9bdbae0958db41e706cab11ff7f26c30365db165" -> "sha256:ecbb2ec5b94f2c25c2e3c89998ca94cd55be1bd15ae5d3d603d2af747cffbd88" [label=""];
  "sha256:ecbb2ec5b94f2c25c2e3c89998ca94cd55be1bd15ae5d3d603d2af747cffbd88" -> "sha256:e081c6f2d81aad7477a715ca52da1c7d56e4f2815da1b7a7307e7ad9a88016f5" [label=""];
  "sha256:dbf889ae961cba9a085e6fcf68b7108b04bf190f031f5b4230896e3baf2f1481" -> "sha256:e081c6f2d81aad7477a715ca52da1c7d56e4f2815da1b7a7307e7ad9a88016f5" [label=""];
  "sha256:e081c6f2d81aad7477a715ca52da1c7d56e4f2815da1b7a7307e7ad9a88016f5" -> "sha256:40db7ad52aedea320f0d11de737f0b3bf12f58ef5d6ee2da5b6a888aa80b5b5d" [label=""];
  "sha256:40db7ad52aedea320f0d11de737f0b3bf12f58ef5d6ee2da5b6a888aa80b5b5d" -> "sha256:0978e0bf1305b67b04a922176083a353f1382038a3bc234704221ad9d48b541c" [label=""];
  "sha256:0978e0bf1305b67b04a922176083a353f1382038a3bc234704221ad9d48b541c" -> "sha256:30f65b571b7305e13e57c88752c5588cd66e028be471acf8e94eddbc1eda7e76" [label=""];
  "sha256:dbf889ae961cba9a085e6fcf68b7108b04bf190f031f5b4230896e3baf2f1481" -> "sha256:30f65b571b7305e13e57c88752c5588cd66e028be471acf8e94eddbc1eda7e76" [label=""];
  "sha256:30f65b571b7305e13e57c88752c5588cd66e028be471acf8e94eddbc1eda7e76" -> "sha256:fe6b5a5fc6fa236568c91e0ae2bbc8b9c22d14ee71fe7839e3026de874e76bac" [label=""];
  "sha256:fe6b5a5fc6fa236568c91e0ae2bbc8b9c22d14ee71fe7839e3026de874e76bac" -> "sha256:2b380d42d41ca76b6b30dad6d932c387af0d05ef8880e57fe6e9d0b703af18c3" [label=""];
  "sha256:2b380d42d41ca76b6b30dad6d932c387af0d05ef8880e57fe6e9d0b703af18c3" -> "sha256:e1f332fd07e767040d87516ff297feeba5fd802e56f5b90756f579be9e8714ef" [label=""];
  "sha256:e1f332fd07e767040d87516ff297feeba5fd802e56f5b90756f579be9e8714ef" -> "sha256:7f96f240ed17447a86854cd9c0644412c610d5eefafd0c3aed49666e2b6e2a60" [label=""];
}

