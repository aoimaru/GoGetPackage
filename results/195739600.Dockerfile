[app/sources/195739600.Dockerfile]
digraph {
  "sha256:29f407086192e7fd0659844016134b01d25163206b97b02e4a3b0e3543a9bcb9" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d251a7c65596d29074be08b9fc89d6019a3c99861b6a4202597b8ad535aa657e" [label="/bin/sh -c apk --update upgrade &&     apk add --update ca-certificates &&     update-ca-certificates &&     apk add --update openssl &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:43dd14739605c9fb69e8853437af68f64ab9726f7a446e8e0fbfd123dae7d190" [label="/bin/sh -c apk add --no-cache zip &&    apk add --no-cache python &&     apk add --no-cache jq &&     apk add --no-cache --virtual=build-dependencies wget ca-certificates &&     wget \"https://bootstrap.pypa.io/get-pip.py\" -O /dev/stdout | python &&     apk del build-dependencies" shape="box"];
  "sha256:83cd932635b70f90d65e791df6cb4601623ea1e8240999a13ee56dea3bdfbdb7" [label="/bin/sh -c wget https://github.com/cloudfoundry/bosh-cli/releases/download/v5.5.0/bosh-cli-5.5.0-linux-amd64" shape="box"];
  "sha256:abec36645c6a2266e92ecce82c8dcd525b382562b44a69b371a022ff43c376a6" [label="/bin/sh -c mv bosh-cli-5.5.0-linux-amd64 /usr/local/bin/bosh" shape="box"];
  "sha256:e20804c7bf5874d238debf64505e75b716d6cb55b97a2163d7de7698970c077c" [label="/bin/sh -c chmod 755 /usr/local/bin/bosh" shape="box"];
  "sha256:51d96c489fa62f67d6ae9659e6ee6845d0d27d931b415d08ecfc862fa2abaca5" [label="/bin/sh -c wget -O /tmp/cf.tgz https://packages.cloudfoundry.org/stable?release=linux64-binary" shape="box"];
  "sha256:07587562abfa7823ac2ae8336dc63d4347df4280f48ae7121aac403411d84891" [label="/bin/sh -c tar -C /tmp -zxf /tmp/cf.tgz" shape="box"];
  "sha256:fb88a6cf94e4219e375e17a31c5e8b984d6eb1dab56113cada846bd095bb1806" [label="/bin/sh -c mv /tmp/cf /usr/local/bin/cf" shape="box"];
  "sha256:13400d420872b4483f41f5e77ad9af20b5ecc5666a4a17d8ad4efb5054f91a0b" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:094461a0876a7d400e24b37f8bd5afe677cee19c92beab729989822ceb1373dd" [label="/bin/sh -c apk add --update bash" shape="box"];
  "sha256:c05966000f5a42d7d50a50aa83f07217202276e1dceb9b96e88f5490e9d289d8" [label="/bin/sh -c apk add --update openssh-client" shape="box"];
  "sha256:0f709e95816398c1ed54db263f2a61f3a75dba90514839df9d6ca55427fb039f" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d6caa9ffc739720876c8a9ca30ecdefde4f9e595a3e4fd90009aebaa255cd7b7" [label="copy{src=/tile-generator-*.tar.gz, dest=/}" shape="note"];
  "sha256:d4dbe3095ce13868e76594a230cfd08465db6f8e0903ecd1721827236b9e40f8" [label="/bin/sh -c pip install tile-generator-*.tar.gz" shape="box"];
  "sha256:b30ca8637618b3dd4ab942a14d062498d3b179a059587e2e1632a0972024797a" [label="sha256:b30ca8637618b3dd4ab942a14d062498d3b179a059587e2e1632a0972024797a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d251a7c65596d29074be08b9fc89d6019a3c99861b6a4202597b8ad535aa657e" [label=""];
  "sha256:d251a7c65596d29074be08b9fc89d6019a3c99861b6a4202597b8ad535aa657e" -> "sha256:43dd14739605c9fb69e8853437af68f64ab9726f7a446e8e0fbfd123dae7d190" [label=""];
  "sha256:43dd14739605c9fb69e8853437af68f64ab9726f7a446e8e0fbfd123dae7d190" -> "sha256:83cd932635b70f90d65e791df6cb4601623ea1e8240999a13ee56dea3bdfbdb7" [label=""];
  "sha256:83cd932635b70f90d65e791df6cb4601623ea1e8240999a13ee56dea3bdfbdb7" -> "sha256:abec36645c6a2266e92ecce82c8dcd525b382562b44a69b371a022ff43c376a6" [label=""];
  "sha256:abec36645c6a2266e92ecce82c8dcd525b382562b44a69b371a022ff43c376a6" -> "sha256:e20804c7bf5874d238debf64505e75b716d6cb55b97a2163d7de7698970c077c" [label=""];
  "sha256:e20804c7bf5874d238debf64505e75b716d6cb55b97a2163d7de7698970c077c" -> "sha256:51d96c489fa62f67d6ae9659e6ee6845d0d27d931b415d08ecfc862fa2abaca5" [label=""];
  "sha256:51d96c489fa62f67d6ae9659e6ee6845d0d27d931b415d08ecfc862fa2abaca5" -> "sha256:07587562abfa7823ac2ae8336dc63d4347df4280f48ae7121aac403411d84891" [label=""];
  "sha256:07587562abfa7823ac2ae8336dc63d4347df4280f48ae7121aac403411d84891" -> "sha256:fb88a6cf94e4219e375e17a31c5e8b984d6eb1dab56113cada846bd095bb1806" [label=""];
  "sha256:fb88a6cf94e4219e375e17a31c5e8b984d6eb1dab56113cada846bd095bb1806" -> "sha256:13400d420872b4483f41f5e77ad9af20b5ecc5666a4a17d8ad4efb5054f91a0b" [label=""];
  "sha256:13400d420872b4483f41f5e77ad9af20b5ecc5666a4a17d8ad4efb5054f91a0b" -> "sha256:094461a0876a7d400e24b37f8bd5afe677cee19c92beab729989822ceb1373dd" [label=""];
  "sha256:094461a0876a7d400e24b37f8bd5afe677cee19c92beab729989822ceb1373dd" -> "sha256:c05966000f5a42d7d50a50aa83f07217202276e1dceb9b96e88f5490e9d289d8" [label=""];
  "sha256:c05966000f5a42d7d50a50aa83f07217202276e1dceb9b96e88f5490e9d289d8" -> "sha256:0f709e95816398c1ed54db263f2a61f3a75dba90514839df9d6ca55427fb039f" [label=""];
  "sha256:0f709e95816398c1ed54db263f2a61f3a75dba90514839df9d6ca55427fb039f" -> "sha256:d6caa9ffc739720876c8a9ca30ecdefde4f9e595a3e4fd90009aebaa255cd7b7" [label=""];
  "sha256:29f407086192e7fd0659844016134b01d25163206b97b02e4a3b0e3543a9bcb9" -> "sha256:d6caa9ffc739720876c8a9ca30ecdefde4f9e595a3e4fd90009aebaa255cd7b7" [label=""];
  "sha256:d6caa9ffc739720876c8a9ca30ecdefde4f9e595a3e4fd90009aebaa255cd7b7" -> "sha256:d4dbe3095ce13868e76594a230cfd08465db6f8e0903ecd1721827236b9e40f8" [label=""];
  "sha256:d4dbe3095ce13868e76594a230cfd08465db6f8e0903ecd1721827236b9e40f8" -> "sha256:b30ca8637618b3dd4ab942a14d062498d3b179a059587e2e1632a0972024797a" [label=""];
}

