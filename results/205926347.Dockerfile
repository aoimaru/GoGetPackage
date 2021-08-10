[app/sources/205926347.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:81bf23078f91c97c48c28ce2ac8b78ef61cf6ee00fa6b27cb0862cf6edeab4d9" [label="/bin/sh -c apt-key adv --keyserver keys.gnupg.net         --recv-keys 8507EFA5 &&     echo 'deb http://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/mysql.list &&     {         echo debconf debconf/frontend select Noninteractive;         echo percona-server-server-5.7 percona-server-server/root_password password 'unused';         echo percona-server-server-5.7 percona-server-server/root_password_again password 'unused';     } | debconf-set-selections &&     apt-get update &&     apt-get install -y --no-install-recommends         percona-server-server-5.7 libperconaserverclient18.1 bzip2 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:01f7ecca156f52d9c9645719ddca515e4fea06ce2b1bf27124bb670e5ee8c500" [label="local://context" shape="ellipse"];
  "sha256:e2c3f8925e274fc09cfe47806ebbf14d191cee39100625f9fc66dd0768506621" [label="copy{src=/lite/vt, dest=/vt}" shape="note"];
  "sha256:35f7bc55ea076bc0a49f165dea7afe16f6f2411ae9216aae2fe0f20b24475962" [label="/bin/sh -c groupadd -r vitess && useradd -r -g vitess vitess &&     mkdir -p /vt/vtdataroot && chown -R vitess:vitess /vt" shape="box"];
  "sha256:58ffefef0a98ede5b7b35907958595470ebbda8e0d14de2b5d282880c5297ff9" [label="sha256:58ffefef0a98ede5b7b35907958595470ebbda8e0d14de2b5d282880c5297ff9" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:81bf23078f91c97c48c28ce2ac8b78ef61cf6ee00fa6b27cb0862cf6edeab4d9" [label=""];
  "sha256:81bf23078f91c97c48c28ce2ac8b78ef61cf6ee00fa6b27cb0862cf6edeab4d9" -> "sha256:e2c3f8925e274fc09cfe47806ebbf14d191cee39100625f9fc66dd0768506621" [label=""];
  "sha256:01f7ecca156f52d9c9645719ddca515e4fea06ce2b1bf27124bb670e5ee8c500" -> "sha256:e2c3f8925e274fc09cfe47806ebbf14d191cee39100625f9fc66dd0768506621" [label=""];
  "sha256:e2c3f8925e274fc09cfe47806ebbf14d191cee39100625f9fc66dd0768506621" -> "sha256:35f7bc55ea076bc0a49f165dea7afe16f6f2411ae9216aae2fe0f20b24475962" [label=""];
  "sha256:35f7bc55ea076bc0a49f165dea7afe16f6f2411ae9216aae2fe0f20b24475962" -> "sha256:58ffefef0a98ede5b7b35907958595470ebbda8e0d14de2b5d282880c5297ff9" [label=""];
}

