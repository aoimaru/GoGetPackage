[app/sources/281862395.Dockerfile]
digraph {
  "sha256:ac4e2f5df014f9bee27ea96b9f82eaec73281af5aeb2ebeba9e3c56a23f809f4" [label="docker-image://docker.io/library/postgres:9.6.9-alpine" shape="ellipse"];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" [label="local://context" shape="ellipse"];
  "sha256:8f0bef6a04c7bdacac73b187a87d38778a9dfa4e9f95102789e2c886604ce110" [label="copy{src=/bin/entrypoint, dest=/}" shape="note"];
  "sha256:4cfe09bdd78e9b95a0cd9f0a8945f75552836d2c9ee9ced68f9e0b603ffd620e" [label="copy{src=/bin/pg-init.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:ecddc143973ee0b451e431705ac2744bc51561019eea18b509a0f2ffdf5fb888" [label="copy{src=/etc/pg_server.key, dest=/var/lib/postgresql/server.key}" shape="note"];
  "sha256:660ba3c1658b97e5747209c3525756de75b661ea76d73f654316bb5b4604aa82" [label="copy{src=/etc/pg_server.crt, dest=/var/lib/postgresql/server.crt}" shape="note"];
  "sha256:3e0096c38c0b150217b471c15c3fcdc451029518cba025c593e082e9b77e512f" [label="copy{src=/etc/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:cbd050959429587ada11b87ffa2ce1fefbdca7e0f98ab5795123e489b79fe5e9" [label="copy{src=/etc/secretless.yml, dest=/etc/},copy{src=/etc/motd, dest=/etc/}" shape="note"];
  "sha256:ebd745af2a5ee2bca252719ef557a30e3f3f6e2ab943b929b5462e44368028e5" [label="/bin/sh -c apk add --no-cache apache2-utils                        libc6-compat                        nginx                        tini                        openssh                        openssl     && mkdir -p /lib64 /etc/nginx /run/nginx /home/user/.ssh/     && ssh-keygen -A     && adduser -DH secretless     && chown secretless /etc/secretless.yml     && adduser -s /bin/bash -D user     && passwd -u user     && sed         -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g'         /etc/ssh/sshd_config     && chown postgres:postgres /var/lib/postgresql/server.key     && chown postgres:postgres /var/lib/postgresql/server.crt     && chmod 0600 /var/lib/postgresql/server.key" shape="box"];
  "sha256:2eee44fc931a580309d0440473fb9bd1af365089cd0243080f17fc38daeaa5c8" [label="docker-image://docker.io/library/secretless-broker:latest" shape="ellipse"];
  "sha256:2743132e02a945a0e84a79e55ef31ff5ef7e614e95b8292e54e9bdf5086e1b23" [label="copy{src=/usr/local/bin/secretless-broker, dest=/usr/local/bin/}" shape="note"];
  "sha256:a5517c757cfb80ee4f6748f62adc7a81a7af63127abe7a40a0cbed8cb46a720c" [label="sha256:a5517c757cfb80ee4f6748f62adc7a81a7af63127abe7a40a0cbed8cb46a720c" shape="plaintext"];
  "sha256:ac4e2f5df014f9bee27ea96b9f82eaec73281af5aeb2ebeba9e3c56a23f809f4" -> "sha256:8f0bef6a04c7bdacac73b187a87d38778a9dfa4e9f95102789e2c886604ce110" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:8f0bef6a04c7bdacac73b187a87d38778a9dfa4e9f95102789e2c886604ce110" [label=""];
  "sha256:8f0bef6a04c7bdacac73b187a87d38778a9dfa4e9f95102789e2c886604ce110" -> "sha256:4cfe09bdd78e9b95a0cd9f0a8945f75552836d2c9ee9ced68f9e0b603ffd620e" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:4cfe09bdd78e9b95a0cd9f0a8945f75552836d2c9ee9ced68f9e0b603ffd620e" [label=""];
  "sha256:4cfe09bdd78e9b95a0cd9f0a8945f75552836d2c9ee9ced68f9e0b603ffd620e" -> "sha256:ecddc143973ee0b451e431705ac2744bc51561019eea18b509a0f2ffdf5fb888" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:ecddc143973ee0b451e431705ac2744bc51561019eea18b509a0f2ffdf5fb888" [label=""];
  "sha256:ecddc143973ee0b451e431705ac2744bc51561019eea18b509a0f2ffdf5fb888" -> "sha256:660ba3c1658b97e5747209c3525756de75b661ea76d73f654316bb5b4604aa82" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:660ba3c1658b97e5747209c3525756de75b661ea76d73f654316bb5b4604aa82" [label=""];
  "sha256:660ba3c1658b97e5747209c3525756de75b661ea76d73f654316bb5b4604aa82" -> "sha256:3e0096c38c0b150217b471c15c3fcdc451029518cba025c593e082e9b77e512f" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:3e0096c38c0b150217b471c15c3fcdc451029518cba025c593e082e9b77e512f" [label=""];
  "sha256:3e0096c38c0b150217b471c15c3fcdc451029518cba025c593e082e9b77e512f" -> "sha256:cbd050959429587ada11b87ffa2ce1fefbdca7e0f98ab5795123e489b79fe5e9" [label=""];
  "sha256:e59a630ffe5dba0becf5f08c915ef4da5a65b4df84a6527c3d872d490f31daf5" -> "sha256:cbd050959429587ada11b87ffa2ce1fefbdca7e0f98ab5795123e489b79fe5e9" [label=""];
  "sha256:cbd050959429587ada11b87ffa2ce1fefbdca7e0f98ab5795123e489b79fe5e9" -> "sha256:ebd745af2a5ee2bca252719ef557a30e3f3f6e2ab943b929b5462e44368028e5" [label=""];
  "sha256:ebd745af2a5ee2bca252719ef557a30e3f3f6e2ab943b929b5462e44368028e5" -> "sha256:2743132e02a945a0e84a79e55ef31ff5ef7e614e95b8292e54e9bdf5086e1b23" [label=""];
  "sha256:2eee44fc931a580309d0440473fb9bd1af365089cd0243080f17fc38daeaa5c8" -> "sha256:2743132e02a945a0e84a79e55ef31ff5ef7e614e95b8292e54e9bdf5086e1b23" [label=""];
  "sha256:2743132e02a945a0e84a79e55ef31ff5ef7e614e95b8292e54e9bdf5086e1b23" -> "sha256:a5517c757cfb80ee4f6748f62adc7a81a7af63127abe7a40a0cbed8cb46a720c" [label=""];
}

