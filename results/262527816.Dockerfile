[app/sources/262527816.Dockerfile]
digraph {
  "sha256:a4febb8cbd948a1f3feb0764f0d232cef8d6f70c8c2a0cfc58c45c5dc0c79411" [label="docker-image://docker.io/google/debian:jessie" shape="ellipse"];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" [label="local://context" shape="ellipse"];
  "sha256:6dc0bc9d440a8ee891c042befa096336ffff540db1b59077a4169a7b6dbcbc5c" [label="copy{src=/cassandra.list, dest=/etc/apt/sources.list.d/cassandra.list}" shape="note"];
  "sha256:a1ae3bb52df6b01c39ccd53762fb07d2a89f32d77a39a3b53d09dae2b5a4e7d6" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:dbbb53527451e63f29355ed64b5bece9757fdd6e9f63b46b10e17e7613fe8efa" [label="copy{src=/cassandra.yaml, dest=/cassandra.yaml}" shape="note"];
  "sha256:b789129bcba435ce407cbe1dffe1b3a56d88f8968adcc1e00468e6e2cb497077" [label="copy{src=/logback.xml, dest=/logback.xml}" shape="note"];
  "sha256:18c4447a10d26d7f23842849e6e15d62c86c91a867767def93420adc55bc861c" [label="copy{src=/kubernetes-cassandra.jar, dest=/kubernetes-cassandra.jar}" shape="note"];
  "sha256:257e6393433d16563c908293b03d3880c08b3cff6a31dff42369f63079409551" [label="/bin/sh -c gpg --keyserver pgp.mit.edu --recv-keys F758CE318D77295D &&   gpg --export --armor F758CE318D77295D | apt-key add - &&   gpg --keyserver pgp.mit.edu --recv-keys 2B5C1B00 &&   gpg --export --armor 2B5C1B00 | apt-key add - &&   gpg --keyserver pgp.mit.edu --recv-keys 0353B12C &&   gpg --export --armor 0353B12C | apt-key add - &&   apt-get update &&   apt-get -qq -y install procps cassandra openjdk-8-jre-headless &&   chmod a+rx /run.sh &&   mkdir -p /cassandra_data/data &&   mv /logback.xml /etc/cassandra/ &&   mv /cassandra.yaml /etc/cassandra/ &&   chown -R cassandra: /etc/cassandra /cassandra_data /run.sh     /kubernetes-cassandra.jar &&   chmod o+w -R /etc/cassandra /cassandra_data &&   rm -rf         doc         man         info         locale         /var/lib/apt/lists/*         /var/log/*         /var/cache/debconf/*         common-licenses         ~/.bashrc         /etc/systemd         /lib/lsb         /lib/udev         /usr/share/doc/         /usr/share/doc-base/         /usr/share/man/         /tmp/*" shape="box"];
  "sha256:a0ea95b5dbe588861fc7c3eb71c0457d0a221ed4f4c538292aaa58c308ce442d" [label="sha256:a0ea95b5dbe588861fc7c3eb71c0457d0a221ed4f4c538292aaa58c308ce442d" shape="plaintext"];
  "sha256:a4febb8cbd948a1f3feb0764f0d232cef8d6f70c8c2a0cfc58c45c5dc0c79411" -> "sha256:6dc0bc9d440a8ee891c042befa096336ffff540db1b59077a4169a7b6dbcbc5c" [label=""];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" -> "sha256:6dc0bc9d440a8ee891c042befa096336ffff540db1b59077a4169a7b6dbcbc5c" [label=""];
  "sha256:6dc0bc9d440a8ee891c042befa096336ffff540db1b59077a4169a7b6dbcbc5c" -> "sha256:a1ae3bb52df6b01c39ccd53762fb07d2a89f32d77a39a3b53d09dae2b5a4e7d6" [label=""];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" -> "sha256:a1ae3bb52df6b01c39ccd53762fb07d2a89f32d77a39a3b53d09dae2b5a4e7d6" [label=""];
  "sha256:a1ae3bb52df6b01c39ccd53762fb07d2a89f32d77a39a3b53d09dae2b5a4e7d6" -> "sha256:dbbb53527451e63f29355ed64b5bece9757fdd6e9f63b46b10e17e7613fe8efa" [label=""];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" -> "sha256:dbbb53527451e63f29355ed64b5bece9757fdd6e9f63b46b10e17e7613fe8efa" [label=""];
  "sha256:dbbb53527451e63f29355ed64b5bece9757fdd6e9f63b46b10e17e7613fe8efa" -> "sha256:b789129bcba435ce407cbe1dffe1b3a56d88f8968adcc1e00468e6e2cb497077" [label=""];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" -> "sha256:b789129bcba435ce407cbe1dffe1b3a56d88f8968adcc1e00468e6e2cb497077" [label=""];
  "sha256:b789129bcba435ce407cbe1dffe1b3a56d88f8968adcc1e00468e6e2cb497077" -> "sha256:18c4447a10d26d7f23842849e6e15d62c86c91a867767def93420adc55bc861c" [label=""];
  "sha256:ffabbf56d67356c6134d547f12eab037dc2a866cfc6f29a4a89982fd5f3eaff1" -> "sha256:18c4447a10d26d7f23842849e6e15d62c86c91a867767def93420adc55bc861c" [label=""];
  "sha256:18c4447a10d26d7f23842849e6e15d62c86c91a867767def93420adc55bc861c" -> "sha256:257e6393433d16563c908293b03d3880c08b3cff6a31dff42369f63079409551" [label=""];
  "sha256:257e6393433d16563c908293b03d3880c08b3cff6a31dff42369f63079409551" -> "sha256:a0ea95b5dbe588861fc7c3eb71c0457d0a221ed4f4c538292aaa58c308ce442d" [label=""];
}

