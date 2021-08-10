[app/sources/163275261.Dockerfile]
digraph {
  "sha256:d9544d02f12ebf59d6ec8c364f6aa14b702065374d513a58cea61573aaf032b5" [label="local://context" shape="ellipse"];
  "sha256:d97d27cb65c8e69b9318ce0d9a4c8544ef583342e0ba622fea3f5ac28e18460d" [label="docker-image://docker.io/puckel/docker-airflow:1.8.0" shape="ellipse"];
  "sha256:50b08333ba2767d61835539f12b907367e31f3eb4ee1c84e96248d65787081c9" [label="/bin/sh -c set -ex     && curl --location -o /tmp/dumb-init_1.2.0_amd64.deb https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64.deb     && echo '9af7440986893c904f24c086c50846ddc5a0f24864f5566b747b8f1a17f7fd52  /tmp/dumb-init_1.2.0_amd64.deb' >/tmp/SHA256SUM     && sha256sum --strict --check /tmp/SHA256SUM     && dpkg -i /tmp/dumb-init_1.2.0_amd64.deb     && rm -f /tmp/dumb-init_1.2.0_amd64.deb     && :     && apt-get --purge -y autoremove     && rm -rf /root/.cache     && find / -xdev -perm /u+s,g+s -type f -exec chmod u-s,g-s '{}' +     && :" shape="box"];
  "sha256:f8fb66bdf2a1ee34cd0487c924e68ad2287041907537eacf79b873a52ecfb80e" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:0af49de3917cbb177283e62a3730fc63db49a2fe6cf80c2c0956ad0cff7a1aec" [label="sha256:0af49de3917cbb177283e62a3730fc63db49a2fe6cf80c2c0956ad0cff7a1aec" shape="plaintext"];
  "sha256:d97d27cb65c8e69b9318ce0d9a4c8544ef583342e0ba622fea3f5ac28e18460d" -> "sha256:50b08333ba2767d61835539f12b907367e31f3eb4ee1c84e96248d65787081c9" [label=""];
  "sha256:50b08333ba2767d61835539f12b907367e31f3eb4ee1c84e96248d65787081c9" -> "sha256:f8fb66bdf2a1ee34cd0487c924e68ad2287041907537eacf79b873a52ecfb80e" [label=""];
  "sha256:d9544d02f12ebf59d6ec8c364f6aa14b702065374d513a58cea61573aaf032b5" -> "sha256:f8fb66bdf2a1ee34cd0487c924e68ad2287041907537eacf79b873a52ecfb80e" [label=""];
  "sha256:f8fb66bdf2a1ee34cd0487c924e68ad2287041907537eacf79b873a52ecfb80e" -> "sha256:0af49de3917cbb177283e62a3730fc63db49a2fe6cf80c2c0956ad0cff7a1aec" [label=""];
}

