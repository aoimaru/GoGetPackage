[app/sources/235654680.Dockerfile]
digraph {
  "sha256:ec2bc0fc47c7b01817e5c72dfc7c67a7eb81a2c4521df1a9c012911125053642" [label="docker-image://docker.io/vulhub/imagemagick:6.9.2" shape="ellipse"];
  "sha256:02dc6bf80c0a5c050418a099084e607c628d0afe4db57d92f12f22d53ea97e76" [label="/bin/sh -c sed -i -e \"s/Options -Indexes/Options +Indexes/g\" $APACHE_CONFDIR/conf-available/docker-php.conf" shape="box"];
  "sha256:e7f720ef98a091d93712df6f26db8ecd7936ca33cdb1af3f2953809c1efe71c0" [label="sha256:e7f720ef98a091d93712df6f26db8ecd7936ca33cdb1af3f2953809c1efe71c0" shape="plaintext"];
  "sha256:ec2bc0fc47c7b01817e5c72dfc7c67a7eb81a2c4521df1a9c012911125053642" -> "sha256:02dc6bf80c0a5c050418a099084e607c628d0afe4db57d92f12f22d53ea97e76" [label=""];
  "sha256:02dc6bf80c0a5c050418a099084e607c628d0afe4db57d92f12f22d53ea97e76" -> "sha256:e7f720ef98a091d93712df6f26db8ecd7936ca33cdb1af3f2953809c1efe71c0" [label=""];
}

