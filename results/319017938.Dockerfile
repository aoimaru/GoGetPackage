[app/sources/319017938.Dockerfile]
digraph {
  "sha256:908bec31b86333a70cc446936a30c7e188c7cc02d8830bc55ea83801b161c90d" [label="docker-image://docker.io/s1r1u5/php:5.6" shape="ellipse"];
  "sha256:94dc95a3b658e051521412f04b499e75e4e1263d6539c2dd04999be4ad7b2785" [label="local://context" shape="ellipse"];
  "sha256:b0f91623aa1dfd04b6da0ce7709576d46f6c1eabefc1fed8fba17d4cba3b44da" [label="copy{src=/src, dest=/app}" shape="note"];
  "sha256:a213a7edee56942bcc371d96b47c6f1d2d387fe44309fdfd1c1dfa18522c82b9" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:f50398c9565ef382616bcbc14c24e01445bb8b96b39853a9945ff688f0b9e45d" [label="/bin/sh -c apk update && apk  add php5-json  php5-pdo_mysql php5-mysqli  php5-mcrypt php5-ctype php5-dom php5-xml && chmod -R 777 /app" shape="box"];
  "sha256:6993790469b3d474936336f4294913fe871463794c074ddfedd827433e63e4b2" [label="sha256:6993790469b3d474936336f4294913fe871463794c074ddfedd827433e63e4b2" shape="plaintext"];
  "sha256:908bec31b86333a70cc446936a30c7e188c7cc02d8830bc55ea83801b161c90d" -> "sha256:b0f91623aa1dfd04b6da0ce7709576d46f6c1eabefc1fed8fba17d4cba3b44da" [label=""];
  "sha256:94dc95a3b658e051521412f04b499e75e4e1263d6539c2dd04999be4ad7b2785" -> "sha256:b0f91623aa1dfd04b6da0ce7709576d46f6c1eabefc1fed8fba17d4cba3b44da" [label=""];
  "sha256:b0f91623aa1dfd04b6da0ce7709576d46f6c1eabefc1fed8fba17d4cba3b44da" -> "sha256:a213a7edee56942bcc371d96b47c6f1d2d387fe44309fdfd1c1dfa18522c82b9" [label=""];
  "sha256:94dc95a3b658e051521412f04b499e75e4e1263d6539c2dd04999be4ad7b2785" -> "sha256:a213a7edee56942bcc371d96b47c6f1d2d387fe44309fdfd1c1dfa18522c82b9" [label=""];
  "sha256:a213a7edee56942bcc371d96b47c6f1d2d387fe44309fdfd1c1dfa18522c82b9" -> "sha256:f50398c9565ef382616bcbc14c24e01445bb8b96b39853a9945ff688f0b9e45d" [label=""];
  "sha256:f50398c9565ef382616bcbc14c24e01445bb8b96b39853a9945ff688f0b9e45d" -> "sha256:6993790469b3d474936336f4294913fe871463794c074ddfedd827433e63e4b2" [label=""];
}

