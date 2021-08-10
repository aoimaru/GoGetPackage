[app/sources/203595092.Dockerfile]
digraph {
  "sha256:3177e862179282dd337a9f96139a193514dfa4a23feb48f3f304c05f24e64598" [label="docker-image://docker.io/centos/systemd:latest" shape="ellipse"];
  "sha256:a9e6591382e81d1fa3f161bf482c6c59e2c3a27c4d85b5d552199583435371a3" [label="/bin/sh -c yum makecache fast && yum update -y &&     yum install -y python sudo yum-plugin-ovl &&     sed -i 's/plugins=0/plugins=1/g' /etc/yum.conf &&     yum install -y epel-release &&     yum install -y python python-pip python-flask git &&     pip install git+https://github.com/detiber/moto@vpc_tenancy" shape="box"];
  "sha256:b4fbfad41f913748694437c789ed956cdc539c76d649f71b510dbe7fa1afde9a" [label="sha256:b4fbfad41f913748694437c789ed956cdc539c76d649f71b510dbe7fa1afde9a" shape="plaintext"];
  "sha256:3177e862179282dd337a9f96139a193514dfa4a23feb48f3f304c05f24e64598" -> "sha256:a9e6591382e81d1fa3f161bf482c6c59e2c3a27c4d85b5d552199583435371a3" [label=""];
  "sha256:a9e6591382e81d1fa3f161bf482c6c59e2c3a27c4d85b5d552199583435371a3" -> "sha256:b4fbfad41f913748694437c789ed956cdc539c76d649f71b510dbe7fa1afde9a" [label=""];
}

