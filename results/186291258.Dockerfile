[app/sources/186291258.Dockerfile]
digraph {
  "sha256:8cb816f41cc9a78f77aea38cc8d493e9b35193a79e7ab9e5938bfdbedae89ebf" [label="docker-image://docker.io/tianon/debian:wheezy" shape="ellipse"];
  "sha256:5e7d0e7cbb3022a07183b4cf1b6a47efd9342ed8c180d191842a8221cf68e2f5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6d1d5e5c6368295de9b837fd39ec8818f31c5cadfa721d5863fc3c97f25786a1" [label="/bin/sh -c apt-get --force-yes -y install mysql-server" shape="box"];
  "sha256:02f56420ade3217e84be0538ce499b962e67b024a1190b9f93ccf709d84baaf8" [label="/bin/sh -c sed -i -e 's/bind-address/# bind-address/' /etc/mysql/my.cnf" shape="box"];
  "sha256:e0a3d76ec2b002987619e3eef2b2e2dd49c86c6faa6ba0c1c6325a6d58722e93" [label="/bin/sh -c mysql_install_db --user=mysql" shape="box"];
  "sha256:4cccb6d27056f67949b2ad2b1496ed2497bffff5cd0b8ebb7cc9c3f10d5b9a1b" [label="/bin/sh -c /etc/init.d/mysql start && mysql -S /var/run/mysqld/mysqld.sock -u root -e \"DELETE FROM mysql.user WHERE User = ''; UPDATE mysql.user SET Password=PASSWORD('root') WHERE User = 'root'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'; DROP DATABASE IF EXISTS test; FLUSH PRIVILEGES;\"; /etc/init.d/mysql stop" shape="box"];
  "sha256:860d754c8d080c472d03ab3251fef8c1a6125f865ffa6668186567891a38acb3" [label="local://context" shape="ellipse"];
  "sha256:724ee13db7ff0d5a90308bee036824dbe5d9d7dc5d628f200d82a4dc1f3b34f9" [label="copy{src=/start.sh, dest=/usr/local/bin/start.sh}" shape="note"];
  "sha256:99a03e3e9c1ad86921a2338d62f1ba459957d3aa9da81709f9dd8c2ba6287648" [label="/bin/sh -c chmod +x /usr/local/bin/start.sh" shape="box"];
  "sha256:6f340484ca84e2b64d7ac84c9bb4e0fe40519838d2aec09d526597d717215a7e" [label="sha256:6f340484ca84e2b64d7ac84c9bb4e0fe40519838d2aec09d526597d717215a7e" shape="plaintext"];
  "sha256:8cb816f41cc9a78f77aea38cc8d493e9b35193a79e7ab9e5938bfdbedae89ebf" -> "sha256:5e7d0e7cbb3022a07183b4cf1b6a47efd9342ed8c180d191842a8221cf68e2f5" [label=""];
  "sha256:5e7d0e7cbb3022a07183b4cf1b6a47efd9342ed8c180d191842a8221cf68e2f5" -> "sha256:6d1d5e5c6368295de9b837fd39ec8818f31c5cadfa721d5863fc3c97f25786a1" [label=""];
  "sha256:6d1d5e5c6368295de9b837fd39ec8818f31c5cadfa721d5863fc3c97f25786a1" -> "sha256:02f56420ade3217e84be0538ce499b962e67b024a1190b9f93ccf709d84baaf8" [label=""];
  "sha256:02f56420ade3217e84be0538ce499b962e67b024a1190b9f93ccf709d84baaf8" -> "sha256:e0a3d76ec2b002987619e3eef2b2e2dd49c86c6faa6ba0c1c6325a6d58722e93" [label=""];
  "sha256:e0a3d76ec2b002987619e3eef2b2e2dd49c86c6faa6ba0c1c6325a6d58722e93" -> "sha256:4cccb6d27056f67949b2ad2b1496ed2497bffff5cd0b8ebb7cc9c3f10d5b9a1b" [label=""];
  "sha256:4cccb6d27056f67949b2ad2b1496ed2497bffff5cd0b8ebb7cc9c3f10d5b9a1b" -> "sha256:724ee13db7ff0d5a90308bee036824dbe5d9d7dc5d628f200d82a4dc1f3b34f9" [label=""];
  "sha256:860d754c8d080c472d03ab3251fef8c1a6125f865ffa6668186567891a38acb3" -> "sha256:724ee13db7ff0d5a90308bee036824dbe5d9d7dc5d628f200d82a4dc1f3b34f9" [label=""];
  "sha256:724ee13db7ff0d5a90308bee036824dbe5d9d7dc5d628f200d82a4dc1f3b34f9" -> "sha256:99a03e3e9c1ad86921a2338d62f1ba459957d3aa9da81709f9dd8c2ba6287648" [label=""];
  "sha256:99a03e3e9c1ad86921a2338d62f1ba459957d3aa9da81709f9dd8c2ba6287648" -> "sha256:6f340484ca84e2b64d7ac84c9bb4e0fe40519838d2aec09d526597d717215a7e" [label=""];
}

