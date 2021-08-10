[app/sources/345394446.Dockerfile]
digraph {
  "sha256:a0c08b37d5d3e34365a2035ef775ff788b0072bfec9313f3b007bd24ed59b071" [label="docker-image://docker.io/bitnami/php-fpm:7.3.6-debian-9-r26@sha256:742390a7c96ec016c3db0031060efc6ef5bc0983f759167b8a01ecdc4ec2eaad" shape="ellipse"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" [label="docker-image://docker.io/bitnami/minideb:stretch@sha256:940f4bc821ab9d7d128a3e8bdc5644d16474e70270fe1af7e1095adc92882feb" shape="ellipse"];
  "sha256:c523f5b77a4431c322e89e01830ba5954ef4b0873992be536e0c553d82ac6bdb" [label="/bin/sh -c install_packages ca-certificates libbz2-1.0 libc6 libcomerr2 libcurl3 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed4 libicu57 libidn11 libidn2-0 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmemcached11 libmemcachedutil2 libncurses5 libnettle6 libnghttp2-14 libp11-kit0 libpng16-16 libpq5 libpsl5 libreadline7 librtmp1 libsasl2-2 libssh2-1 libssl1.0.2 libssl1.1 libstdc++6 libsybdb5 libtasn1-6 libtidy5 libtinfo5 libunistring0 libxml2 libxslt1.1 libzip4 zlib1g" shape="box"];
  "sha256:c053700a429d934c726a9a2ae65f7481078df7ff846dbec8bc270aacca61467f" [label="/bin/sh -c sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS    90/' /etc/login.defs &&     sed -i 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS    0/' /etc/login.defs &&     sed -i 's/sha512/sha512 minlen=8/' /etc/pam.d/common-password" shape="box"];
  "sha256:5e92827af52b6fa82dc9ee417be47b639e561f7ada27036add33f787d41fd5bd" [label="copy{src=/opt/bitnami/common, dest=/opt/bitnami/common}" shape="note"];
  "sha256:a087377a126a503e2f85bda2f040af715895c3dcd2239ab0f60a2c5a21e622fe" [label="copy{src=/opt/bitnami/php, dest=/opt/bitnami/php}" shape="note"];
  "sha256:e25d81ee004d657cc704651171135777c484e5064a5732ec9b397f1e36eb4888" [label="sha256:e25d81ee004d657cc704651171135777c484e5064a5732ec9b397f1e36eb4888" shape="plaintext"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" -> "sha256:c523f5b77a4431c322e89e01830ba5954ef4b0873992be536e0c553d82ac6bdb" [label=""];
  "sha256:c523f5b77a4431c322e89e01830ba5954ef4b0873992be536e0c553d82ac6bdb" -> "sha256:c053700a429d934c726a9a2ae65f7481078df7ff846dbec8bc270aacca61467f" [label=""];
  "sha256:c053700a429d934c726a9a2ae65f7481078df7ff846dbec8bc270aacca61467f" -> "sha256:5e92827af52b6fa82dc9ee417be47b639e561f7ada27036add33f787d41fd5bd" [label=""];
  "sha256:a0c08b37d5d3e34365a2035ef775ff788b0072bfec9313f3b007bd24ed59b071" -> "sha256:5e92827af52b6fa82dc9ee417be47b639e561f7ada27036add33f787d41fd5bd" [label=""];
  "sha256:5e92827af52b6fa82dc9ee417be47b639e561f7ada27036add33f787d41fd5bd" -> "sha256:a087377a126a503e2f85bda2f040af715895c3dcd2239ab0f60a2c5a21e622fe" [label=""];
  "sha256:a0c08b37d5d3e34365a2035ef775ff788b0072bfec9313f3b007bd24ed59b071" -> "sha256:a087377a126a503e2f85bda2f040af715895c3dcd2239ab0f60a2c5a21e622fe" [label=""];
  "sha256:a087377a126a503e2f85bda2f040af715895c3dcd2239ab0f60a2c5a21e622fe" -> "sha256:e25d81ee004d657cc704651171135777c484e5064a5732ec9b397f1e36eb4888" [label=""];
}

