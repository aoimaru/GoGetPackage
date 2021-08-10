[app/sources/162718298.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fe6c48044546da44c0b1859b0618bb1391dbc90d3ee6d1cdb40b81c273dacf0d" [label="/bin/sh -c apt-get install -y wget curl     build-essential git git-core     zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev" shape="box"];
  "sha256:e126a0a55051c4d7a7601643fc7d99a644c4983e3b0b295c82b616cd16e29ed6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:afe5d740207e090a17244b8a2495d5c2e2c177e426a502be428044ea15618ef6" [label="/bin/sh -c cd /tmp &&  wget -O ruby-install-0.7.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.0.tar.gz &&  tar -xzvf ruby-install-0.7.0.tar.gz &&  cd ruby-install-0.7.0/ &&  make install" shape="box"];
  "sha256:0f4265b2b1a6737e6bf068d75e5714a45ce0744c3a01a8bfc5c28f73a5252137" [label="/bin/sh -c ruby-install ruby 2.6.1" shape="box"];
  "sha256:8c1071a58cfc50066d5848c80f03ea4316b03d68aa1480c8bdc9a3ade0521f09" [label="/bin/sh -c echo \"install: --no-document\\nupdate: --no-document\" > ~/.gemrc" shape="box"];
  "sha256:73d947f59c12c558af0c77cbe0012eab773a62e4111913a040609ea7d172d9d2" [label="sha256:73d947f59c12c558af0c77cbe0012eab773a62e4111913a040609ea7d172d9d2" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label=""];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" -> "sha256:fe6c48044546da44c0b1859b0618bb1391dbc90d3ee6d1cdb40b81c273dacf0d" [label=""];
  "sha256:fe6c48044546da44c0b1859b0618bb1391dbc90d3ee6d1cdb40b81c273dacf0d" -> "sha256:e126a0a55051c4d7a7601643fc7d99a644c4983e3b0b295c82b616cd16e29ed6" [label=""];
  "sha256:e126a0a55051c4d7a7601643fc7d99a644c4983e3b0b295c82b616cd16e29ed6" -> "sha256:afe5d740207e090a17244b8a2495d5c2e2c177e426a502be428044ea15618ef6" [label=""];
  "sha256:afe5d740207e090a17244b8a2495d5c2e2c177e426a502be428044ea15618ef6" -> "sha256:0f4265b2b1a6737e6bf068d75e5714a45ce0744c3a01a8bfc5c28f73a5252137" [label=""];
  "sha256:0f4265b2b1a6737e6bf068d75e5714a45ce0744c3a01a8bfc5c28f73a5252137" -> "sha256:8c1071a58cfc50066d5848c80f03ea4316b03d68aa1480c8bdc9a3ade0521f09" [label=""];
  "sha256:8c1071a58cfc50066d5848c80f03ea4316b03d68aa1480c8bdc9a3ade0521f09" -> "sha256:73d947f59c12c558af0c77cbe0012eab773a62e4111913a040609ea7d172d9d2" [label=""];
}

