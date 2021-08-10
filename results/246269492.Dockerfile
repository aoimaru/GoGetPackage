[app/sources/246269492.Dockerfile]
digraph {
  "sha256:25d5bd8110abdffd17cd84b0ea9978bdb2c21e732b763041616e04278872e63a" [label="local://context" shape="ellipse"];
  "sha256:2053aa7fe7b7ba4aba425c0f8ac54963abef9b81b73db84ede0da95688753cb1" [label="docker-image://docker.io/oroinc/php:7.0-fpm-xenial" shape="ellipse"];
  "sha256:07eae00ace0749bb11b24c2cdeb41dea2377d667a66cc330660ada8e99907284" [label="copy{src=/conf/consumer.sh, dest=/usr/local/bin/consumer.sh}" shape="note"];
  "sha256:567f9a0a6b5a56573f61d12ac8f9eea38005d672d02c7963e0babc43093633fb" [label="sha256:567f9a0a6b5a56573f61d12ac8f9eea38005d672d02c7963e0babc43093633fb" shape="plaintext"];
  "sha256:2053aa7fe7b7ba4aba425c0f8ac54963abef9b81b73db84ede0da95688753cb1" -> "sha256:07eae00ace0749bb11b24c2cdeb41dea2377d667a66cc330660ada8e99907284" [label=""];
  "sha256:25d5bd8110abdffd17cd84b0ea9978bdb2c21e732b763041616e04278872e63a" -> "sha256:07eae00ace0749bb11b24c2cdeb41dea2377d667a66cc330660ada8e99907284" [label=""];
  "sha256:07eae00ace0749bb11b24c2cdeb41dea2377d667a66cc330660ada8e99907284" -> "sha256:567f9a0a6b5a56573f61d12ac8f9eea38005d672d02c7963e0babc43093633fb" [label=""];
}

