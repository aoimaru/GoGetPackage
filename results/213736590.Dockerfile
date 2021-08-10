[app/sources/213736590.Dockerfile]
digraph {
  "sha256:75d2f8cad702268ec5198c66f5832f15ad400c48362711a6e33aef5a1fd73cc6" [label="docker-image://docker.io/nodesource/wily-base:latest" shape="ellipse"];
  "sha256:cb1ae80da7aded49d4cb850cb25ef473a0ef5f31fcc925f9157cf45f9143f1e2" [label="/bin/sh -c curl https://deb.nodesource.com/node/pool/main/n/nodejs/nodejs_0.10.46-1nodesource1~wily1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:585551c07676eb25386890effa6de54a3d14c31874f1431d6c97dd3220331855" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:3921d0a44e3a901ddbfaaed79a3173656c984ed0daaeba5eac174fc22166aff2" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f8c5ac6d37db869cc5a715d8555cd77aed31d98bd55e64de9ee63781b86752d3" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:13fe26e88a7e23bcd97aa1088e9ed90b8953f43d6908bdfba4384a1a797b98b9" [label="sha256:13fe26e88a7e23bcd97aa1088e9ed90b8953f43d6908bdfba4384a1a797b98b9" shape="plaintext"];
  "sha256:75d2f8cad702268ec5198c66f5832f15ad400c48362711a6e33aef5a1fd73cc6" -> "sha256:cb1ae80da7aded49d4cb850cb25ef473a0ef5f31fcc925f9157cf45f9143f1e2" [label=""];
  "sha256:cb1ae80da7aded49d4cb850cb25ef473a0ef5f31fcc925f9157cf45f9143f1e2" -> "sha256:585551c07676eb25386890effa6de54a3d14c31874f1431d6c97dd3220331855" [label=""];
  "sha256:585551c07676eb25386890effa6de54a3d14c31874f1431d6c97dd3220331855" -> "sha256:3921d0a44e3a901ddbfaaed79a3173656c984ed0daaeba5eac174fc22166aff2" [label=""];
  "sha256:3921d0a44e3a901ddbfaaed79a3173656c984ed0daaeba5eac174fc22166aff2" -> "sha256:f8c5ac6d37db869cc5a715d8555cd77aed31d98bd55e64de9ee63781b86752d3" [label=""];
  "sha256:f8c5ac6d37db869cc5a715d8555cd77aed31d98bd55e64de9ee63781b86752d3" -> "sha256:13fe26e88a7e23bcd97aa1088e9ed90b8953f43d6908bdfba4384a1a797b98b9" [label=""];
}

