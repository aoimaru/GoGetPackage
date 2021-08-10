[app/sources/169374311.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:a3047ffae5445bbe758cff11ae8b5b4cf3473b3047d017ab2ee3ef71a287bc85" [label="/bin/sh -c yum update -y && yum install -y   unzip   wget   bundle   ruby-devel   make   gcc   openssl-devel" shape="box"];
  "sha256:26c2d190d3ff483cdd482a96c5610a7d542ba741670d028af7403bd3d2befd7e" [label="/bin/sh -c gem install foreman bundler" shape="box"];
  "sha256:1e65f60b2cb91d012bf17da687dc5ffd6887082d289ff6880e0b61922f35880f" [label="local://context" shape="ellipse"];
  "sha256:19e387960bd10e1287476cdd77eaee54daf7e438d418b58514a65279cbca6362" [label="copy{src=/Gemfile, dest=/srv/www/swaggerific/}" shape="note"];
  "sha256:c10a8cbbc82840356a830203f07c670c82e8032a349cbabebacbc60a262c0147" [label="copy{src=/Gemfile.lock, dest=/srv/www/swaggerific/}" shape="note"];
  "sha256:4d08ef7bc66f328b133aea6213ef90a9fc9e0e5a4ad82b4388926c9ec545387d" [label="mkdir{path=/srv/www/swaggerific}" shape="note"];
  "sha256:dd05c3429377f5d022159401a6ffd9992d082ea1e917117a64738cdf7a0991a9" [label="/bin/sh -c bundle install --deployment --without test,development" shape="box"];
  "sha256:7edf76fe0f27f8ecb10a761346fa9b01bb5adbaf803be481015221b3c88e377c" [label="copy{src=/, dest=/srv/www/swaggerific}" shape="note"];
  "sha256:2218f0f1b485edbf0177a9f119ed333520b00a114091050a1a948d81324ede7c" [label="sha256:2218f0f1b485edbf0177a9f119ed333520b00a114091050a1a948d81324ede7c" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:a3047ffae5445bbe758cff11ae8b5b4cf3473b3047d017ab2ee3ef71a287bc85" [label=""];
  "sha256:a3047ffae5445bbe758cff11ae8b5b4cf3473b3047d017ab2ee3ef71a287bc85" -> "sha256:26c2d190d3ff483cdd482a96c5610a7d542ba741670d028af7403bd3d2befd7e" [label=""];
  "sha256:26c2d190d3ff483cdd482a96c5610a7d542ba741670d028af7403bd3d2befd7e" -> "sha256:19e387960bd10e1287476cdd77eaee54daf7e438d418b58514a65279cbca6362" [label=""];
  "sha256:1e65f60b2cb91d012bf17da687dc5ffd6887082d289ff6880e0b61922f35880f" -> "sha256:19e387960bd10e1287476cdd77eaee54daf7e438d418b58514a65279cbca6362" [label=""];
  "sha256:19e387960bd10e1287476cdd77eaee54daf7e438d418b58514a65279cbca6362" -> "sha256:c10a8cbbc82840356a830203f07c670c82e8032a349cbabebacbc60a262c0147" [label=""];
  "sha256:1e65f60b2cb91d012bf17da687dc5ffd6887082d289ff6880e0b61922f35880f" -> "sha256:c10a8cbbc82840356a830203f07c670c82e8032a349cbabebacbc60a262c0147" [label=""];
  "sha256:c10a8cbbc82840356a830203f07c670c82e8032a349cbabebacbc60a262c0147" -> "sha256:4d08ef7bc66f328b133aea6213ef90a9fc9e0e5a4ad82b4388926c9ec545387d" [label=""];
  "sha256:4d08ef7bc66f328b133aea6213ef90a9fc9e0e5a4ad82b4388926c9ec545387d" -> "sha256:dd05c3429377f5d022159401a6ffd9992d082ea1e917117a64738cdf7a0991a9" [label=""];
  "sha256:dd05c3429377f5d022159401a6ffd9992d082ea1e917117a64738cdf7a0991a9" -> "sha256:7edf76fe0f27f8ecb10a761346fa9b01bb5adbaf803be481015221b3c88e377c" [label=""];
  "sha256:1e65f60b2cb91d012bf17da687dc5ffd6887082d289ff6880e0b61922f35880f" -> "sha256:7edf76fe0f27f8ecb10a761346fa9b01bb5adbaf803be481015221b3c88e377c" [label=""];
  "sha256:7edf76fe0f27f8ecb10a761346fa9b01bb5adbaf803be481015221b3c88e377c" -> "sha256:2218f0f1b485edbf0177a9f119ed333520b00a114091050a1a948d81324ede7c" [label=""];
}

