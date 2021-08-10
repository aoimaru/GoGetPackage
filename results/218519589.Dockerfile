[app/sources/218519589.Dockerfile]
digraph {
  "sha256:deefe761a082baafbc755fb6cc9adb1c6b1c61cc6d7779266ab54f9119a9ce61" [label="docker-image://docker.io/supermy/cloud-cdh5:latest" shape="ellipse"];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" [label="local://context" shape="ellipse"];
  "sha256:747f396a12f9d7e7b060359f9872f9f2c6d4d0935d49a642662443edc1f8454f" [label="copy{src=/hadoop-env.sh, dest=/etc/hadoop/conf/hadoop-env.sh}" shape="note"];
  "sha256:6d3f87d53dcacf929e10c08ddce48b1d677edc6fd39bdc121c42565e867d3335" [label="copy{src=/core-site.xml.template, dest=/etc/hadoop/conf/core-site.xml.template}" shape="note"];
  "sha256:892c64f934a1525baa068d49f69bba6a0044940e092587d8fa1461c2d3f94cf0" [label="copy{src=/hdfs-site.xml, dest=/etc/hadoop/conf/hdfs-site.xml}" shape="note"];
  "sha256:1b7f1cbbb58162900fbf01f325e2c2a33a23244150f6e0f406feabc96d6bfac9" [label="copy{src=/yarn-site.xml, dest=/etc/hadoop/conf/yarn-site.xml}" shape="note"];
  "sha256:8b0ddde9c22787eee3abb6a79360f80917577fe9b2b874a85522e2442d62613d" [label="copy{src=/mapred-site.xml, dest=/etc/hadoop/conf/mapred-site.xml}" shape="note"];
  "sha256:daaeca97147fa48cda8fbde221cbbd20eb8919cd944bb34879497c5d0b8215c9" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:1d576f572245fc21e38b31346d178ffc51612c9f59b264f1385c2d5b1a28bd02" [label="copy{src=/pre-start-hadoop.sh, dest=/home/jamesmo/pre-start-hadoop.sh}" shape="note"];
  "sha256:da30d5b15ea6675e4ff7c109ef2e2503a9d2eaf6c08aee9db307111445ff6365" [label="/bin/sh -c chmod a+x /home/jamesmo/pre-start-hadoop.sh" shape="box"];
  "sha256:b533c9247902fdc72a4deae8b6e316bf5b8a35615cb4f4142780568b3996457e" [label="sha256:b533c9247902fdc72a4deae8b6e316bf5b8a35615cb4f4142780568b3996457e" shape="plaintext"];
  "sha256:deefe761a082baafbc755fb6cc9adb1c6b1c61cc6d7779266ab54f9119a9ce61" -> "sha256:747f396a12f9d7e7b060359f9872f9f2c6d4d0935d49a642662443edc1f8454f" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:747f396a12f9d7e7b060359f9872f9f2c6d4d0935d49a642662443edc1f8454f" [label=""];
  "sha256:747f396a12f9d7e7b060359f9872f9f2c6d4d0935d49a642662443edc1f8454f" -> "sha256:6d3f87d53dcacf929e10c08ddce48b1d677edc6fd39bdc121c42565e867d3335" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:6d3f87d53dcacf929e10c08ddce48b1d677edc6fd39bdc121c42565e867d3335" [label=""];
  "sha256:6d3f87d53dcacf929e10c08ddce48b1d677edc6fd39bdc121c42565e867d3335" -> "sha256:892c64f934a1525baa068d49f69bba6a0044940e092587d8fa1461c2d3f94cf0" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:892c64f934a1525baa068d49f69bba6a0044940e092587d8fa1461c2d3f94cf0" [label=""];
  "sha256:892c64f934a1525baa068d49f69bba6a0044940e092587d8fa1461c2d3f94cf0" -> "sha256:1b7f1cbbb58162900fbf01f325e2c2a33a23244150f6e0f406feabc96d6bfac9" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:1b7f1cbbb58162900fbf01f325e2c2a33a23244150f6e0f406feabc96d6bfac9" [label=""];
  "sha256:1b7f1cbbb58162900fbf01f325e2c2a33a23244150f6e0f406feabc96d6bfac9" -> "sha256:8b0ddde9c22787eee3abb6a79360f80917577fe9b2b874a85522e2442d62613d" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:8b0ddde9c22787eee3abb6a79360f80917577fe9b2b874a85522e2442d62613d" [label=""];
  "sha256:8b0ddde9c22787eee3abb6a79360f80917577fe9b2b874a85522e2442d62613d" -> "sha256:daaeca97147fa48cda8fbde221cbbd20eb8919cd944bb34879497c5d0b8215c9" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:daaeca97147fa48cda8fbde221cbbd20eb8919cd944bb34879497c5d0b8215c9" [label=""];
  "sha256:daaeca97147fa48cda8fbde221cbbd20eb8919cd944bb34879497c5d0b8215c9" -> "sha256:1d576f572245fc21e38b31346d178ffc51612c9f59b264f1385c2d5b1a28bd02" [label=""];
  "sha256:8e332e0bf21b90e26e06b1cf8b09e091dca09e8b45ae041e8cad8764c0f70d79" -> "sha256:1d576f572245fc21e38b31346d178ffc51612c9f59b264f1385c2d5b1a28bd02" [label=""];
  "sha256:1d576f572245fc21e38b31346d178ffc51612c9f59b264f1385c2d5b1a28bd02" -> "sha256:da30d5b15ea6675e4ff7c109ef2e2503a9d2eaf6c08aee9db307111445ff6365" [label=""];
  "sha256:da30d5b15ea6675e4ff7c109ef2e2503a9d2eaf6c08aee9db307111445ff6365" -> "sha256:b533c9247902fdc72a4deae8b6e316bf5b8a35615cb4f4142780568b3996457e" [label=""];
}

