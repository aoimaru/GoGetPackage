[app/sources/151779819.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:75de02a05d7d563473c7f0b18462e9b39afc47378238f35be1f60b9f6a99bbea" [label="/bin/sh -c apt-get update &&   apt-get dist-upgrade -y" shape="box"];
  "sha256:b31c917a92913e979b6f3d4fcaa62141c90ee8e41beb735223a95fb46601272d" [label="/bin/sh -c apt-get install -y --no-install-recommends   python-pip    python-dev   build-essential   python-virtualenv   git &&   groupadd -r combine &&   useradd -r -g combine -d /home/combine -s /sbin/nologin -c \"Combine user\" combine" shape="box"];
  "sha256:9ce0c89cc0911beb153a80346b5b4744c84ffc340ee6e7f5f37c4dfc6557428e" [label="mkdir{path=/home}" shape="note"];
  "sha256:437d4964a27e638a24818b021472e6bbb6ca43c40e709fdf558ff45250ac1bfc" [label="/bin/sh -c git clone https://github.com/mlsecproject/combine.git &&   chown -R combine:combine /home/combine &&   cd combine &&   pip install -r requirements.txt" shape="box"];
  "sha256:d58a4343cea2c697339f320b513f8962bf5a3a44c34bc0cbc75c4db62d67f609" [label="local://context" shape="ellipse"];
  "sha256:4b5d76cd4be8a1860de02df6f2c32f42560b81ed2cdc4cc8696abb5c3defdd0a" [label="copy{src=/combine.cfg, dest=/home/combine/}" shape="note"];
  "sha256:4503b0fae82eba4bb4bce54baebb1d6600b6d173069d4ab72bab5260a0b569e8" [label="mkdir{path=/home/combine}" shape="note"];
  "sha256:3097dbd7bc12903a557cada5dde134284d16465273bf81c9181ab7dcd972b604" [label="sha256:3097dbd7bc12903a557cada5dde134284d16465273bf81c9181ab7dcd972b604" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:75de02a05d7d563473c7f0b18462e9b39afc47378238f35be1f60b9f6a99bbea" [label=""];
  "sha256:75de02a05d7d563473c7f0b18462e9b39afc47378238f35be1f60b9f6a99bbea" -> "sha256:b31c917a92913e979b6f3d4fcaa62141c90ee8e41beb735223a95fb46601272d" [label=""];
  "sha256:b31c917a92913e979b6f3d4fcaa62141c90ee8e41beb735223a95fb46601272d" -> "sha256:9ce0c89cc0911beb153a80346b5b4744c84ffc340ee6e7f5f37c4dfc6557428e" [label=""];
  "sha256:9ce0c89cc0911beb153a80346b5b4744c84ffc340ee6e7f5f37c4dfc6557428e" -> "sha256:437d4964a27e638a24818b021472e6bbb6ca43c40e709fdf558ff45250ac1bfc" [label=""];
  "sha256:437d4964a27e638a24818b021472e6bbb6ca43c40e709fdf558ff45250ac1bfc" -> "sha256:4b5d76cd4be8a1860de02df6f2c32f42560b81ed2cdc4cc8696abb5c3defdd0a" [label=""];
  "sha256:d58a4343cea2c697339f320b513f8962bf5a3a44c34bc0cbc75c4db62d67f609" -> "sha256:4b5d76cd4be8a1860de02df6f2c32f42560b81ed2cdc4cc8696abb5c3defdd0a" [label=""];
  "sha256:4b5d76cd4be8a1860de02df6f2c32f42560b81ed2cdc4cc8696abb5c3defdd0a" -> "sha256:4503b0fae82eba4bb4bce54baebb1d6600b6d173069d4ab72bab5260a0b569e8" [label=""];
  "sha256:4503b0fae82eba4bb4bce54baebb1d6600b6d173069d4ab72bab5260a0b569e8" -> "sha256:3097dbd7bc12903a557cada5dde134284d16465273bf81c9181ab7dcd972b604" [label=""];
}

