[app/sources/215380259.Dockerfile]
digraph {
  "sha256:bf3fbb04c216e19d48092e48732764f6b34a5c9a537367deee790968ac54056f" [label="docker-image://docker.io/library/node:9.0" shape="ellipse"];
  "sha256:ab62fe1e8a9adfed408e7f0fa2f17286c127c3613071934b678036b712ca5e6c" [label="/bin/sh -c mkdir -p /usr/share/nginx/wuanlife" shape="box"];
  "sha256:32e673afa8524e500f3b95a9ae379e289f55ea64ea88f5d375cfb23a5fc3d89c" [label="mkdir{path=/usr/share/nginx/wuanlife}" shape="note"];
  "sha256:b0c729e2c24416952f9f34ed49fcf487febc7fdbb51f6439e96003f14c040f05" [label="local://context" shape="ellipse"];
  "sha256:a545e043297fc3df149c4cae055d2ba687ffb532cf59173e5a36025c8fc677e4" [label="copy{src=/package.json, dest=/usr/share/nginx/wuanlife}" shape="note"];
  "sha256:71a654c9bc50385ff4d7d37d02258beb87ba684e4bd91de1ba5c46963f6584ec" [label="/bin/sh -c npm config set registry https://registry.npm.taobao.org" shape="box"];
  "sha256:e37764308e681b9365b309dbc18774a4798cc673cde56156abdf70aa3ed2f072" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9e84ea7672de5d8415bb50963a9f854d3569d2a3caee3a22994df0a194f33b6b" [label="copy{src=/, dest=/usr/share/nginx/wuanlife}" shape="note"];
  "sha256:2a69d20c462b1f6eb1172968b8a5456b778c81039409cfebca66b086b30ea51b" [label="/bin/sh -c npm run build:prod" shape="box"];
  "sha256:738ee29e4280092c58d4441d4ea9c0e33c90cb0eaa4cd77170ec8eb2e23852fc" [label="sha256:738ee29e4280092c58d4441d4ea9c0e33c90cb0eaa4cd77170ec8eb2e23852fc" shape="plaintext"];
  "sha256:bf3fbb04c216e19d48092e48732764f6b34a5c9a537367deee790968ac54056f" -> "sha256:ab62fe1e8a9adfed408e7f0fa2f17286c127c3613071934b678036b712ca5e6c" [label=""];
  "sha256:ab62fe1e8a9adfed408e7f0fa2f17286c127c3613071934b678036b712ca5e6c" -> "sha256:32e673afa8524e500f3b95a9ae379e289f55ea64ea88f5d375cfb23a5fc3d89c" [label=""];
  "sha256:32e673afa8524e500f3b95a9ae379e289f55ea64ea88f5d375cfb23a5fc3d89c" -> "sha256:a545e043297fc3df149c4cae055d2ba687ffb532cf59173e5a36025c8fc677e4" [label=""];
  "sha256:b0c729e2c24416952f9f34ed49fcf487febc7fdbb51f6439e96003f14c040f05" -> "sha256:a545e043297fc3df149c4cae055d2ba687ffb532cf59173e5a36025c8fc677e4" [label=""];
  "sha256:a545e043297fc3df149c4cae055d2ba687ffb532cf59173e5a36025c8fc677e4" -> "sha256:71a654c9bc50385ff4d7d37d02258beb87ba684e4bd91de1ba5c46963f6584ec" [label=""];
  "sha256:71a654c9bc50385ff4d7d37d02258beb87ba684e4bd91de1ba5c46963f6584ec" -> "sha256:e37764308e681b9365b309dbc18774a4798cc673cde56156abdf70aa3ed2f072" [label=""];
  "sha256:e37764308e681b9365b309dbc18774a4798cc673cde56156abdf70aa3ed2f072" -> "sha256:9e84ea7672de5d8415bb50963a9f854d3569d2a3caee3a22994df0a194f33b6b" [label=""];
  "sha256:b0c729e2c24416952f9f34ed49fcf487febc7fdbb51f6439e96003f14c040f05" -> "sha256:9e84ea7672de5d8415bb50963a9f854d3569d2a3caee3a22994df0a194f33b6b" [label=""];
  "sha256:9e84ea7672de5d8415bb50963a9f854d3569d2a3caee3a22994df0a194f33b6b" -> "sha256:2a69d20c462b1f6eb1172968b8a5456b778c81039409cfebca66b086b30ea51b" [label=""];
  "sha256:2a69d20c462b1f6eb1172968b8a5456b778c81039409cfebca66b086b30ea51b" -> "sha256:738ee29e4280092c58d4441d4ea9c0e33c90cb0eaa4cd77170ec8eb2e23852fc" [label=""];
}

