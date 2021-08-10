[app/sources/476711508.Dockerfile]
digraph {
  "sha256:5f70e080ab7417cff8986d05f0a4cc34102068832756218bab2a7eaa213f31c4" [label="docker-image://docker.io/gitlab/gitlab-ce:11.1.0-rc4.ce.0" shape="ellipse"];
  "sha256:2f26e7600e8365ae53b9244205b11d801efe3df10e29357a60161120f9eb5073" [label="/bin/sh -c set -xe     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install -yqq locales tzdata     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ac15698c493e64c74778e1a79c98cb0c2c837acc3fa27b2e642c5dc6a6bc5f46" [label="/bin/sh -c set -xe     && echo \" # Preparing ...\"     && export DEBIAN_FRONTEND=noninteractive     && export SSL_CERT_DIR=/etc/ssl/certs/     && export GIT_SSL_CAPATH=/etc/ssl/certs/     && curl -sL https://deb.nodesource.com/setup_8.x | bash -     && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -     && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list     && apt-get update     && apt-get install -yqq lsb-release patch nodejs python build-essential yarn cmake" shape="box"];
  "sha256:42ff11a7da8ef225fd62ad8f0e8d3bf8fffe4783bcedc3a9becd61b7e33d5676" [label="/bin/sh -c set -xe     && echo \" # Generating translation patch ...\"     && cd /tmp     && git clone ${GITLAB_GIT_ZH} gitlab     && cd gitlab     && export IGNORE_DIRS=':!qa :!spec :!features :!.gitignore :!.gitlab :!locale :!app/assets/ :!vendor/assets/'     && git diff --diff-filter=d v11.1.0-rc4..v11.1.0-rc6-zh -- . ${IGNORE_DIRS} > ../zh_CN.diff     && echo \" # Patching ...\"     && patch -d ${GITLAB_DIR} -p1 < ../zh_CN.diff     && echo \" # Copy assets files ...\"     && git checkout v11.1.0-rc6-zh     && cp -R locale ${GITLAB_DIR}/     && mkdir -p ${GITLAB_DIR}/app     && cp -R app/assets ${GITLAB_DIR}/app/     && mkdir -p ${GITLAB_DIR}/vendor     && cp -R vendor/assets ${GITLAB_DIR}/vendor/" shape="box"];
  "sha256:d150fa18822fc6dc3d080caa3e7cb7c8dd55ac7bef1d410fc60a54072c0e7ee3" [label="/bin/sh -c set -xe     && echo \" # Regenerating the assets\"     && cd ${GITLAB_DIR}     && cp config/gitlab.yml.example config/gitlab.yml     && cp config/database.yml.postgresql config/database.yml     && cp config/secrets.yml.example config/secrets.yml     && rm -rf public/assets     && export NODE_ENV=production     && export RAILS_ENV=production     && export SETUP_DB=false     && export USE_DB=false     && export SKIP_STORAGE_VALIDATION=true     && export WEBPACK_REPORT=true     && export NO_COMPRESSION=true     && export NO_PRIVILEGE_DROP=true     && export NODE_OPTIONS=--max-old-space-size=4086     && yarn install --frozen-lockfile     && bin/bundle install --frozen     && bin/rake gettext:compile     && bin/rake gitlab:assets:compile" shape="box"];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" [label="/bin/sh -c set -xe     && echo \" # Cleaning ...\"     && yarn cache clean     && rm -rf log         tmp         config/gitlab.yml         config/database.yml         config/secrets.yml         .secret         .gitlab_shell_secret         .gitlab_workhorse_secret         app/assets         node_modules     && find /usr/lib/ -name __pycache__ | xargs rm -rf     && rm -rf /tmp/gitlab /tmp/*.diff /root/.cache /var/lib/apt/lists/*" shape="box"];
  "sha256:ee11f624e93c626c09415f4a9b0ccbf62b740a7f6eda69da0aa1ac779c05aad1" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/app, dest=/opt/gitlab/embedded/service/gitlab-rails/app}" shape="note"];
  "sha256:4164dbc1e0fe8bc0119fe2ac1ec5bf06d8583aa37690a34702a6e0855064e675" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/public, dest=/opt/gitlab/embedded/service/gitlab-rails/public}" shape="note"];
  "sha256:f009dd1d3790e36592e9b1e2b434df0366f28633404db75e43f992b8d7d7169c" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/config/application.rb, dest=/opt/gitlab/embedded/service/gitlab-rails/config/application.rb}" shape="note"];
  "sha256:66b29832b4f3c65579c183549e1537e93085f9a288298924f324114a711ae92d" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/config/initializers, dest=/opt/gitlab/embedded/service/gitlab-rails/config/initializers}" shape="note"];
  "sha256:b1fcb2891fa4ab20e126e266fc78bab209685514764bb61ad9dddda5ff28730b" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/config/locales, dest=/opt/gitlab/embedded/service/gitlab-rails/config/locales}" shape="note"];
  "sha256:1d40dd1d1962df4da5823c5666fd2b5dd626ec6f55ed171a6391bbf402d5bf22" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/lib/gitlab, dest=/opt/gitlab/embedded/service/gitlab-rails/lib/gitlab}" shape="note"];
  "sha256:f8344d3d51b29de0d604a718b15f6ad4579727db4b145cb861738f18c6d749aa" [label="copy{src=/opt/gitlab/embedded/service/gitlab-rails/locale, dest=/opt/gitlab/embedded/service/gitlab-rails/locale}" shape="note"];
  "sha256:81e5455ba11b452df322a79ca8aa74e428e24d527fa780173678292b22cead8e" [label="sha256:81e5455ba11b452df322a79ca8aa74e428e24d527fa780173678292b22cead8e" shape="plaintext"];
  "sha256:5f70e080ab7417cff8986d05f0a4cc34102068832756218bab2a7eaa213f31c4" -> "sha256:2f26e7600e8365ae53b9244205b11d801efe3df10e29357a60161120f9eb5073" [label=""];
  "sha256:5f70e080ab7417cff8986d05f0a4cc34102068832756218bab2a7eaa213f31c4" -> "sha256:ac15698c493e64c74778e1a79c98cb0c2c837acc3fa27b2e642c5dc6a6bc5f46" [label=""];
  "sha256:ac15698c493e64c74778e1a79c98cb0c2c837acc3fa27b2e642c5dc6a6bc5f46" -> "sha256:42ff11a7da8ef225fd62ad8f0e8d3bf8fffe4783bcedc3a9becd61b7e33d5676" [label=""];
  "sha256:42ff11a7da8ef225fd62ad8f0e8d3bf8fffe4783bcedc3a9becd61b7e33d5676" -> "sha256:d150fa18822fc6dc3d080caa3e7cb7c8dd55ac7bef1d410fc60a54072c0e7ee3" [label=""];
  "sha256:d150fa18822fc6dc3d080caa3e7cb7c8dd55ac7bef1d410fc60a54072c0e7ee3" -> "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" [label=""];
  "sha256:2f26e7600e8365ae53b9244205b11d801efe3df10e29357a60161120f9eb5073" -> "sha256:ee11f624e93c626c09415f4a9b0ccbf62b740a7f6eda69da0aa1ac779c05aad1" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:ee11f624e93c626c09415f4a9b0ccbf62b740a7f6eda69da0aa1ac779c05aad1" [label=""];
  "sha256:ee11f624e93c626c09415f4a9b0ccbf62b740a7f6eda69da0aa1ac779c05aad1" -> "sha256:4164dbc1e0fe8bc0119fe2ac1ec5bf06d8583aa37690a34702a6e0855064e675" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:4164dbc1e0fe8bc0119fe2ac1ec5bf06d8583aa37690a34702a6e0855064e675" [label=""];
  "sha256:4164dbc1e0fe8bc0119fe2ac1ec5bf06d8583aa37690a34702a6e0855064e675" -> "sha256:f009dd1d3790e36592e9b1e2b434df0366f28633404db75e43f992b8d7d7169c" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:f009dd1d3790e36592e9b1e2b434df0366f28633404db75e43f992b8d7d7169c" [label=""];
  "sha256:f009dd1d3790e36592e9b1e2b434df0366f28633404db75e43f992b8d7d7169c" -> "sha256:66b29832b4f3c65579c183549e1537e93085f9a288298924f324114a711ae92d" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:66b29832b4f3c65579c183549e1537e93085f9a288298924f324114a711ae92d" [label=""];
  "sha256:66b29832b4f3c65579c183549e1537e93085f9a288298924f324114a711ae92d" -> "sha256:b1fcb2891fa4ab20e126e266fc78bab209685514764bb61ad9dddda5ff28730b" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:b1fcb2891fa4ab20e126e266fc78bab209685514764bb61ad9dddda5ff28730b" [label=""];
  "sha256:b1fcb2891fa4ab20e126e266fc78bab209685514764bb61ad9dddda5ff28730b" -> "sha256:1d40dd1d1962df4da5823c5666fd2b5dd626ec6f55ed171a6391bbf402d5bf22" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:1d40dd1d1962df4da5823c5666fd2b5dd626ec6f55ed171a6391bbf402d5bf22" [label=""];
  "sha256:1d40dd1d1962df4da5823c5666fd2b5dd626ec6f55ed171a6391bbf402d5bf22" -> "sha256:f8344d3d51b29de0d604a718b15f6ad4579727db4b145cb861738f18c6d749aa" [label=""];
  "sha256:8678c2c38445922dc80b45176bdcc1cc6f21194f1c2eff60621d94663d44746c" -> "sha256:f8344d3d51b29de0d604a718b15f6ad4579727db4b145cb861738f18c6d749aa" [label=""];
  "sha256:f8344d3d51b29de0d604a718b15f6ad4579727db4b145cb861738f18c6d749aa" -> "sha256:81e5455ba11b452df322a79ca8aa74e428e24d527fa780173678292b22cead8e" [label=""];
}

