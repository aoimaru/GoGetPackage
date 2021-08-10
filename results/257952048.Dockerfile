[app/sources/257952048.Dockerfile]
digraph {
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" [label="docker-image://docker.io/library/php:7.1-cli" shape="ellipse"];
  "sha256:d3633b1f39a03b3bc1fec655926d1db23d7b3c666a6d84d601fcb12ecfc06ae2" [label="/bin/sh -c pecl install xdebug && docker-php-ext-enable xdebug" shape="box"];
  "sha256:24aef07f9baae96ba02c3221b290ada6a6e8eaf40e5fc34fa1a328f5c4c53279" [label="sha256:24aef07f9baae96ba02c3221b290ada6a6e8eaf40e5fc34fa1a328f5c4c53279" shape="plaintext"];
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" -> "sha256:d3633b1f39a03b3bc1fec655926d1db23d7b3c666a6d84d601fcb12ecfc06ae2" [label=""];
  "sha256:d3633b1f39a03b3bc1fec655926d1db23d7b3c666a6d84d601fcb12ecfc06ae2" -> "sha256:24aef07f9baae96ba02c3221b290ada6a6e8eaf40e5fc34fa1a328f5c4c53279" [label=""];
}

