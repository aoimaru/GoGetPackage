[app/sources/183759777.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label="/bin/sh -c apt-get update -qy && apt-get install mutt offlineimap vim-nox abook elinks curl tmux cron zsh -y" shape="box"];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" [label="local://context" shape="ellipse"];
  "sha256:f70df25a598d6ee61526ba32859648dafc590c9f979e5610adf8db34b13e8cba" [label="copy{src=/.muttrc, dest=/}" shape="note"];
  "sha256:02219daa3df1f7e796cc59df0cc0d6f14ea33a52f4e39b8b1ed29ec6412ec13b" [label="copy{src=/.offlineimaprc, dest=/}" shape="note"];
  "sha256:d4e8fd88ffaca6394289e6119e480057def4e18ec31fbe3292e1a07da1cc88b9" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:b2b67b8fb2f0385448605cc60db9ac2dbae12fe53de0295893615fe4b8f710ea" [label="copy{src=/mutt, dest=/.mutt}" shape="note"];
  "sha256:cc6d2c3f7e577733ac759d0002c1fdc5b75c7a6b7845e2f7ab898e21c58c9e67" [label="copy{src=/vim, dest=/.vim}" shape="note"];
  "sha256:91a81f88ebdda20102dd2e522b6857976ef01859333ad06c5e6c860ac04eade2" [label="copy{src=/vimrc, dest=/.vimrc}" shape="note"];
  "sha256:986f9d1e45d711992dc5bd37bfc60c9e292a335be920f6c4d81308edaf658172" [label="copy{src=/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:193716ba4af8f2151879e67fbc6e7f8947b3fa013aa40bc15bd3fac69184c0f3" [label="/bin/sh -c chmod 644 /etc/crontab" shape="box"];
  "sha256:87e4fb5b79810f49a8a7a1cdb6b49fcf9185abd9d133d88f30ece16da7f63996" [label="/bin/sh -c mkdir /Mail" shape="box"];
  "sha256:33d3d8aff908721cfaa63ee5b315fc1bf2bbe7e97f7496e69e07257de7994590" [label="/bin/sh -c mkdir /.offlineimap" shape="box"];
  "sha256:f88552a2075830e5c62e75feab7505cab31cf7b4212283b6cdd710eff36a9baa" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:6e0b822288b33844c87305b54c5840ead52ce1bdfbb8b3cfd19530744b4754f1" [label="sha256:6e0b822288b33844c87305b54c5840ead52ce1bdfbb8b3cfd19530744b4754f1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label=""];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" -> "sha256:f70df25a598d6ee61526ba32859648dafc590c9f979e5610adf8db34b13e8cba" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:f70df25a598d6ee61526ba32859648dafc590c9f979e5610adf8db34b13e8cba" [label=""];
  "sha256:f70df25a598d6ee61526ba32859648dafc590c9f979e5610adf8db34b13e8cba" -> "sha256:02219daa3df1f7e796cc59df0cc0d6f14ea33a52f4e39b8b1ed29ec6412ec13b" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:02219daa3df1f7e796cc59df0cc0d6f14ea33a52f4e39b8b1ed29ec6412ec13b" [label=""];
  "sha256:02219daa3df1f7e796cc59df0cc0d6f14ea33a52f4e39b8b1ed29ec6412ec13b" -> "sha256:d4e8fd88ffaca6394289e6119e480057def4e18ec31fbe3292e1a07da1cc88b9" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:d4e8fd88ffaca6394289e6119e480057def4e18ec31fbe3292e1a07da1cc88b9" [label=""];
  "sha256:d4e8fd88ffaca6394289e6119e480057def4e18ec31fbe3292e1a07da1cc88b9" -> "sha256:b2b67b8fb2f0385448605cc60db9ac2dbae12fe53de0295893615fe4b8f710ea" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:b2b67b8fb2f0385448605cc60db9ac2dbae12fe53de0295893615fe4b8f710ea" [label=""];
  "sha256:b2b67b8fb2f0385448605cc60db9ac2dbae12fe53de0295893615fe4b8f710ea" -> "sha256:cc6d2c3f7e577733ac759d0002c1fdc5b75c7a6b7845e2f7ab898e21c58c9e67" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:cc6d2c3f7e577733ac759d0002c1fdc5b75c7a6b7845e2f7ab898e21c58c9e67" [label=""];
  "sha256:cc6d2c3f7e577733ac759d0002c1fdc5b75c7a6b7845e2f7ab898e21c58c9e67" -> "sha256:91a81f88ebdda20102dd2e522b6857976ef01859333ad06c5e6c860ac04eade2" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:91a81f88ebdda20102dd2e522b6857976ef01859333ad06c5e6c860ac04eade2" [label=""];
  "sha256:91a81f88ebdda20102dd2e522b6857976ef01859333ad06c5e6c860ac04eade2" -> "sha256:986f9d1e45d711992dc5bd37bfc60c9e292a335be920f6c4d81308edaf658172" [label=""];
  "sha256:ad2d2b15a319cf2c29d5efc985846b86cea310dce4dd047017fdcf3eaf5ed16c" -> "sha256:986f9d1e45d711992dc5bd37bfc60c9e292a335be920f6c4d81308edaf658172" [label=""];
  "sha256:986f9d1e45d711992dc5bd37bfc60c9e292a335be920f6c4d81308edaf658172" -> "sha256:193716ba4af8f2151879e67fbc6e7f8947b3fa013aa40bc15bd3fac69184c0f3" [label=""];
  "sha256:193716ba4af8f2151879e67fbc6e7f8947b3fa013aa40bc15bd3fac69184c0f3" -> "sha256:87e4fb5b79810f49a8a7a1cdb6b49fcf9185abd9d133d88f30ece16da7f63996" [label=""];
  "sha256:87e4fb5b79810f49a8a7a1cdb6b49fcf9185abd9d133d88f30ece16da7f63996" -> "sha256:33d3d8aff908721cfaa63ee5b315fc1bf2bbe7e97f7496e69e07257de7994590" [label=""];
  "sha256:33d3d8aff908721cfaa63ee5b315fc1bf2bbe7e97f7496e69e07257de7994590" -> "sha256:f88552a2075830e5c62e75feab7505cab31cf7b4212283b6cdd710eff36a9baa" [label=""];
  "sha256:f88552a2075830e5c62e75feab7505cab31cf7b4212283b6cdd710eff36a9baa" -> "sha256:6e0b822288b33844c87305b54c5840ead52ce1bdfbb8b3cfd19530744b4754f1" [label=""];
}

