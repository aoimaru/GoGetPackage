[app/sources/199516131.Dockerfile]
digraph {
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:e6a7d265b04a40d1cd6b09866a9dc10464d31b89330312a253e3be80c0b66f1c" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:c6856b7b3ddc1aca05ae149b36dfd9a48a2c4d15a104ffffccdbdee01efb64a7" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:23822cbcdbed7941f9b224035e765427eb4e8c9c6eeb72022416e8a4a33cbe65" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:f4add39a6787dc221edd290b87b61dfdc5b9a668d2f1c54493a02fff8a66fcc1" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:b4d7312133e7a1cf4558141abb3b5b07552cc408403e14b3a3fc5b3bba4d8ccf" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:5c15e828be881e955d26f2db402e4ab300bf82b5a9e905f3ab38d3ad753bb5fb" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:3eb707dbc0ca43978234f0d863ddef488ddeea83c7ee79205d43a77aa01d07ff" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:200efb30b60438d875f849620e6e17864a0ba963a906a0216a806e491439aa19" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:7519000b58de152241d727fdf76c0ac597d9b24790600190ea3eb8974338356f" [label="sha256:7519000b58de152241d727fdf76c0ac597d9b24790600190ea3eb8974338356f" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:e6a7d265b04a40d1cd6b09866a9dc10464d31b89330312a253e3be80c0b66f1c" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:e6a7d265b04a40d1cd6b09866a9dc10464d31b89330312a253e3be80c0b66f1c" [label=""];
  "sha256:e6a7d265b04a40d1cd6b09866a9dc10464d31b89330312a253e3be80c0b66f1c" -> "sha256:c6856b7b3ddc1aca05ae149b36dfd9a48a2c4d15a104ffffccdbdee01efb64a7" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:c6856b7b3ddc1aca05ae149b36dfd9a48a2c4d15a104ffffccdbdee01efb64a7" [label=""];
  "sha256:c6856b7b3ddc1aca05ae149b36dfd9a48a2c4d15a104ffffccdbdee01efb64a7" -> "sha256:23822cbcdbed7941f9b224035e765427eb4e8c9c6eeb72022416e8a4a33cbe65" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:23822cbcdbed7941f9b224035e765427eb4e8c9c6eeb72022416e8a4a33cbe65" [label=""];
  "sha256:23822cbcdbed7941f9b224035e765427eb4e8c9c6eeb72022416e8a4a33cbe65" -> "sha256:f4add39a6787dc221edd290b87b61dfdc5b9a668d2f1c54493a02fff8a66fcc1" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:f4add39a6787dc221edd290b87b61dfdc5b9a668d2f1c54493a02fff8a66fcc1" [label=""];
  "sha256:f4add39a6787dc221edd290b87b61dfdc5b9a668d2f1c54493a02fff8a66fcc1" -> "sha256:b4d7312133e7a1cf4558141abb3b5b07552cc408403e14b3a3fc5b3bba4d8ccf" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:b4d7312133e7a1cf4558141abb3b5b07552cc408403e14b3a3fc5b3bba4d8ccf" [label=""];
  "sha256:b4d7312133e7a1cf4558141abb3b5b07552cc408403e14b3a3fc5b3bba4d8ccf" -> "sha256:5c15e828be881e955d26f2db402e4ab300bf82b5a9e905f3ab38d3ad753bb5fb" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:5c15e828be881e955d26f2db402e4ab300bf82b5a9e905f3ab38d3ad753bb5fb" [label=""];
  "sha256:5c15e828be881e955d26f2db402e4ab300bf82b5a9e905f3ab38d3ad753bb5fb" -> "sha256:3eb707dbc0ca43978234f0d863ddef488ddeea83c7ee79205d43a77aa01d07ff" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:3eb707dbc0ca43978234f0d863ddef488ddeea83c7ee79205d43a77aa01d07ff" [label=""];
  "sha256:3eb707dbc0ca43978234f0d863ddef488ddeea83c7ee79205d43a77aa01d07ff" -> "sha256:200efb30b60438d875f849620e6e17864a0ba963a906a0216a806e491439aa19" [label=""];
  "sha256:0823c277d029062dbb7f575f63630c278f275136915222df0fb66d9e1f0e203c" -> "sha256:200efb30b60438d875f849620e6e17864a0ba963a906a0216a806e491439aa19" [label=""];
  "sha256:200efb30b60438d875f849620e6e17864a0ba963a906a0216a806e491439aa19" -> "sha256:7519000b58de152241d727fdf76c0ac597d9b24790600190ea3eb8974338356f" [label=""];
}

