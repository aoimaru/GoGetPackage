[app/sources/395100694.Dockerfile]
digraph {
  "sha256:fd3725289ef9c9afe8b42eef2260c9bc2245a89707f9843a833f27305df3e239" [label="docker-image://hub.c.163.com/library/nginx@sha256:f84932f738583e0169f94af9b2d5201be2dbacc1578de73b09a6dfaaa07801d6" shape="ellipse"];
  "sha256:cc469be32bb380c73c4d192fddffc07c55138855ba89ec26c27679011f73ed7d" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:f567e2abb61c27233986682057c62f12db7e2cf50f6a70894e8a58d9eabc0248" [label="/bin/sh -c /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone" shape="box"];
  "sha256:464244b94c6bd618ea335cc6aa9b879c87d9e1fce53fe674b3bf27c31fd6fc58" [label="local://context" shape="ellipse"];
  "sha256:4a97e44585f6dc99422d13b8031487fe8ce26fcb5ed9cdf03e4e7cd2c039f7cb" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:9388218ca9914707d480e456c27108ee5ed735402dcc929e2962fedb33db4a1c" [label="copy{src=/dist, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:339137e7338882d34c968490a0dae640ada506e9a21c5d40a2f3163650fbfd61" [label="sha256:339137e7338882d34c968490a0dae640ada506e9a21c5d40a2f3163650fbfd61" shape="plaintext"];
  "sha256:fd3725289ef9c9afe8b42eef2260c9bc2245a89707f9843a833f27305df3e239" -> "sha256:cc469be32bb380c73c4d192fddffc07c55138855ba89ec26c27679011f73ed7d" [label=""];
  "sha256:cc469be32bb380c73c4d192fddffc07c55138855ba89ec26c27679011f73ed7d" -> "sha256:f567e2abb61c27233986682057c62f12db7e2cf50f6a70894e8a58d9eabc0248" [label=""];
  "sha256:f567e2abb61c27233986682057c62f12db7e2cf50f6a70894e8a58d9eabc0248" -> "sha256:4a97e44585f6dc99422d13b8031487fe8ce26fcb5ed9cdf03e4e7cd2c039f7cb" [label=""];
  "sha256:464244b94c6bd618ea335cc6aa9b879c87d9e1fce53fe674b3bf27c31fd6fc58" -> "sha256:4a97e44585f6dc99422d13b8031487fe8ce26fcb5ed9cdf03e4e7cd2c039f7cb" [label=""];
  "sha256:4a97e44585f6dc99422d13b8031487fe8ce26fcb5ed9cdf03e4e7cd2c039f7cb" -> "sha256:9388218ca9914707d480e456c27108ee5ed735402dcc929e2962fedb33db4a1c" [label=""];
  "sha256:464244b94c6bd618ea335cc6aa9b879c87d9e1fce53fe674b3bf27c31fd6fc58" -> "sha256:9388218ca9914707d480e456c27108ee5ed735402dcc929e2962fedb33db4a1c" [label=""];
  "sha256:9388218ca9914707d480e456c27108ee5ed735402dcc929e2962fedb33db4a1c" -> "sha256:339137e7338882d34c968490a0dae640ada506e9a21c5d40a2f3163650fbfd61" [label=""];
}

