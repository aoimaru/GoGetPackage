[app/sources/255873892.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:5bce98d4b481289bc7c68b4abe65371a272017fe8b17e0f6290ee2e848d63cd7" [label="local://context" shape="ellipse"];
  "sha256:f1fc5804c05ddd003cd52b78287ae95728fdc8e96672c33805792a5a13808402" [label="copy{src=/jessie-backports.list, dest=/etc/apt/sources.list.d}" shape="note"];
  "sha256:a0e57938cef4ce2fa18c9e84107dba31fb091a112529ae92a427ccf923a00619" [label="/bin/sh -c apt-get update -qqq && apt-get dist-upgrade -yqqq &&     apt-get install -t jessie-backports -yqqq openjdk-8-jre bash gettext-base curl ca-certificates sudo jq" shape="box"];
  "sha256:541497db360f15c5cf9fafd663bd869b07fa7c73e23e5f2e91ea115186b61b37" [label="/bin/sh -c curl -Lso /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-amd64\" &&   curl -Lso /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-amd64.asc\" &&   export GNUPGHOME=\"$(mktemp -d)\" &&   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   ( curl -Lsj https://github.com/lmenezes/cerebro/releases/download/v${VERSION}/cerebro-${VERSION}.tgz |   gunzip -c - | tar xf - ) &&   mv /cerebro-$VERSION /cerebro" shape="box"];
  "sha256:dfd1fe8d13caccdb6491944f7d556b0be24dd52b235235505502f1551ac60d9b" [label="copy{src=/conf, dest=/cerebro/conf}" shape="note"];
  "sha256:d9e4b7f62360eb1088699ea11bf75349a5aa278aec627ec8c58cda7e04807f71" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:f366e2d08f5b30743ec5cde974df3b01b5f2e240d8bd1a12c5c813dcb6fa8fdd" [label="sha256:f366e2d08f5b30743ec5cde974df3b01b5f2e240d8bd1a12c5c813dcb6fa8fdd" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:f1fc5804c05ddd003cd52b78287ae95728fdc8e96672c33805792a5a13808402" [label=""];
  "sha256:5bce98d4b481289bc7c68b4abe65371a272017fe8b17e0f6290ee2e848d63cd7" -> "sha256:f1fc5804c05ddd003cd52b78287ae95728fdc8e96672c33805792a5a13808402" [label=""];
  "sha256:f1fc5804c05ddd003cd52b78287ae95728fdc8e96672c33805792a5a13808402" -> "sha256:a0e57938cef4ce2fa18c9e84107dba31fb091a112529ae92a427ccf923a00619" [label=""];
  "sha256:a0e57938cef4ce2fa18c9e84107dba31fb091a112529ae92a427ccf923a00619" -> "sha256:541497db360f15c5cf9fafd663bd869b07fa7c73e23e5f2e91ea115186b61b37" [label=""];
  "sha256:541497db360f15c5cf9fafd663bd869b07fa7c73e23e5f2e91ea115186b61b37" -> "sha256:dfd1fe8d13caccdb6491944f7d556b0be24dd52b235235505502f1551ac60d9b" [label=""];
  "sha256:5bce98d4b481289bc7c68b4abe65371a272017fe8b17e0f6290ee2e848d63cd7" -> "sha256:dfd1fe8d13caccdb6491944f7d556b0be24dd52b235235505502f1551ac60d9b" [label=""];
  "sha256:dfd1fe8d13caccdb6491944f7d556b0be24dd52b235235505502f1551ac60d9b" -> "sha256:d9e4b7f62360eb1088699ea11bf75349a5aa278aec627ec8c58cda7e04807f71" [label=""];
  "sha256:5bce98d4b481289bc7c68b4abe65371a272017fe8b17e0f6290ee2e848d63cd7" -> "sha256:d9e4b7f62360eb1088699ea11bf75349a5aa278aec627ec8c58cda7e04807f71" [label=""];
  "sha256:d9e4b7f62360eb1088699ea11bf75349a5aa278aec627ec8c58cda7e04807f71" -> "sha256:f366e2d08f5b30743ec5cde974df3b01b5f2e240d8bd1a12c5c813dcb6fa8fdd" [label=""];
}

