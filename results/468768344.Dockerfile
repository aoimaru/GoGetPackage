[app/sources/468768344.Dockerfile]
digraph {
  "sha256:2def7d73522a589d6783707676c1f407d806975dd75967b075409151c7c85d11" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:250f085bc7b3670ceb53783c6c130b169b0cbf8079e66fe064623c9ff83919d9" [label="/bin/sh -c apt-get install -y curl apache2 libapache2-mod-auth-openidc python" shape="box"];
  "sha256:72cd5fef2e91798f490e275734aa602673030a7f687836a0536a08c3a8d120b6" [label="/bin/sh -c curl -Ls https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64.deb > dumb-init.deb &&    dpkg -i dumb-init.deb &&    rm dumb-init.deb" shape="box"];
  "sha256:c9864aad48129edbbe85e42285a117eb188d5df1081775d78cfbb92cfb28dd56" [label="/bin/sh -c a2enmod auth_openidc" shape="box"];
  "sha256:50faa9b6db5d8fa9270c0e0cd8c13cc8101b9abfa28df806b28105a60b20160d" [label="/bin/sh -c a2enmod ssl" shape="box"];
  "sha256:fbbda57a1e7628029bcd498c09127c78169066f53110c275db73b9e7be6e45d8" [label="/bin/sh -c a2enmod proxy" shape="box"];
  "sha256:618062b7759d6525d64fbbf93e8ba313b13eebb8bfc35b7bd5f09222fac6b60f" [label="/bin/sh -c a2enmod proxy_html" shape="box"];
  "sha256:1eac12b9353801c39170300fb812908a9b2e58484a1884ba8c6134869f851bbe" [label="/bin/sh -c a2enmod proxy_http" shape="box"];
  "sha256:7a90f71a16bfc374d6a17d23e53a7d9852c1cb05ac2adbfb6f7ff3700b317b9a" [label="/bin/sh -c a2enmod headers" shape="box"];
  "sha256:ad5f7e2d43d955d6ea16863e65b312ee6ed47856baa5966624702fe6a36853d4" [label="/bin/sh -c a2enmod xml2enc" shape="box"];
  "sha256:6e9cc00de27496c3bfbc9ea153a114fd147d8399e466ab498f7049ff8cdfda6a" [label="/bin/sh -c service apache2 stop" shape="box"];
  "sha256:204da7389d1262b5abeb41c8860da26261ed426048c48489988e83213d01bc95" [label="mkdir{path=/home}" shape="note"];
  "sha256:1d40a6ddb41f07baea774c05cb61859b6b43887aed14a1c9862dd7e02dde1098" [label="copy{src=/sslgen.sh, dest=/home/sslgen.sh}" shape="note"];
  "sha256:f3b1ec477789c3c4eac263f9fd81d2f7c269781fccf32e5cd729b12f31e8e65f" [label="/bin/sh -c chmod +x sslgen.sh" shape="box"];
  "sha256:6cab0bd580b63721fb563db2df485ee529f10c6a859327a63af44e0219d04d3d" [label="/bin/sh -c ./sslgen.sh;exit 0" shape="box"];
  "sha256:e09c7d4c3c43f93589e4c388308a139d008a2dee0fbcc5464cc870c7c3d19056" [label="copy{src=/configure_and_run.py, dest=/home/configure_and_run.py}" shape="note"];
  "sha256:6a820bd3515949a1ccf6bf299695dad668fa89d7598f6dc1fc9f9f16083fe100" [label="sha256:6a820bd3515949a1ccf6bf299695dad668fa89d7598f6dc1fc9f9f16083fe100" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:250f085bc7b3670ceb53783c6c130b169b0cbf8079e66fe064623c9ff83919d9" [label=""];
  "sha256:250f085bc7b3670ceb53783c6c130b169b0cbf8079e66fe064623c9ff83919d9" -> "sha256:72cd5fef2e91798f490e275734aa602673030a7f687836a0536a08c3a8d120b6" [label=""];
  "sha256:72cd5fef2e91798f490e275734aa602673030a7f687836a0536a08c3a8d120b6" -> "sha256:c9864aad48129edbbe85e42285a117eb188d5df1081775d78cfbb92cfb28dd56" [label=""];
  "sha256:c9864aad48129edbbe85e42285a117eb188d5df1081775d78cfbb92cfb28dd56" -> "sha256:50faa9b6db5d8fa9270c0e0cd8c13cc8101b9abfa28df806b28105a60b20160d" [label=""];
  "sha256:50faa9b6db5d8fa9270c0e0cd8c13cc8101b9abfa28df806b28105a60b20160d" -> "sha256:fbbda57a1e7628029bcd498c09127c78169066f53110c275db73b9e7be6e45d8" [label=""];
  "sha256:fbbda57a1e7628029bcd498c09127c78169066f53110c275db73b9e7be6e45d8" -> "sha256:618062b7759d6525d64fbbf93e8ba313b13eebb8bfc35b7bd5f09222fac6b60f" [label=""];
  "sha256:618062b7759d6525d64fbbf93e8ba313b13eebb8bfc35b7bd5f09222fac6b60f" -> "sha256:1eac12b9353801c39170300fb812908a9b2e58484a1884ba8c6134869f851bbe" [label=""];
  "sha256:1eac12b9353801c39170300fb812908a9b2e58484a1884ba8c6134869f851bbe" -> "sha256:7a90f71a16bfc374d6a17d23e53a7d9852c1cb05ac2adbfb6f7ff3700b317b9a" [label=""];
  "sha256:7a90f71a16bfc374d6a17d23e53a7d9852c1cb05ac2adbfb6f7ff3700b317b9a" -> "sha256:ad5f7e2d43d955d6ea16863e65b312ee6ed47856baa5966624702fe6a36853d4" [label=""];
  "sha256:ad5f7e2d43d955d6ea16863e65b312ee6ed47856baa5966624702fe6a36853d4" -> "sha256:6e9cc00de27496c3bfbc9ea153a114fd147d8399e466ab498f7049ff8cdfda6a" [label=""];
  "sha256:6e9cc00de27496c3bfbc9ea153a114fd147d8399e466ab498f7049ff8cdfda6a" -> "sha256:204da7389d1262b5abeb41c8860da26261ed426048c48489988e83213d01bc95" [label=""];
  "sha256:204da7389d1262b5abeb41c8860da26261ed426048c48489988e83213d01bc95" -> "sha256:1d40a6ddb41f07baea774c05cb61859b6b43887aed14a1c9862dd7e02dde1098" [label=""];
  "sha256:2def7d73522a589d6783707676c1f407d806975dd75967b075409151c7c85d11" -> "sha256:1d40a6ddb41f07baea774c05cb61859b6b43887aed14a1c9862dd7e02dde1098" [label=""];
  "sha256:1d40a6ddb41f07baea774c05cb61859b6b43887aed14a1c9862dd7e02dde1098" -> "sha256:f3b1ec477789c3c4eac263f9fd81d2f7c269781fccf32e5cd729b12f31e8e65f" [label=""];
  "sha256:f3b1ec477789c3c4eac263f9fd81d2f7c269781fccf32e5cd729b12f31e8e65f" -> "sha256:6cab0bd580b63721fb563db2df485ee529f10c6a859327a63af44e0219d04d3d" [label=""];
  "sha256:6cab0bd580b63721fb563db2df485ee529f10c6a859327a63af44e0219d04d3d" -> "sha256:e09c7d4c3c43f93589e4c388308a139d008a2dee0fbcc5464cc870c7c3d19056" [label=""];
  "sha256:2def7d73522a589d6783707676c1f407d806975dd75967b075409151c7c85d11" -> "sha256:e09c7d4c3c43f93589e4c388308a139d008a2dee0fbcc5464cc870c7c3d19056" [label=""];
  "sha256:e09c7d4c3c43f93589e4c388308a139d008a2dee0fbcc5464cc870c7c3d19056" -> "sha256:6a820bd3515949a1ccf6bf299695dad668fa89d7598f6dc1fc9f9f16083fe100" [label=""];
}

