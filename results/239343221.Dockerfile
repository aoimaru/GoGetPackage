[app/sources/239343221.Dockerfile]
digraph {
  "sha256:e643e15887c1e03b80338ea67a56b158a4f14d31aa62ece3de84274d40933801" [label="docker-image://docker.io/library/nginx:1.15.12" shape="ellipse"];
  "sha256:a2fda7081bca572dff715ebc097ec8524ab46a1072cc9490cf0c8859637d355d" [label="local://context" shape="ellipse"];
  "sha256:05f53ec2abcb97e0d359437b51ac9b87f148c73247d98c741f5c00c6be577db3" [label="docker-image://docker.io/circleci/node:latest-browsers@sha256:e8bb6a2130402e585573319698b93d344dea8901256f56591512b1af9eb2dc24" shape="ellipse"];
  "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:41dae199cb70e46975696514c025772aba490511578e238c2785bc611a178037" [label="copy{src=/src/dashboard/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:0792f4502272ad1ecb7c3a8a075bf13bb2f22bcd3a3c50946d7e8d833d167dad" [label="/bin/sh -c yarn" shape="box"];
  "sha256:949cfe65e32342e2be812de97ef0663d19c0a8bff00ce7b180f2f2d75222aa5a" [label="copy{src=/src/dashboard, dest=/usr/src/app/}" shape="note"];
  "sha256:74f1db1df5189b5f886db7ef7554ae77c44cd47514e03776db9b78f1bf8097a6" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:175854aa845e655e672082d9805d5f8c92080628a1a61129872879028031c742" [label="copy{src=/usr/src/app/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:a55a0763c4e8acdde4490fbbcec32afc9e8ce0e0beeeae97a4e61d84a58c5583" [label="copy{src=/build_image/docker/dashboard/config-nginx.sh, dest=/}" shape="note"];
  "sha256:c126e261fb2e42dedaf4a5ac3e03b7cae09509ac7bc8309fe72817ae4ec9bda3" [label="/bin/sh -c chmod +x /config-nginx.sh" shape="box"];
  "sha256:f640fa3dc3b06155f1fb523ccc1c2db339b6efc52552dfe8cfddcc3c7f93c5a0" [label="copy{src=/build_image/docker/dashboard/default.conf.tmpl, dest=/etc/nginx/conf.d/default.conf.tmpl}" shape="note"];
  "sha256:c745690f28e00241409598bc2fcba85dea9612d4241ee31f820ecf309a53c97c" [label="sha256:c745690f28e00241409598bc2fcba85dea9612d4241ee31f820ecf309a53c97c" shape="plaintext"];
  "sha256:05f53ec2abcb97e0d359437b51ac9b87f148c73247d98c741f5c00c6be577db3" -> "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" [label=""];
  "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" -> "sha256:41dae199cb70e46975696514c025772aba490511578e238c2785bc611a178037" [label=""];
  "sha256:a2fda7081bca572dff715ebc097ec8524ab46a1072cc9490cf0c8859637d355d" -> "sha256:41dae199cb70e46975696514c025772aba490511578e238c2785bc611a178037" [label=""];
  "sha256:41dae199cb70e46975696514c025772aba490511578e238c2785bc611a178037" -> "sha256:0792f4502272ad1ecb7c3a8a075bf13bb2f22bcd3a3c50946d7e8d833d167dad" [label=""];
  "sha256:0792f4502272ad1ecb7c3a8a075bf13bb2f22bcd3a3c50946d7e8d833d167dad" -> "sha256:949cfe65e32342e2be812de97ef0663d19c0a8bff00ce7b180f2f2d75222aa5a" [label=""];
  "sha256:a2fda7081bca572dff715ebc097ec8524ab46a1072cc9490cf0c8859637d355d" -> "sha256:949cfe65e32342e2be812de97ef0663d19c0a8bff00ce7b180f2f2d75222aa5a" [label=""];
  "sha256:949cfe65e32342e2be812de97ef0663d19c0a8bff00ce7b180f2f2d75222aa5a" -> "sha256:74f1db1df5189b5f886db7ef7554ae77c44cd47514e03776db9b78f1bf8097a6" [label=""];
  "sha256:e643e15887c1e03b80338ea67a56b158a4f14d31aa62ece3de84274d40933801" -> "sha256:175854aa845e655e672082d9805d5f8c92080628a1a61129872879028031c742" [label=""];
  "sha256:74f1db1df5189b5f886db7ef7554ae77c44cd47514e03776db9b78f1bf8097a6" -> "sha256:175854aa845e655e672082d9805d5f8c92080628a1a61129872879028031c742" [label=""];
  "sha256:175854aa845e655e672082d9805d5f8c92080628a1a61129872879028031c742" -> "sha256:a55a0763c4e8acdde4490fbbcec32afc9e8ce0e0beeeae97a4e61d84a58c5583" [label=""];
  "sha256:a2fda7081bca572dff715ebc097ec8524ab46a1072cc9490cf0c8859637d355d" -> "sha256:a55a0763c4e8acdde4490fbbcec32afc9e8ce0e0beeeae97a4e61d84a58c5583" [label=""];
  "sha256:a55a0763c4e8acdde4490fbbcec32afc9e8ce0e0beeeae97a4e61d84a58c5583" -> "sha256:c126e261fb2e42dedaf4a5ac3e03b7cae09509ac7bc8309fe72817ae4ec9bda3" [label=""];
  "sha256:c126e261fb2e42dedaf4a5ac3e03b7cae09509ac7bc8309fe72817ae4ec9bda3" -> "sha256:f640fa3dc3b06155f1fb523ccc1c2db339b6efc52552dfe8cfddcc3c7f93c5a0" [label=""];
  "sha256:a2fda7081bca572dff715ebc097ec8524ab46a1072cc9490cf0c8859637d355d" -> "sha256:f640fa3dc3b06155f1fb523ccc1c2db339b6efc52552dfe8cfddcc3c7f93c5a0" [label=""];
  "sha256:f640fa3dc3b06155f1fb523ccc1c2db339b6efc52552dfe8cfddcc3c7f93c5a0" -> "sha256:c745690f28e00241409598bc2fcba85dea9612d4241ee31f820ecf309a53c97c" [label=""];
}

