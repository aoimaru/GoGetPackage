[app/sources/329551405.Dockerfile]
digraph {
  "sha256:da17aea093522e5f06df91632d4a9b3e848e7427310aecc49ffd319858435ad6" [label="docker-image://docker.io/thecodingmachine/php:7.1-v2-slim-cli" shape="ellipse"];
  "sha256:a1b7d9c004e8e3e19a443cff7905b3719ca8772c787e49dac6590ff7880e3d4c" [label="/bin/sh -c cd /usr/local/lib/thecodingmachine-php/extensions/current/ && ./install_all.sh && ./disable_all.sh" shape="box"];
  "sha256:311f277c3be30cd231698bc096c1552c981c48814be8a67c3f479464e1bcb81d" [label="sha256:311f277c3be30cd231698bc096c1552c981c48814be8a67c3f479464e1bcb81d" shape="plaintext"];
  "sha256:da17aea093522e5f06df91632d4a9b3e848e7427310aecc49ffd319858435ad6" -> "sha256:a1b7d9c004e8e3e19a443cff7905b3719ca8772c787e49dac6590ff7880e3d4c" [label=""];
  "sha256:a1b7d9c004e8e3e19a443cff7905b3719ca8772c787e49dac6590ff7880e3d4c" -> "sha256:311f277c3be30cd231698bc096c1552c981c48814be8a67c3f479464e1bcb81d" [label=""];
}

