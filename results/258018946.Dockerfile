[app/sources/258018946.Dockerfile]
digraph {
  "sha256:c3c51c5624706023cd8d87a5cfc52447c547e0f244e8d2e7ad1140554fb62f1b" [label="docker-image://docker.io/library/ubuntu:xenial-20170915" shape="ellipse"];
  "sha256:a3e59954c367008b1b0f7cb496cf7b6b550099e22b20743a243c3c08df74be68" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:de586ebc5cbdce6c315ae705a8839c80ae835717d522046d7485b21510aeb00f" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:0c0e848ff4a39d6476d9966e8b5069da1849c0cf5545e70c14c2b7962f210f3d" [label="/bin/sh -c apt-get install -y tzdata" shape="box"];
  "sha256:14d47a7ea679834b3df8b89c7c12a794220c6481e3aab85468cae4bd960d55e8" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime" shape="box"];
  "sha256:ef561f6146a05874743d5b5ba1a351081240cc897e3095efc9dc928b7e2def23" [label="/bin/sh -c dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:7788cb2f6b1e88c1920f14584c4e1e0e01ddc1f78f47120288e9181789e1037b" [label="/bin/sh -c apt-get install -y build-essential ruby ruby-dev libxml2-dev libxslt-dev wget mysql-client libmysqlclient-dev rsyslog postfix heirloom-mailx" shape="box"];
  "sha256:a8c56314aa3dd5699222d7f5e412d904aacdb93175685c2f54b5abc100f73185" [label="/bin/sh -c gem install sisimai mysql2" shape="box"];
  "sha256:029d6d729028f624c6dd872eac7c82243769e68ba040007f2b603197f5812ed4" [label="/bin/sh -c wget -q https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64.deb &&     dpkg -i dumb-init_*.deb &&     rm dumb-init_*.deb" shape="box"];
  "sha256:ab60396b3ac6d4f725d8908da4753c2b070fab448553dc3456b6f131a7a45c30" [label="local://context" shape="ellipse"];
  "sha256:43023356584a8528cbd3c20347a785f1c42f51b781877ecf9beb8c53e773334e" [label="copy{src=/docker/postfix, dest=/}" shape="note"];
  "sha256:c996b6025ead9f890a2ca184775f7b30cae2e24f1ce812ffa47f080519803347" [label="/bin/sh -c chmod +x /init.sh /collect.rb" shape="box"];
  "sha256:35403dace4a2d7898cfb2a7d3f5eae255c165821a1e6df24e1d73f9994356f75" [label="sha256:35403dace4a2d7898cfb2a7d3f5eae255c165821a1e6df24e1d73f9994356f75" shape="plaintext"];
  "sha256:c3c51c5624706023cd8d87a5cfc52447c547e0f244e8d2e7ad1140554fb62f1b" -> "sha256:a3e59954c367008b1b0f7cb496cf7b6b550099e22b20743a243c3c08df74be68" [label=""];
  "sha256:a3e59954c367008b1b0f7cb496cf7b6b550099e22b20743a243c3c08df74be68" -> "sha256:de586ebc5cbdce6c315ae705a8839c80ae835717d522046d7485b21510aeb00f" [label=""];
  "sha256:de586ebc5cbdce6c315ae705a8839c80ae835717d522046d7485b21510aeb00f" -> "sha256:0c0e848ff4a39d6476d9966e8b5069da1849c0cf5545e70c14c2b7962f210f3d" [label=""];
  "sha256:0c0e848ff4a39d6476d9966e8b5069da1849c0cf5545e70c14c2b7962f210f3d" -> "sha256:14d47a7ea679834b3df8b89c7c12a794220c6481e3aab85468cae4bd960d55e8" [label=""];
  "sha256:14d47a7ea679834b3df8b89c7c12a794220c6481e3aab85468cae4bd960d55e8" -> "sha256:ef561f6146a05874743d5b5ba1a351081240cc897e3095efc9dc928b7e2def23" [label=""];
  "sha256:ef561f6146a05874743d5b5ba1a351081240cc897e3095efc9dc928b7e2def23" -> "sha256:7788cb2f6b1e88c1920f14584c4e1e0e01ddc1f78f47120288e9181789e1037b" [label=""];
  "sha256:7788cb2f6b1e88c1920f14584c4e1e0e01ddc1f78f47120288e9181789e1037b" -> "sha256:a8c56314aa3dd5699222d7f5e412d904aacdb93175685c2f54b5abc100f73185" [label=""];
  "sha256:a8c56314aa3dd5699222d7f5e412d904aacdb93175685c2f54b5abc100f73185" -> "sha256:029d6d729028f624c6dd872eac7c82243769e68ba040007f2b603197f5812ed4" [label=""];
  "sha256:029d6d729028f624c6dd872eac7c82243769e68ba040007f2b603197f5812ed4" -> "sha256:43023356584a8528cbd3c20347a785f1c42f51b781877ecf9beb8c53e773334e" [label=""];
  "sha256:ab60396b3ac6d4f725d8908da4753c2b070fab448553dc3456b6f131a7a45c30" -> "sha256:43023356584a8528cbd3c20347a785f1c42f51b781877ecf9beb8c53e773334e" [label=""];
  "sha256:43023356584a8528cbd3c20347a785f1c42f51b781877ecf9beb8c53e773334e" -> "sha256:c996b6025ead9f890a2ca184775f7b30cae2e24f1ce812ffa47f080519803347" [label=""];
  "sha256:c996b6025ead9f890a2ca184775f7b30cae2e24f1ce812ffa47f080519803347" -> "sha256:35403dace4a2d7898cfb2a7d3f5eae255c165821a1e6df24e1d73f9994356f75" [label=""];
}

