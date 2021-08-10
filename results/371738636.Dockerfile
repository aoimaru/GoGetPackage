[app/sources/371738636.Dockerfile]
digraph {
  "sha256:a506854abe9e8bf9b8d97eaf1b19958e66d72f3b03d656d8d01e500f9bd2d9fe" [label="local://context" shape="ellipse"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:6231f46375bb3779d62ec17da98af5e6f8045ea399da8952ff73f7b1bb6d5f2e" [label="/bin/sh -c apt-get update &&     apt-get -y install wget nginx mongodb php5-fpm nginx git" shape="box"];
  "sha256:06d70b772e7eeb58d0b5066c908b153bc0e7cbaacd34e58667ed08f6c76af4c5" [label="/bin/sh -c mkdir /etc/nginx/ssl     && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj \"/C=US/ST=NY/L=NY/O=IT/OU=IT/CN=ssl.gosint\"" shape="box"];
  "sha256:bf257a06d5cf6fd7f61c6011160c40defce1dafe9cf377571a006656248888f2" [label="copy{src=/default.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:e11157a9484f7542d14f635906317780166d03dc3b7d119f01c7e06240179649" [label="/bin/sh -c go get github.com/tools/godep     && go install github.com/tools/godep" shape="box"];
  "sha256:d7472b82e1afc6de1d6895091955d9ec1ac6d791205f84e69651fae5dfce2996" [label="mkdir{path=/go/src}" shape="note"];
  "sha256:e2e2d16c9270d6cba4e4bfa00f27ee6d1735f7ecde8c278538da799d6628ea14" [label="/bin/sh -c git clone https://github.com/ciscocsirt/GOSINT" shape="box"];
  "sha256:abcb69084542cd3773a100977768bb0687d9d5123d0bbbeb9402f3b0f98776c2" [label="mkdir{path=/go/src/GOSINT}" shape="note"];
  "sha256:921488251a6c496eaaecb5778806e57408ea05be8e3861ad9e330048babc72a1" [label="copy{src=/gosint.sh, dest=/go/src/GOSINT/gosint.sh}" shape="note"];
  "sha256:881169f5a23a9d64008fa3e13bced8ab682ac6e1cd80c6f99fcb30ed77096fb8" [label="/bin/sh -c chmod 655 gosint.sh" shape="box"];
  "sha256:2ff555f813c4d35996a32c64c6ab1bcf2c94d5873c83bda922a52184e963b219" [label="/bin/sh -c go build -o gosint     && chmod +x gosint" shape="box"];
  "sha256:e13a5c0f6c65fba41662945968318d23a1edf19beb967a2f1115b4bdd3c0d60d" [label="/bin/sh -c mkdir /var/www/gosint     && cp -r website/* /var/www/gosint/     && chown -R www-data:www-data /var/www/gosint/" shape="box"];
  "sha256:80dbe1e49ec85849d542b2db45f050ec48090d7ab23fd16bdc40d078602c36a3" [label="sha256:80dbe1e49ec85849d542b2db45f050ec48090d7ab23fd16bdc40d078602c36a3" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:6231f46375bb3779d62ec17da98af5e6f8045ea399da8952ff73f7b1bb6d5f2e" [label=""];
  "sha256:6231f46375bb3779d62ec17da98af5e6f8045ea399da8952ff73f7b1bb6d5f2e" -> "sha256:06d70b772e7eeb58d0b5066c908b153bc0e7cbaacd34e58667ed08f6c76af4c5" [label=""];
  "sha256:06d70b772e7eeb58d0b5066c908b153bc0e7cbaacd34e58667ed08f6c76af4c5" -> "sha256:bf257a06d5cf6fd7f61c6011160c40defce1dafe9cf377571a006656248888f2" [label=""];
  "sha256:a506854abe9e8bf9b8d97eaf1b19958e66d72f3b03d656d8d01e500f9bd2d9fe" -> "sha256:bf257a06d5cf6fd7f61c6011160c40defce1dafe9cf377571a006656248888f2" [label=""];
  "sha256:bf257a06d5cf6fd7f61c6011160c40defce1dafe9cf377571a006656248888f2" -> "sha256:e11157a9484f7542d14f635906317780166d03dc3b7d119f01c7e06240179649" [label=""];
  "sha256:e11157a9484f7542d14f635906317780166d03dc3b7d119f01c7e06240179649" -> "sha256:d7472b82e1afc6de1d6895091955d9ec1ac6d791205f84e69651fae5dfce2996" [label=""];
  "sha256:d7472b82e1afc6de1d6895091955d9ec1ac6d791205f84e69651fae5dfce2996" -> "sha256:e2e2d16c9270d6cba4e4bfa00f27ee6d1735f7ecde8c278538da799d6628ea14" [label=""];
  "sha256:e2e2d16c9270d6cba4e4bfa00f27ee6d1735f7ecde8c278538da799d6628ea14" -> "sha256:abcb69084542cd3773a100977768bb0687d9d5123d0bbbeb9402f3b0f98776c2" [label=""];
  "sha256:abcb69084542cd3773a100977768bb0687d9d5123d0bbbeb9402f3b0f98776c2" -> "sha256:921488251a6c496eaaecb5778806e57408ea05be8e3861ad9e330048babc72a1" [label=""];
  "sha256:a506854abe9e8bf9b8d97eaf1b19958e66d72f3b03d656d8d01e500f9bd2d9fe" -> "sha256:921488251a6c496eaaecb5778806e57408ea05be8e3861ad9e330048babc72a1" [label=""];
  "sha256:921488251a6c496eaaecb5778806e57408ea05be8e3861ad9e330048babc72a1" -> "sha256:881169f5a23a9d64008fa3e13bced8ab682ac6e1cd80c6f99fcb30ed77096fb8" [label=""];
  "sha256:881169f5a23a9d64008fa3e13bced8ab682ac6e1cd80c6f99fcb30ed77096fb8" -> "sha256:2ff555f813c4d35996a32c64c6ab1bcf2c94d5873c83bda922a52184e963b219" [label=""];
  "sha256:2ff555f813c4d35996a32c64c6ab1bcf2c94d5873c83bda922a52184e963b219" -> "sha256:e13a5c0f6c65fba41662945968318d23a1edf19beb967a2f1115b4bdd3c0d60d" [label=""];
  "sha256:e13a5c0f6c65fba41662945968318d23a1edf19beb967a2f1115b4bdd3c0d60d" -> "sha256:80dbe1e49ec85849d542b2db45f050ec48090d7ab23fd16bdc40d078602c36a3" [label=""];
}

