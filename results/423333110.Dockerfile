[app/sources/423333110.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:406cc8ad8594ceaa391dacbba2a5c6dd330eef11005789c208290efe2d56b537" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     nginx git curl     php     php-bz2     php-json     php-mbstring     php-zip     php-xml     php-fpm   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9748414c0ca7f3daf218ef91b107f0a5a04c1ceb27b66522e1a5bd2eb75b741f" [label="/bin/sh -c mkdir /website /root/.ssh" shape="box"];
  "sha256:db2c24ce984045d7a4832497ac749c458f0fbc7c429337f3c9444ffbb658d221" [label="/bin/sh -c ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts" shape="box"];
  "sha256:0b198b2f8044378afaa6a0cca7f3683c96c28ab51413436e005a4a9b3ed4a736" [label="/bin/sh -c git clone https://github.com/cakephp/cakephp.git /cakephp   && cd /cakephp   && git fetch origin --tags" shape="box"];
  "sha256:de09a9834ff5ed331dd7f052b1c99c92a6c92ce7d7fb65209e424f2e784dfea1" [label="/bin/sh -c git clone https://github.com/cakephp/chronos.git /chronos" shape="box"];
  "sha256:c07390b472860f67cf47dc76abc9a2494002ebaa1f2e255a740a15a9eb444c01" [label="mkdir{path=/data}" shape="note"];
  "sha256:eddac5784c6e0d20dbfaa466d92fb9414f3b2194f462f753ba54802f05b72f49" [label="local://context" shape="ellipse"];
  "sha256:96407980c918ed4b54765844245d613b78b781010e046d26fcbc7face870aa3a" [label="copy{src=/, dest=/data}" shape="note"];
  "sha256:8a398f2b6088273f6101da415be7ff02f31168a3e199665ea9c6f457b53f2347" [label="/bin/sh -c cd /cakephp && git fetch origin" shape="box"];
  "sha256:619aadc09148e09fdde19b67c11f406f0a8f966ab3b9a772b01245d940a447d9" [label="/bin/sh -c cd /chronos && git fetch origin" shape="box"];
  "sha256:9e9b3f6b79c48d305f27cb754e17f63bed71e46410f0834d0ad5b864350367db" [label="/bin/sh -c cd /data   && ls -lah   && make clean build-all SOURCE_DIR=/cakephp CHRONOS_SOURCE_DIR=/chronos   && make deploy DEPLOY_DIR=/var/www/html" shape="box"];
  "sha256:9f2d8215ec12220aad3a5fdd5c2b5651adfb487b7e0d965ac32855870fc86e30" [label="/bin/sh -c rm /var/www/html/index.nginx-debian.html   && mv /data/nginx.conf /etc/nginx/sites-enabled/default   && ls /etc/nginx/sites-enabled/ /etc/nginx/" shape="box"];
  "sha256:d032726e2da39b9f7b846f2f5ecac8c78012c243cb54a3dd3bc3630e2aa83154" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log   && ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:69680ad9dd4ff985a47bbecacac4c1c1624aff0bd73898aedd35cca1efbd9c94" [label="sha256:69680ad9dd4ff985a47bbecacac4c1c1624aff0bd73898aedd35cca1efbd9c94" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:406cc8ad8594ceaa391dacbba2a5c6dd330eef11005789c208290efe2d56b537" [label=""];
  "sha256:406cc8ad8594ceaa391dacbba2a5c6dd330eef11005789c208290efe2d56b537" -> "sha256:9748414c0ca7f3daf218ef91b107f0a5a04c1ceb27b66522e1a5bd2eb75b741f" [label=""];
  "sha256:9748414c0ca7f3daf218ef91b107f0a5a04c1ceb27b66522e1a5bd2eb75b741f" -> "sha256:db2c24ce984045d7a4832497ac749c458f0fbc7c429337f3c9444ffbb658d221" [label=""];
  "sha256:db2c24ce984045d7a4832497ac749c458f0fbc7c429337f3c9444ffbb658d221" -> "sha256:0b198b2f8044378afaa6a0cca7f3683c96c28ab51413436e005a4a9b3ed4a736" [label=""];
  "sha256:0b198b2f8044378afaa6a0cca7f3683c96c28ab51413436e005a4a9b3ed4a736" -> "sha256:de09a9834ff5ed331dd7f052b1c99c92a6c92ce7d7fb65209e424f2e784dfea1" [label=""];
  "sha256:de09a9834ff5ed331dd7f052b1c99c92a6c92ce7d7fb65209e424f2e784dfea1" -> "sha256:c07390b472860f67cf47dc76abc9a2494002ebaa1f2e255a740a15a9eb444c01" [label=""];
  "sha256:c07390b472860f67cf47dc76abc9a2494002ebaa1f2e255a740a15a9eb444c01" -> "sha256:96407980c918ed4b54765844245d613b78b781010e046d26fcbc7face870aa3a" [label=""];
  "sha256:eddac5784c6e0d20dbfaa466d92fb9414f3b2194f462f753ba54802f05b72f49" -> "sha256:96407980c918ed4b54765844245d613b78b781010e046d26fcbc7face870aa3a" [label=""];
  "sha256:96407980c918ed4b54765844245d613b78b781010e046d26fcbc7face870aa3a" -> "sha256:8a398f2b6088273f6101da415be7ff02f31168a3e199665ea9c6f457b53f2347" [label=""];
  "sha256:8a398f2b6088273f6101da415be7ff02f31168a3e199665ea9c6f457b53f2347" -> "sha256:619aadc09148e09fdde19b67c11f406f0a8f966ab3b9a772b01245d940a447d9" [label=""];
  "sha256:619aadc09148e09fdde19b67c11f406f0a8f966ab3b9a772b01245d940a447d9" -> "sha256:9e9b3f6b79c48d305f27cb754e17f63bed71e46410f0834d0ad5b864350367db" [label=""];
  "sha256:9e9b3f6b79c48d305f27cb754e17f63bed71e46410f0834d0ad5b864350367db" -> "sha256:9f2d8215ec12220aad3a5fdd5c2b5651adfb487b7e0d965ac32855870fc86e30" [label=""];
  "sha256:9f2d8215ec12220aad3a5fdd5c2b5651adfb487b7e0d965ac32855870fc86e30" -> "sha256:d032726e2da39b9f7b846f2f5ecac8c78012c243cb54a3dd3bc3630e2aa83154" [label=""];
  "sha256:d032726e2da39b9f7b846f2f5ecac8c78012c243cb54a3dd3bc3630e2aa83154" -> "sha256:69680ad9dd4ff985a47bbecacac4c1c1624aff0bd73898aedd35cca1efbd9c94" [label=""];
}

