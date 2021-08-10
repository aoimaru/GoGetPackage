[app/sources/191929572.Dockerfile]
digraph {
  "sha256:547cc2a0b8ddd9c558248a46eacd1400c519cdaac6f7653bc8a79e49feb98630" [label="docker-image://docker.io/library/node:7.9.0-alpine" shape="ellipse"];
  "sha256:f4585a906d7e0aeeddefe85910dcab68b7491617207d375b090ce3b48c4221cb" [label="/bin/sh -c apk update && apk add py-pygments && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d3a8867251420c9acbfa8bc6b3c1c4fd45b63883b601ed293fdf6ae2667f7d2f" [label="/bin/sh -c mkdir /usr/local/hugo" shape="box"];
  "sha256:3faae235545625de948e7e33f31e0155edb10a5103ec609cbe5eeac74e4caa99" [label="https://github.com/spf13/hugo/releases/download/v0.20.6/hugo_0.20.6_Linux-64bit.tar.gz" shape="ellipse"];
  "sha256:bf8f2d7f738d8cbe9ab7864f8b001f608dd8658ac40b53f344aa3dd256cb2275" [label="copy{src=/hugo_0.20.6_Linux-64bit.tar.gz, dest=/usr/local/hugo/}" shape="note"];
  "sha256:9a923830c7cce98d1d5aa1c6f1d6a8d4da6f8bef629038a0a898ff3ab8eeb68d" [label="/bin/sh -c tar xzf /usr/local/hugo/${HUGO_BINARY}.tar.gz -C /usr/local/hugo/     && ln -s /usr/local/hugo/hugo /usr/local/bin/hugo     && rm /usr/local/hugo/${HUGO_BINARY}.tar.gz" shape="box"];
  "sha256:8953ad1ee7adec540054b83c440cb6241017e04a2de2fedf09eb1596399400b7" [label="/bin/sh -c npm install -g hugulp" shape="box"];
  "sha256:f5bd3741f51a8be5404f44a86e702fd72c4a26157d122ed7284ce8ddb2c4143e" [label="local://context" shape="ellipse"];
  "sha256:bc893e09cf42bcbd38a17c8369f11f54bee972dfeaf15e53149d1c8f04178b77" [label="copy{src=/package.json, dest=/home/node/web/}" shape="note"];
  "sha256:96955074d9863746fa6385412c9bf61da8978fe767fb04496611ad6df7a36afb" [label="/bin/sh -c chmod 755 $HOME/* && chown -R $RUN_AS:$RUN_AS $HOME/*" shape="box"];
  "sha256:9eda6afe4693591cb4d043dd23798e3da56e9e9048767c10b43409e4348a73fc" [label="mkdir{path=/home/node/web}" shape="note"];
  "sha256:838347cf15a8f6427b90c8992dfc0a2f07452b0eca17388cae7cd09e4550b7be" [label="copy{src=/, dest=/home/node/web/}" shape="note"];
  "sha256:d5e96ac4b9cd328cfc1744a75188d5a2666cd3d2f24b74390b00f23065739ae0" [label="/bin/sh -c chown -R $RUN_AS:$RUN_AS $HOME/*" shape="box"];
  "sha256:f05fdbabfe5c55525d035ba4c63de4ed8f12f185ca9fc894014342d7199e6dd1" [label="sha256:f05fdbabfe5c55525d035ba4c63de4ed8f12f185ca9fc894014342d7199e6dd1" shape="plaintext"];
  "sha256:547cc2a0b8ddd9c558248a46eacd1400c519cdaac6f7653bc8a79e49feb98630" -> "sha256:f4585a906d7e0aeeddefe85910dcab68b7491617207d375b090ce3b48c4221cb" [label=""];
  "sha256:f4585a906d7e0aeeddefe85910dcab68b7491617207d375b090ce3b48c4221cb" -> "sha256:d3a8867251420c9acbfa8bc6b3c1c4fd45b63883b601ed293fdf6ae2667f7d2f" [label=""];
  "sha256:d3a8867251420c9acbfa8bc6b3c1c4fd45b63883b601ed293fdf6ae2667f7d2f" -> "sha256:bf8f2d7f738d8cbe9ab7864f8b001f608dd8658ac40b53f344aa3dd256cb2275" [label=""];
  "sha256:3faae235545625de948e7e33f31e0155edb10a5103ec609cbe5eeac74e4caa99" -> "sha256:bf8f2d7f738d8cbe9ab7864f8b001f608dd8658ac40b53f344aa3dd256cb2275" [label=""];
  "sha256:bf8f2d7f738d8cbe9ab7864f8b001f608dd8658ac40b53f344aa3dd256cb2275" -> "sha256:9a923830c7cce98d1d5aa1c6f1d6a8d4da6f8bef629038a0a898ff3ab8eeb68d" [label=""];
  "sha256:9a923830c7cce98d1d5aa1c6f1d6a8d4da6f8bef629038a0a898ff3ab8eeb68d" -> "sha256:8953ad1ee7adec540054b83c440cb6241017e04a2de2fedf09eb1596399400b7" [label=""];
  "sha256:8953ad1ee7adec540054b83c440cb6241017e04a2de2fedf09eb1596399400b7" -> "sha256:bc893e09cf42bcbd38a17c8369f11f54bee972dfeaf15e53149d1c8f04178b77" [label=""];
  "sha256:f5bd3741f51a8be5404f44a86e702fd72c4a26157d122ed7284ce8ddb2c4143e" -> "sha256:bc893e09cf42bcbd38a17c8369f11f54bee972dfeaf15e53149d1c8f04178b77" [label=""];
  "sha256:bc893e09cf42bcbd38a17c8369f11f54bee972dfeaf15e53149d1c8f04178b77" -> "sha256:96955074d9863746fa6385412c9bf61da8978fe767fb04496611ad6df7a36afb" [label=""];
  "sha256:96955074d9863746fa6385412c9bf61da8978fe767fb04496611ad6df7a36afb" -> "sha256:9eda6afe4693591cb4d043dd23798e3da56e9e9048767c10b43409e4348a73fc" [label=""];
  "sha256:9eda6afe4693591cb4d043dd23798e3da56e9e9048767c10b43409e4348a73fc" -> "sha256:838347cf15a8f6427b90c8992dfc0a2f07452b0eca17388cae7cd09e4550b7be" [label=""];
  "sha256:f5bd3741f51a8be5404f44a86e702fd72c4a26157d122ed7284ce8ddb2c4143e" -> "sha256:838347cf15a8f6427b90c8992dfc0a2f07452b0eca17388cae7cd09e4550b7be" [label=""];
  "sha256:838347cf15a8f6427b90c8992dfc0a2f07452b0eca17388cae7cd09e4550b7be" -> "sha256:d5e96ac4b9cd328cfc1744a75188d5a2666cd3d2f24b74390b00f23065739ae0" [label=""];
  "sha256:d5e96ac4b9cd328cfc1744a75188d5a2666cd3d2f24b74390b00f23065739ae0" -> "sha256:f05fdbabfe5c55525d035ba4c63de4ed8f12f185ca9fc894014342d7199e6dd1" [label=""];
}

