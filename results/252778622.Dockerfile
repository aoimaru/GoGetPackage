[app/sources/252778622.Dockerfile]
digraph {
  "sha256:708b11783e175f54d1b2b579e6230bc39e5b6118a68d0b2fa5677e7a57432420" [label="docker-image://docker.io/octohost/php5:latest" shape="ellipse"];
  "sha256:56a661136d9700f1124e77f6a8695848f56f7a2eb122340fa17dbc7531758016" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6c8352d4df6fcf53a8fecb728f2a7bb2fa130275eee9c7f3372492aa4c3b91ac" [label="/bin/sh -c apt-get install -y git-core" shape="box"];
  "sha256:6cff59241f2b3e32142c2d7e456b0ce29f587c94a77bac779afcd5be18f6d3a6" [label="local://context" shape="ellipse"];
  "sha256:a1033741a91ee9f056250dd3797af60ab138d9e22872ee646761837def04919c" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:45462e9651d5d2e56e2e2d51a4cd3281f130d46e6f42d83c43c48ab6757a590c" [label="/bin/sh -c echo \"cgi.fix_pathinfo = 0;\" >> /etc/php5/fpm/php.ini" shape="box"];
  "sha256:75044cf88b617f4966e08c0b1591db3c00e9b8328e6363ddd061fefb0553dd38" [label="copy{src=/config.json, dest=/root/.composer/config.json}" shape="note"];
  "sha256:2769eb5f3aaef7604b25f0efd59c91d84786f0db6c9934791946f50d475cc851" [label="sha256:2769eb5f3aaef7604b25f0efd59c91d84786f0db6c9934791946f50d475cc851" shape="plaintext"];
  "sha256:708b11783e175f54d1b2b579e6230bc39e5b6118a68d0b2fa5677e7a57432420" -> "sha256:56a661136d9700f1124e77f6a8695848f56f7a2eb122340fa17dbc7531758016" [label=""];
  "sha256:56a661136d9700f1124e77f6a8695848f56f7a2eb122340fa17dbc7531758016" -> "sha256:6c8352d4df6fcf53a8fecb728f2a7bb2fa130275eee9c7f3372492aa4c3b91ac" [label=""];
  "sha256:6c8352d4df6fcf53a8fecb728f2a7bb2fa130275eee9c7f3372492aa4c3b91ac" -> "sha256:a1033741a91ee9f056250dd3797af60ab138d9e22872ee646761837def04919c" [label=""];
  "sha256:6cff59241f2b3e32142c2d7e456b0ce29f587c94a77bac779afcd5be18f6d3a6" -> "sha256:a1033741a91ee9f056250dd3797af60ab138d9e22872ee646761837def04919c" [label=""];
  "sha256:a1033741a91ee9f056250dd3797af60ab138d9e22872ee646761837def04919c" -> "sha256:45462e9651d5d2e56e2e2d51a4cd3281f130d46e6f42d83c43c48ab6757a590c" [label=""];
  "sha256:45462e9651d5d2e56e2e2d51a4cd3281f130d46e6f42d83c43c48ab6757a590c" -> "sha256:75044cf88b617f4966e08c0b1591db3c00e9b8328e6363ddd061fefb0553dd38" [label=""];
  "sha256:6cff59241f2b3e32142c2d7e456b0ce29f587c94a77bac779afcd5be18f6d3a6" -> "sha256:75044cf88b617f4966e08c0b1591db3c00e9b8328e6363ddd061fefb0553dd38" [label=""];
  "sha256:75044cf88b617f4966e08c0b1591db3c00e9b8328e6363ddd061fefb0553dd38" -> "sha256:2769eb5f3aaef7604b25f0efd59c91d84786f0db6c9934791946f50d475cc851" [label=""];
}

