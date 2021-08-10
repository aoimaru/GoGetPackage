[app/sources/276538864.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:2ee7ddc9f620ec294eeb212f9d049d82c9e92ed1f65b2c26eb5d18c90894c584" [label="/bin/sh -c set -x     && rm -rf /etc/apt/sources.list.d/*     && apt-get update     && apt-get upgrade -y     && DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 php5 python sendmail unzip     && apt-get clean     && rm -rf /var/www/html/*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:66057a7daa423b1254c6ab6b143ab1bd7f1abb4e8bf675aebc1c502c85fdc6a6" [label="local://context" shape="ellipse"];
  "sha256:d647b7e5d1c24180ca494f746d03cf8476f6a753924dbbe65096754e28c241d1" [label="copy{src=/src/index.php, dest=/var/www/html/}" shape="note"];
  "sha256:d9fd7837e20a1ea2e719c8618bfe8e159ee33e8cb5e83f5b066b31b091bb3691" [label="copy{src=/src/phpmailer-5.2.17.zip, dest=/tmp/}" shape="note"];
  "sha256:bc815e796b6a1abf8d10045285434d2ff4bd3e3986e62c51c663f9f4b0cd0fb5" [label="/bin/sh -c unzip -d /var/www/html /tmp/phpmailer-5.2.17.zip     && chown -R www-data:www-data /var/www/html     && rm -rf /tmp/*" shape="box"];
  "sha256:621299af8fda97c44c4f9fdc953283fb5db4332d2b81db79037b927705ff72b6" [label="copy{src=/src/start.sh, dest=/start.sh}" shape="note"];
  "sha256:d122ae1dae4dbd926534938652e8513cf3ca6cf21feb07a322127041fd5d25d1" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:ea97280614893aedc63ef30e606c2c602a5283bdff83bc790bcc637bd85998a5" [label="sha256:ea97280614893aedc63ef30e606c2c602a5283bdff83bc790bcc637bd85998a5" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:2ee7ddc9f620ec294eeb212f9d049d82c9e92ed1f65b2c26eb5d18c90894c584" [label=""];
  "sha256:2ee7ddc9f620ec294eeb212f9d049d82c9e92ed1f65b2c26eb5d18c90894c584" -> "sha256:d647b7e5d1c24180ca494f746d03cf8476f6a753924dbbe65096754e28c241d1" [label=""];
  "sha256:66057a7daa423b1254c6ab6b143ab1bd7f1abb4e8bf675aebc1c502c85fdc6a6" -> "sha256:d647b7e5d1c24180ca494f746d03cf8476f6a753924dbbe65096754e28c241d1" [label=""];
  "sha256:d647b7e5d1c24180ca494f746d03cf8476f6a753924dbbe65096754e28c241d1" -> "sha256:d9fd7837e20a1ea2e719c8618bfe8e159ee33e8cb5e83f5b066b31b091bb3691" [label=""];
  "sha256:66057a7daa423b1254c6ab6b143ab1bd7f1abb4e8bf675aebc1c502c85fdc6a6" -> "sha256:d9fd7837e20a1ea2e719c8618bfe8e159ee33e8cb5e83f5b066b31b091bb3691" [label=""];
  "sha256:d9fd7837e20a1ea2e719c8618bfe8e159ee33e8cb5e83f5b066b31b091bb3691" -> "sha256:bc815e796b6a1abf8d10045285434d2ff4bd3e3986e62c51c663f9f4b0cd0fb5" [label=""];
  "sha256:bc815e796b6a1abf8d10045285434d2ff4bd3e3986e62c51c663f9f4b0cd0fb5" -> "sha256:621299af8fda97c44c4f9fdc953283fb5db4332d2b81db79037b927705ff72b6" [label=""];
  "sha256:66057a7daa423b1254c6ab6b143ab1bd7f1abb4e8bf675aebc1c502c85fdc6a6" -> "sha256:621299af8fda97c44c4f9fdc953283fb5db4332d2b81db79037b927705ff72b6" [label=""];
  "sha256:621299af8fda97c44c4f9fdc953283fb5db4332d2b81db79037b927705ff72b6" -> "sha256:d122ae1dae4dbd926534938652e8513cf3ca6cf21feb07a322127041fd5d25d1" [label=""];
  "sha256:d122ae1dae4dbd926534938652e8513cf3ca6cf21feb07a322127041fd5d25d1" -> "sha256:ea97280614893aedc63ef30e606c2c602a5283bdff83bc790bcc637bd85998a5" [label=""];
}

