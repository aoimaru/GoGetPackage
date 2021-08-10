[app/sources/201419320.Dockerfile]
digraph {
  "sha256:97bdd675d86039190e33ad0e66e44a7badece4cc9d49ccd804373f829f0f0916" [label="docker-image://docker.io/mesosphere/kdc:latest@sha256:7d8fa40153fde988df54d2b1f3f25cab3e9eac4fb20ab454096765eab9161198" shape="ellipse"];
  "sha256:ac83f6c42301ec60b3452b6ca879cf3b4c2399b415adc5f8d4f7574e784f006d" [label="/bin/sh -c mkdir /kdc" shape="box"];
  "sha256:b4e651da2b51fa12b1d54ebab28534c516f0f24c6376eadf919a46557ec47cc6" [label="local://context" shape="ellipse"];
  "sha256:55ab7bbf59dc757aec4ed3a87a94d8afe1a6d21802316a1def97f0b73b6d3a88" [label="copy{src=/run.sh, dest=/kdc/run.sh}" shape="note"];
  "sha256:e141b4217688e2591d2b6c03dbcef168b83c5dcf7c1f8359405755e099c479b7" [label="copy{src=/kdc.conf, dest=/etc/heimdal-kdc/kdc.conf}" shape="note"];
  "sha256:464c19b6ad4749c03eb2e01f010e105df32e80b7f361cd2182471e5f4986668f" [label="/bin/sh -c chown -R nobody:nogroup /kdc" shape="box"];
  "sha256:804604e182f1581d7e0fce67a64be92c163a529a0025cabf7167d284592fcbb1" [label="/bin/sh -c chmod -R 744 /var/lib/heimdal-kdc/" shape="box"];
  "sha256:02d6d6bf534fe5f4baa46c7d2367b67f57feac053d77f23b415335e4b6d5a62e" [label="/bin/sh -c chmod -R 744 /etc/heimdal-kdc/" shape="box"];
  "sha256:13aee56f7204a3e088ce59b0b69ebf5afc96be0129ba357656f75cc2fa2c4a0a" [label="/bin/sh -c chmod -R 744 /kdc" shape="box"];
  "sha256:683a06ca315f246879f4b72a1a1cf19a99f8679a5b6a76de5c75e3862cfb5e57" [label="sha256:683a06ca315f246879f4b72a1a1cf19a99f8679a5b6a76de5c75e3862cfb5e57" shape="plaintext"];
  "sha256:97bdd675d86039190e33ad0e66e44a7badece4cc9d49ccd804373f829f0f0916" -> "sha256:ac83f6c42301ec60b3452b6ca879cf3b4c2399b415adc5f8d4f7574e784f006d" [label=""];
  "sha256:ac83f6c42301ec60b3452b6ca879cf3b4c2399b415adc5f8d4f7574e784f006d" -> "sha256:55ab7bbf59dc757aec4ed3a87a94d8afe1a6d21802316a1def97f0b73b6d3a88" [label=""];
  "sha256:b4e651da2b51fa12b1d54ebab28534c516f0f24c6376eadf919a46557ec47cc6" -> "sha256:55ab7bbf59dc757aec4ed3a87a94d8afe1a6d21802316a1def97f0b73b6d3a88" [label=""];
  "sha256:55ab7bbf59dc757aec4ed3a87a94d8afe1a6d21802316a1def97f0b73b6d3a88" -> "sha256:e141b4217688e2591d2b6c03dbcef168b83c5dcf7c1f8359405755e099c479b7" [label=""];
  "sha256:b4e651da2b51fa12b1d54ebab28534c516f0f24c6376eadf919a46557ec47cc6" -> "sha256:e141b4217688e2591d2b6c03dbcef168b83c5dcf7c1f8359405755e099c479b7" [label=""];
  "sha256:e141b4217688e2591d2b6c03dbcef168b83c5dcf7c1f8359405755e099c479b7" -> "sha256:464c19b6ad4749c03eb2e01f010e105df32e80b7f361cd2182471e5f4986668f" [label=""];
  "sha256:464c19b6ad4749c03eb2e01f010e105df32e80b7f361cd2182471e5f4986668f" -> "sha256:804604e182f1581d7e0fce67a64be92c163a529a0025cabf7167d284592fcbb1" [label=""];
  "sha256:804604e182f1581d7e0fce67a64be92c163a529a0025cabf7167d284592fcbb1" -> "sha256:02d6d6bf534fe5f4baa46c7d2367b67f57feac053d77f23b415335e4b6d5a62e" [label=""];
  "sha256:02d6d6bf534fe5f4baa46c7d2367b67f57feac053d77f23b415335e4b6d5a62e" -> "sha256:13aee56f7204a3e088ce59b0b69ebf5afc96be0129ba357656f75cc2fa2c4a0a" [label=""];
  "sha256:13aee56f7204a3e088ce59b0b69ebf5afc96be0129ba357656f75cc2fa2c4a0a" -> "sha256:683a06ca315f246879f4b72a1a1cf19a99f8679a5b6a76de5c75e3862cfb5e57" [label=""];
}

