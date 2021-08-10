[app/sources/199797139.Dockerfile]
digraph {
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" [label="docker-image://docker.io/library/php:5.6-cli" shape="ellipse"];
  "sha256:6fb685a37ee05c87d23b759602fc2c4374b1c562c65c97719de687d3f0013b1b" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php" shape="box"];
  "sha256:86a912369fc4e7a5102ade3e04bef7022578686895ba6513cdc028ad705524f4" [label="/bin/sh -c mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:ab8eebe2b4c700eb40bd4ab3b8512007a20898c2958ebfaec1f10f56e6ce4d19" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0fa0fc23c3d1e48aa12498617f8f8ca3705a369a0fc9e2fba5bf9c4eb2ac1241" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:20b149666862a61e2a46bdacd777d655f6b29febcb81fd2de0ff61d614a02253" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:29649931d3eb30d2e4d0474f01961e7922ae7b671bd256e7d1ce4a8d0e37bdf9" [label="/bin/sh -c composer selfupdate &&   composer require \"phpunit/phpunit:~4.6.10\" &&   ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit" shape="box"];
  "sha256:7deb8c89a02adbb25d90becc10bc4f1b1c764ded00e40cb46df4700f1bd5a6c8" [label="mkdir{path=/app}" shape="note"];
  "sha256:f592e3a8489a1d65aeedf1fa5eda24cba9e2f34da3b75ee7aaf7fcb315d601ca" [label="sha256:f592e3a8489a1d65aeedf1fa5eda24cba9e2f34da3b75ee7aaf7fcb315d601ca" shape="plaintext"];
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" -> "sha256:6fb685a37ee05c87d23b759602fc2c4374b1c562c65c97719de687d3f0013b1b" [label=""];
  "sha256:6fb685a37ee05c87d23b759602fc2c4374b1c562c65c97719de687d3f0013b1b" -> "sha256:86a912369fc4e7a5102ade3e04bef7022578686895ba6513cdc028ad705524f4" [label=""];
  "sha256:86a912369fc4e7a5102ade3e04bef7022578686895ba6513cdc028ad705524f4" -> "sha256:ab8eebe2b4c700eb40bd4ab3b8512007a20898c2958ebfaec1f10f56e6ce4d19" [label=""];
  "sha256:ab8eebe2b4c700eb40bd4ab3b8512007a20898c2958ebfaec1f10f56e6ce4d19" -> "sha256:0fa0fc23c3d1e48aa12498617f8f8ca3705a369a0fc9e2fba5bf9c4eb2ac1241" [label=""];
  "sha256:0fa0fc23c3d1e48aa12498617f8f8ca3705a369a0fc9e2fba5bf9c4eb2ac1241" -> "sha256:20b149666862a61e2a46bdacd777d655f6b29febcb81fd2de0ff61d614a02253" [label=""];
  "sha256:20b149666862a61e2a46bdacd777d655f6b29febcb81fd2de0ff61d614a02253" -> "sha256:29649931d3eb30d2e4d0474f01961e7922ae7b671bd256e7d1ce4a8d0e37bdf9" [label=""];
  "sha256:29649931d3eb30d2e4d0474f01961e7922ae7b671bd256e7d1ce4a8d0e37bdf9" -> "sha256:7deb8c89a02adbb25d90becc10bc4f1b1c764ded00e40cb46df4700f1bd5a6c8" [label=""];
  "sha256:7deb8c89a02adbb25d90becc10bc4f1b1c764ded00e40cb46df4700f1bd5a6c8" -> "sha256:f592e3a8489a1d65aeedf1fa5eda24cba9e2f34da3b75ee7aaf7fcb315d601ca" [label=""];
}

