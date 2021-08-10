[app/sources/129457914.Dockerfile]
digraph {
  "sha256:ad842b72f40bd13757594916fed3327dad663609e86e85adf52a5b5ffb0a54ca" [label="docker-image://docker.io/eddelbuettel/ubuntu-r-base:latest" shape="ellipse"];
  "sha256:43a7cf44423d2decc630417255ce3d4d6034c3a51bf5bef3805fd0e5a997ec4e" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe\" >> /etc/apt/sources.list && apt-get update && apt-get install -y -q    libapparmor1    libcurl4-openssl-dev    libssl0.9.8    psmisc    supervisor    sudo && update-locale && (wget -q https://s3.amazonaws.com/rstudio-server/current.ver -O currentVersion.txt && ver=$(cat currentVersion.txt) && wget http://download2.rstudio.org/rstudio-server-${ver}-amd64.deb && dpkg -i rstudio-server-${ver}-amd64.deb && rm rstudio-server-*-amd64.deb currentVersion.txt)" shape="box"];
  "sha256:187fd7b6d3c16b37801a052c3a6c8a2ae7cee6056da5f895d37baea17e15138b" [label="local://context" shape="ellipse"];
  "sha256:14d66b0721ccbdecdd434b9adbaa930e5c61bd95da4cd509f358295d54099fdb" [label="copy{src=/userconf.sh, dest=/usr/bin/userconf.sh}" shape="note"];
  "sha256:2d45d50bb450eb898661ad9963946897b6561ca0b8dcc0bca07fd70d4f37f292" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:69158a652f10637dfd5358f56e0353d6769f33588c4054a5e45824e66feaaca3" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:7d2c4dde9256df2335a6a4ca411a0719228514466f0ab8ab51282f98cf40658b" [label="sha256:7d2c4dde9256df2335a6a4ca411a0719228514466f0ab8ab51282f98cf40658b" shape="plaintext"];
  "sha256:ad842b72f40bd13757594916fed3327dad663609e86e85adf52a5b5ffb0a54ca" -> "sha256:43a7cf44423d2decc630417255ce3d4d6034c3a51bf5bef3805fd0e5a997ec4e" [label=""];
  "sha256:43a7cf44423d2decc630417255ce3d4d6034c3a51bf5bef3805fd0e5a997ec4e" -> "sha256:14d66b0721ccbdecdd434b9adbaa930e5c61bd95da4cd509f358295d54099fdb" [label=""];
  "sha256:187fd7b6d3c16b37801a052c3a6c8a2ae7cee6056da5f895d37baea17e15138b" -> "sha256:14d66b0721ccbdecdd434b9adbaa930e5c61bd95da4cd509f358295d54099fdb" [label=""];
  "sha256:14d66b0721ccbdecdd434b9adbaa930e5c61bd95da4cd509f358295d54099fdb" -> "sha256:2d45d50bb450eb898661ad9963946897b6561ca0b8dcc0bca07fd70d4f37f292" [label=""];
  "sha256:2d45d50bb450eb898661ad9963946897b6561ca0b8dcc0bca07fd70d4f37f292" -> "sha256:69158a652f10637dfd5358f56e0353d6769f33588c4054a5e45824e66feaaca3" [label=""];
  "sha256:187fd7b6d3c16b37801a052c3a6c8a2ae7cee6056da5f895d37baea17e15138b" -> "sha256:69158a652f10637dfd5358f56e0353d6769f33588c4054a5e45824e66feaaca3" [label=""];
  "sha256:69158a652f10637dfd5358f56e0353d6769f33588c4054a5e45824e66feaaca3" -> "sha256:7d2c4dde9256df2335a6a4ca411a0719228514466f0ab8ab51282f98cf40658b" [label=""];
}

