[app/sources/444736427.Dockerfile]
digraph {
  "sha256:1ea2e7106f6cfb4560e2aaafe40baf8480141b1a9dc78e47638f5fcadebec06c" [label="docker-image://docker.io/saltstack/ubuntu-14.04-minimal:latest" shape="ellipse"];
  "sha256:ee832ead5be844572469385e45cabd852349a53359b770031d415502bcd9cae8" [label="/bin/sh -c apt-get update && apt-get upgrade -y -o DPkg::Options::=--force-confold" shape="box"];
  "sha256:58908f542a0fa00555283ea4b9f0e2e4e113555cb8e2f969874a21eff8c2e134" [label="/bin/sh -c apt-get install -y -o DPkg::Options::=--force-confold   python-dev   python-pip   python-mysqldb   python-setuptools   python-virtualenv   ruby   git-core   mercurial   supervisor   openssh-client   rabbitmq-server" shape="box"];
  "sha256:9f6aacf5ae651a28aaca2129903b610b98bb4a71bc804b8b287cd2bee20f5fd8" [label="/bin/sh -c easy_install   mock   psutil   timelib   apache-libcloud   coverage   GitPython   requests   keyring   python-gnupg   CherryPy   tornado   boto   moto   https://github.com/saltstack/salt-testing/archive/develop.tar.gz   https://github.com/danielfm/unittest-xml-reporting/archive/master.tar.gz" shape="box"];
  "sha256:022efd19b09d0a7483e44d46d6d6346b252ebae23ef29a8c7df08a05f087496e" [label="https://raw.github.com/saltstack/docker-containers/master/scripts/bootstrap-docker.sh" shape="ellipse"];
  "sha256:08c5ea35f28f0a39545f4891a572cb366fea9008d262095d2ba58bf0afb50466" [label="copy{src=/bootstrap-docker.sh, dest=/bootstrap-docker.sh}" shape="note"];
  "sha256:33462fe66e36255fc827d28484b095a5f02e522b050cb4d7a3aab76a42340f68" [label="sha256:33462fe66e36255fc827d28484b095a5f02e522b050cb4d7a3aab76a42340f68" shape="plaintext"];
  "sha256:1ea2e7106f6cfb4560e2aaafe40baf8480141b1a9dc78e47638f5fcadebec06c" -> "sha256:ee832ead5be844572469385e45cabd852349a53359b770031d415502bcd9cae8" [label=""];
  "sha256:ee832ead5be844572469385e45cabd852349a53359b770031d415502bcd9cae8" -> "sha256:58908f542a0fa00555283ea4b9f0e2e4e113555cb8e2f969874a21eff8c2e134" [label=""];
  "sha256:58908f542a0fa00555283ea4b9f0e2e4e113555cb8e2f969874a21eff8c2e134" -> "sha256:9f6aacf5ae651a28aaca2129903b610b98bb4a71bc804b8b287cd2bee20f5fd8" [label=""];
  "sha256:9f6aacf5ae651a28aaca2129903b610b98bb4a71bc804b8b287cd2bee20f5fd8" -> "sha256:08c5ea35f28f0a39545f4891a572cb366fea9008d262095d2ba58bf0afb50466" [label=""];
  "sha256:022efd19b09d0a7483e44d46d6d6346b252ebae23ef29a8c7df08a05f087496e" -> "sha256:08c5ea35f28f0a39545f4891a572cb366fea9008d262095d2ba58bf0afb50466" [label=""];
  "sha256:08c5ea35f28f0a39545f4891a572cb366fea9008d262095d2ba58bf0afb50466" -> "sha256:33462fe66e36255fc827d28484b095a5f02e522b050cb4d7a3aab76a42340f68" [label=""];
}

