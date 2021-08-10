[app/sources/281862314.Dockerfile]
digraph {
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" [label="docker-image://docker.io/library/golang:1.12.5" shape="ellipse"];
  "sha256:4af55c05f48171a72646eac2ff3b7f139cf751e9cd306506e4c2446270669269" [label="/bin/sh -c git clone --depth 1               -b fix-runners               https://github.com/conjurinc/code-generator.git &&    cd /code-generator &&    ./build_generators &&    cp -r dist/* /usr/local/bin" shape="box"];
  "sha256:82cc6cedfa72cc7c249dba4d59e3376b892ff8d451c7f9a4a2dfc5fe3adb5cb2" [label="mkdir{path=/secretless}" shape="note"];
  "sha256:8685acd2b2538bdd78de0ef180217668d25e113b87bb1a4e706071a2aa97ee2e" [label="sha256:8685acd2b2538bdd78de0ef180217668d25e113b87bb1a4e706071a2aa97ee2e" shape="plaintext"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" -> "sha256:4af55c05f48171a72646eac2ff3b7f139cf751e9cd306506e4c2446270669269" [label=""];
  "sha256:4af55c05f48171a72646eac2ff3b7f139cf751e9cd306506e4c2446270669269" -> "sha256:82cc6cedfa72cc7c249dba4d59e3376b892ff8d451c7f9a4a2dfc5fe3adb5cb2" [label=""];
  "sha256:82cc6cedfa72cc7c249dba4d59e3376b892ff8d451c7f9a4a2dfc5fe3adb5cb2" -> "sha256:8685acd2b2538bdd78de0ef180217668d25e113b87bb1a4e706071a2aa97ee2e" [label=""];
}

