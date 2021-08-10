[app/sources/164765403.Dockerfile]
digraph {
  "sha256:8ee0916406a6708a6c4125e65e9a7d8a6f5b7c3d4631101d1e808705042c2b07" [label="docker-image://docker.io/dveeden/mysqlcluster74:base" shape="ellipse"];
  "sha256:714c2da1afeb113e0856d507e77dba106aa8df824b32bf39056f745a7d3a0398" [label="/bin/sh -c yum -y install perl perl-Data-Dumper" shape="box"];
  "sha256:b71a65446011790aa650324fbfccb2c05d2648c6f627236cba2c9c726d079f29" [label="/bin/sh -c mkdir -p /usr/local/mysql" shape="box"];
  "sha256:3f8ae517fd8d8fb9f2c564f215fec687d8334d66c19886f57c15545d7531babd" [label="/bin/sh -c cd /opt/mysql; ./scripts/mysql_install_db --user=mysql --datadir=/usr/local/mysql/data" shape="box"];
  "sha256:7ce02cf17e910017229dcb506a3d44e66a5e7d01d4e136d53dec0fac56ed735e" [label="local://context" shape="ellipse"];
  "sha256:e9ca9f8c0499cdd2a7cbaf7cd326b4bcf5ad4077593bab14510185b487a9c1b7" [label="copy{src=/my.cnf, dest=/etc/}" shape="note"];
  "sha256:63723078ec2f10e7cba4c4a43ac1d2f2fb83e5c602afd291c1e6411a9bfb71b3" [label="sha256:63723078ec2f10e7cba4c4a43ac1d2f2fb83e5c602afd291c1e6411a9bfb71b3" shape="plaintext"];
  "sha256:8ee0916406a6708a6c4125e65e9a7d8a6f5b7c3d4631101d1e808705042c2b07" -> "sha256:714c2da1afeb113e0856d507e77dba106aa8df824b32bf39056f745a7d3a0398" [label=""];
  "sha256:714c2da1afeb113e0856d507e77dba106aa8df824b32bf39056f745a7d3a0398" -> "sha256:b71a65446011790aa650324fbfccb2c05d2648c6f627236cba2c9c726d079f29" [label=""];
  "sha256:b71a65446011790aa650324fbfccb2c05d2648c6f627236cba2c9c726d079f29" -> "sha256:3f8ae517fd8d8fb9f2c564f215fec687d8334d66c19886f57c15545d7531babd" [label=""];
  "sha256:3f8ae517fd8d8fb9f2c564f215fec687d8334d66c19886f57c15545d7531babd" -> "sha256:e9ca9f8c0499cdd2a7cbaf7cd326b4bcf5ad4077593bab14510185b487a9c1b7" [label=""];
  "sha256:7ce02cf17e910017229dcb506a3d44e66a5e7d01d4e136d53dec0fac56ed735e" -> "sha256:e9ca9f8c0499cdd2a7cbaf7cd326b4bcf5ad4077593bab14510185b487a9c1b7" [label=""];
  "sha256:e9ca9f8c0499cdd2a7cbaf7cd326b4bcf5ad4077593bab14510185b487a9c1b7" -> "sha256:63723078ec2f10e7cba4c4a43ac1d2f2fb83e5c602afd291c1e6411a9bfb71b3" [label=""];
}

