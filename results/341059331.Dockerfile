[app/sources/341059331.Dockerfile]
digraph {
  "sha256:d62f6e66dcda36da4c25907302e774b103a0176d3e4123feb3c85335f8fa1fa7" [label="docker-image://docker.io/bobrik/openresty:latest" shape="ellipse"];
  "sha256:d3ee5ca71b242d0bb3573f29445b59e49b325dfb5371d64952c9292271bed47f" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends git perl libtest-base-perl libtest-longstring-perl liblist-moreutils-perl libwww-perl" shape="box"];
  "sha256:64be77353d5ad309f188016b4971651d2bf48c6891e2d0ddd6cf8d261263723b" [label="/bin/sh -c git clone https://github.com/openresty/test-nginx.git /tmp/test-nginx &&     cd /tmp/test-nginx &&     git checkout ae6e75c391eafe680cc991d09cbe53e3d1f5d729" shape="box"];
  "sha256:2b011412cee75ad9b6918e2286f562ae14996ea3825de2ce9c61c5841e2725c7" [label="local://context" shape="ellipse"];
  "sha256:1b8637a05d9282573db21098041d09459ae6b80a10e3ce7173404c1fa232ad2b" [label="copy{src=/etc-nginx, dest=/etc/nginx}" shape="note"];
  "sha256:cc392c60c853dbb6b4e62c989e4fa7c5a97f4603bd9de7dfb2fb534bbd20b0dc" [label="copy{src=/test, dest=/tmp/zoidberg-nginx-test}" shape="note"];
  "sha256:c276661c42406180007d3e4856736cbeb4596b8e8e3ca4b7248d8d1d5f322c77" [label="/bin/sh -c cd /tmp &&     mkdir -p t/servroot &&     TEST_NGINX_NO_SHUFFLE=1 TEST_NGINX_SERVER_PORT=1984 prove -I/tmp/test-nginx/lib -r /tmp/zoidberg-nginx-test" shape="box"];
  "sha256:18022887e7f64a0faed351382c391ad697188c10d5af434cb882c81da7cdfe94" [label="sha256:18022887e7f64a0faed351382c391ad697188c10d5af434cb882c81da7cdfe94" shape="plaintext"];
  "sha256:d62f6e66dcda36da4c25907302e774b103a0176d3e4123feb3c85335f8fa1fa7" -> "sha256:d3ee5ca71b242d0bb3573f29445b59e49b325dfb5371d64952c9292271bed47f" [label=""];
  "sha256:d3ee5ca71b242d0bb3573f29445b59e49b325dfb5371d64952c9292271bed47f" -> "sha256:64be77353d5ad309f188016b4971651d2bf48c6891e2d0ddd6cf8d261263723b" [label=""];
  "sha256:64be77353d5ad309f188016b4971651d2bf48c6891e2d0ddd6cf8d261263723b" -> "sha256:1b8637a05d9282573db21098041d09459ae6b80a10e3ce7173404c1fa232ad2b" [label=""];
  "sha256:2b011412cee75ad9b6918e2286f562ae14996ea3825de2ce9c61c5841e2725c7" -> "sha256:1b8637a05d9282573db21098041d09459ae6b80a10e3ce7173404c1fa232ad2b" [label=""];
  "sha256:1b8637a05d9282573db21098041d09459ae6b80a10e3ce7173404c1fa232ad2b" -> "sha256:cc392c60c853dbb6b4e62c989e4fa7c5a97f4603bd9de7dfb2fb534bbd20b0dc" [label=""];
  "sha256:2b011412cee75ad9b6918e2286f562ae14996ea3825de2ce9c61c5841e2725c7" -> "sha256:cc392c60c853dbb6b4e62c989e4fa7c5a97f4603bd9de7dfb2fb534bbd20b0dc" [label=""];
  "sha256:cc392c60c853dbb6b4e62c989e4fa7c5a97f4603bd9de7dfb2fb534bbd20b0dc" -> "sha256:c276661c42406180007d3e4856736cbeb4596b8e8e3ca4b7248d8d1d5f322c77" [label=""];
  "sha256:c276661c42406180007d3e4856736cbeb4596b8e8e3ca4b7248d8d1d5f322c77" -> "sha256:18022887e7f64a0faed351382c391ad697188c10d5af434cb882c81da7cdfe94" [label=""];
}

