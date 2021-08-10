[app/sources/319166327.Dockerfile]
digraph {
  "sha256:e5b88ddc704a51fd0d50698dc356e4c57a88d1c138ac345506520a5532adadf3" [label="docker-image://docker.io/library/cluster-hadoop:latest" shape="ellipse"];
  "sha256:7da52e6d75734c9d4681cd7bfd1372e03672a38f279dc37f9e00b17d999cfd35" [label="/bin/sh -c wget https://archive.apache.org/dist/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.6.tgz     && tar -zxvf /spark-1.6.0-bin-hadoop2.6.tgz -C /usr/local/     && mv /usr/local/spark-1.6.0-bin-hadoop2.6 /usr/local/spark     && rm /spark-1.6.0-bin-hadoop2.6.tgz" shape="box"];
  "sha256:844e9af4b71ca05bf9337bc801ec63c3262d174eb40b3f7750bcb299d691c06f" [label="local://context" shape="ellipse"];
  "sha256:48cc29e6e0db31c4834e111b794fae62da45b60ca454efa1314b31888ea2e408" [label="copy{src=/conf/slaves, dest=/usr/local/spark/conf/}" shape="note"];
  "sha256:4fe9ec1ee88d602f966b29eeaf209c0d21cc98f253f2931ce36ef558f5d43ba2" [label="copy{src=/conf/spark-env.sh, dest=/usr/local/spark/conf/}" shape="note"];
  "sha256:7e23c379b8986e7c8eb8a163f6bf6bca046097480cca61158f5484cc70057193" [label="mkdir{path=/spark}" shape="note"];
  "sha256:a5e613e4a0ec6ffed996f0fa160d8729a803654b3c00143a2c46989123ed462d" [label="sha256:a5e613e4a0ec6ffed996f0fa160d8729a803654b3c00143a2c46989123ed462d" shape="plaintext"];
  "sha256:e5b88ddc704a51fd0d50698dc356e4c57a88d1c138ac345506520a5532adadf3" -> "sha256:7da52e6d75734c9d4681cd7bfd1372e03672a38f279dc37f9e00b17d999cfd35" [label=""];
  "sha256:7da52e6d75734c9d4681cd7bfd1372e03672a38f279dc37f9e00b17d999cfd35" -> "sha256:48cc29e6e0db31c4834e111b794fae62da45b60ca454efa1314b31888ea2e408" [label=""];
  "sha256:844e9af4b71ca05bf9337bc801ec63c3262d174eb40b3f7750bcb299d691c06f" -> "sha256:48cc29e6e0db31c4834e111b794fae62da45b60ca454efa1314b31888ea2e408" [label=""];
  "sha256:48cc29e6e0db31c4834e111b794fae62da45b60ca454efa1314b31888ea2e408" -> "sha256:4fe9ec1ee88d602f966b29eeaf209c0d21cc98f253f2931ce36ef558f5d43ba2" [label=""];
  "sha256:844e9af4b71ca05bf9337bc801ec63c3262d174eb40b3f7750bcb299d691c06f" -> "sha256:4fe9ec1ee88d602f966b29eeaf209c0d21cc98f253f2931ce36ef558f5d43ba2" [label=""];
  "sha256:4fe9ec1ee88d602f966b29eeaf209c0d21cc98f253f2931ce36ef558f5d43ba2" -> "sha256:7e23c379b8986e7c8eb8a163f6bf6bca046097480cca61158f5484cc70057193" [label=""];
  "sha256:7e23c379b8986e7c8eb8a163f6bf6bca046097480cca61158f5484cc70057193" -> "sha256:a5e613e4a0ec6ffed996f0fa160d8729a803654b3c00143a2c46989123ed462d" [label=""];
}

