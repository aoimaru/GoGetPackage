[app/sources/294449830.Dockerfile]
digraph {
  "sha256:b6fb343a5753b793e6ddff112c6e526eab966a7a1a60f1168b6f1d30b2cb1e8a" [label="local://context" shape="ellipse"];
  "sha256:5cddc48c856093960bb1b738b0f41338cbb9db33b3a5e3a1eb9fb3bcc3b94fac" [label="docker-image://docker.io/metasfresh/metasfresh-webui:5.108" shape="ellipse"];
  "sha256:759349a46515ca5c1d70e325badc052f652af79f9b2efa925da9c5ea941ac265" [label="copy{src=/sources/configs/config.js, dest=/opt/metasfresh-webui-frontend/dist/}" shape="note"];
  "sha256:354f4baa4010ff385c7ab2b950bfa95a001a9f92f3dea60dd16d2df5ea29a165" [label="copy{src=/sources/configs/metasfresh_webui.conf, dest=/etc/apache2/sites-available/}" shape="note"];
  "sha256:8ee904fbf4a759e7578176447c331f5f60e272143a645ac0dd933c650257087a" [label="/bin/sh -c mkdir -p /etc/apache2/certs/" shape="box"];
  "sha256:88efa1941fc6edc1f5b7d377069b538a630e060829e922a57bd9bb22142813b5" [label="copy{src=/sources/certs, dest=/etc/apache2/certs}" shape="note"];
  "sha256:b2f59a8d8e92d165e0bc209ead3aca312d24ea78a2c33d64ebdd62d82cab011f" [label="/bin/sh -c a2ensite metasfresh_webui.conf" shape="box"];
  "sha256:1cee980abe0d979edeee180272f3ecdd513e4ea14cc54b784ffe09e08961b3e7" [label="/bin/sh -c . /etc/apache2/envvars" shape="box"];
  "sha256:59be3293a38b76d7b9780c3b8e9d5e451895798cfbe67d15cb5701bdd02ab558" [label="/bin/sh -c chown www-data:www-data -R /opt/metasfresh-webui-frontend/" shape="box"];
  "sha256:4dcc9ac27e798a904748c38f85bf75fb4e06646058d095062153f2b8fb56b939" [label="sha256:4dcc9ac27e798a904748c38f85bf75fb4e06646058d095062153f2b8fb56b939" shape="plaintext"];
  "sha256:5cddc48c856093960bb1b738b0f41338cbb9db33b3a5e3a1eb9fb3bcc3b94fac" -> "sha256:759349a46515ca5c1d70e325badc052f652af79f9b2efa925da9c5ea941ac265" [label=""];
  "sha256:b6fb343a5753b793e6ddff112c6e526eab966a7a1a60f1168b6f1d30b2cb1e8a" -> "sha256:759349a46515ca5c1d70e325badc052f652af79f9b2efa925da9c5ea941ac265" [label=""];
  "sha256:759349a46515ca5c1d70e325badc052f652af79f9b2efa925da9c5ea941ac265" -> "sha256:354f4baa4010ff385c7ab2b950bfa95a001a9f92f3dea60dd16d2df5ea29a165" [label=""];
  "sha256:b6fb343a5753b793e6ddff112c6e526eab966a7a1a60f1168b6f1d30b2cb1e8a" -> "sha256:354f4baa4010ff385c7ab2b950bfa95a001a9f92f3dea60dd16d2df5ea29a165" [label=""];
  "sha256:354f4baa4010ff385c7ab2b950bfa95a001a9f92f3dea60dd16d2df5ea29a165" -> "sha256:8ee904fbf4a759e7578176447c331f5f60e272143a645ac0dd933c650257087a" [label=""];
  "sha256:8ee904fbf4a759e7578176447c331f5f60e272143a645ac0dd933c650257087a" -> "sha256:88efa1941fc6edc1f5b7d377069b538a630e060829e922a57bd9bb22142813b5" [label=""];
  "sha256:b6fb343a5753b793e6ddff112c6e526eab966a7a1a60f1168b6f1d30b2cb1e8a" -> "sha256:88efa1941fc6edc1f5b7d377069b538a630e060829e922a57bd9bb22142813b5" [label=""];
  "sha256:88efa1941fc6edc1f5b7d377069b538a630e060829e922a57bd9bb22142813b5" -> "sha256:b2f59a8d8e92d165e0bc209ead3aca312d24ea78a2c33d64ebdd62d82cab011f" [label=""];
  "sha256:b2f59a8d8e92d165e0bc209ead3aca312d24ea78a2c33d64ebdd62d82cab011f" -> "sha256:1cee980abe0d979edeee180272f3ecdd513e4ea14cc54b784ffe09e08961b3e7" [label=""];
  "sha256:1cee980abe0d979edeee180272f3ecdd513e4ea14cc54b784ffe09e08961b3e7" -> "sha256:59be3293a38b76d7b9780c3b8e9d5e451895798cfbe67d15cb5701bdd02ab558" [label=""];
  "sha256:59be3293a38b76d7b9780c3b8e9d5e451895798cfbe67d15cb5701bdd02ab558" -> "sha256:4dcc9ac27e798a904748c38f85bf75fb4e06646058d095062153f2b8fb56b939" [label=""];
}

