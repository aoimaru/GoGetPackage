[app/sources/252781467.Dockerfile]
digraph {
  "sha256:163ab99a3e48f53660f53763b0b88744687c0e653723a3222887910a1064af5e" [label="docker-image://docker.io/bankrate/docker-php:1.0" shape="ellipse"];
  "sha256:5577861d84d1c82908724276353c24c9d7ad04e08c876661bcd1417091e41586" [label="local://context" shape="ellipse"];
  "sha256:dbd4895429115924da27cb098fb4b673c7611641c91c7617cd700ad9a15d2eff" [label="copy{src=/scripts/composer.sh, dest=/usr/local/bin/composer.sh}" shape="note"];
  "sha256:32ac828efc9fe9e2463bbd6fc2c3b4d7b5f9828a13fe080e2f842aff6aed913e" [label="sha256:32ac828efc9fe9e2463bbd6fc2c3b4d7b5f9828a13fe080e2f842aff6aed913e" shape="plaintext"];
  "sha256:163ab99a3e48f53660f53763b0b88744687c0e653723a3222887910a1064af5e" -> "sha256:dbd4895429115924da27cb098fb4b673c7611641c91c7617cd700ad9a15d2eff" [label=""];
  "sha256:5577861d84d1c82908724276353c24c9d7ad04e08c876661bcd1417091e41586" -> "sha256:dbd4895429115924da27cb098fb4b673c7611641c91c7617cd700ad9a15d2eff" [label=""];
  "sha256:dbd4895429115924da27cb098fb4b673c7611641c91c7617cd700ad9a15d2eff" -> "sha256:32ac828efc9fe9e2463bbd6fc2c3b4d7b5f9828a13fe080e2f842aff6aed913e" [label=""];
}

