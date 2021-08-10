[app/sources/333572241.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:a3b7d64b7e4b35950e4cc0f30177675e1e41a793f829733e5552ea5ddcbdbd6d" [label="/bin/sh -c apt-get update && apt-get install -y rpm ruby ruby-dev git wget libffi-dev make gcc bzip2" shape="box"];
  "sha256:5fdf334f1e4275bc247a1295694807bf53ddc149d5e25f52922db14716616a73" [label="/bin/sh -c wget -o /dev/null https://storage.googleapis.com/golang/go1.10.3.linux-amd64.tar.gz &&     tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz &&     ln -s /usr/local/go/bin/go /usr/local/bin/go &&     go get github.com/mitchellh/gox &&     mv /root/go/bin/gox /usr/local/bin/gox &&     gem install fpm -v 1.8.1" shape="box"];
  "sha256:be2fbe110bbb145592bcf3997b68d8493f312d7b4eec0f4cf9c4feb001878443" [label="sha256:be2fbe110bbb145592bcf3997b68d8493f312d7b4eec0f4cf9c4feb001878443" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:a3b7d64b7e4b35950e4cc0f30177675e1e41a793f829733e5552ea5ddcbdbd6d" [label=""];
  "sha256:a3b7d64b7e4b35950e4cc0f30177675e1e41a793f829733e5552ea5ddcbdbd6d" -> "sha256:5fdf334f1e4275bc247a1295694807bf53ddc149d5e25f52922db14716616a73" [label=""];
  "sha256:5fdf334f1e4275bc247a1295694807bf53ddc149d5e25f52922db14716616a73" -> "sha256:be2fbe110bbb145592bcf3997b68d8493f312d7b4eec0f4cf9c4feb001878443" [label=""];
}

