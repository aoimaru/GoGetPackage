[app/sources/217761923.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:d6bf093d3f5b80b5ecfccfc3e08de49ad8da54f3c62b140a32b90f597a83d5b2" [label="local://context" shape="ellipse"];
  "sha256:a4996618e737d0e79ee4d9ee91cf242f35de496a6917879c902bd86e4e46a829" [label="copy{src=/app, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:70c9da9c3d203d78826f9a9238df216530976e1de86b5186314155e4051acadd" [label="copy{src=/deploy/app/entrypoint.sh, dest=/usr/share/nginx/html/entrypoint.sh}" shape="note"];
  "sha256:4cccd33afff9647e1007a1ea103e2552fa366d8a1184c953f2b8be216e7dcc18" [label="/bin/sh -c chmod 755 /usr/share/nginx/html/entrypoint.sh" shape="box"];
  "sha256:9d47a90f881fe20414bf25a8e18c081d72c09cb2ec9ab8103557cc5e7cc10168" [label="mkdir{path=/usr/share/nginx/html}" shape="note"];
  "sha256:5e1f53411a761aebb3c71340ff33338075ab1b18a240d7b9b7a0cfee05e9def4" [label="/bin/sh -c apk add --update nodejs nodejs-npm" shape="box"];
  "sha256:56a1cf256b953364104717d6e2ede564e122038d15091a5717e942e0e0a8cd52" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4cd82ad752eb3dfe8c95c11e74f8841ba9bf75b23d12c991ae5aaf9fb29da66d" [label="/bin/sh -c apk --no-cache add ca-certificates wget" shape="box"];
  "sha256:f8aa3e0439f5afa9d7c5e3d1734da25eecb918478501dcf0c4459345e93d18bf" [label="/bin/sh -c wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-node-bower/master/sgerrand.rsa.pub" shape="box"];
  "sha256:53994e3ef04be9a76d592c5c4736df1ab5cf68dc896de972925e8306f9288411" [label="/bin/sh -c wget https://github.com/sgerrand/alpine-pkg-node-bower/releases/download/unreleased/node-bower-1.8.2-r0.apk" shape="box"];
  "sha256:ab5e066e5582f4eff9100fd4f4c9265185184b1533a541947dce3f3fc5176ddb" [label="/bin/sh -c apk add --no-cache node-bower-1.8.2-r0.apk" shape="box"];
  "sha256:1096f123a3fd7fa2ce085731d567b629ebdfb58381f1134ae0a27aa3b84553d0" [label="/bin/sh -c bower --allow-root install -g" shape="box"];
  "sha256:0e494bdc1ce35b0f97d3a015140a722528d0fed50626c7bca327bfe774d1e241" [label="sha256:0e494bdc1ce35b0f97d3a015140a722528d0fed50626c7bca327bfe774d1e241" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:a4996618e737d0e79ee4d9ee91cf242f35de496a6917879c902bd86e4e46a829" [label=""];
  "sha256:d6bf093d3f5b80b5ecfccfc3e08de49ad8da54f3c62b140a32b90f597a83d5b2" -> "sha256:a4996618e737d0e79ee4d9ee91cf242f35de496a6917879c902bd86e4e46a829" [label=""];
  "sha256:a4996618e737d0e79ee4d9ee91cf242f35de496a6917879c902bd86e4e46a829" -> "sha256:70c9da9c3d203d78826f9a9238df216530976e1de86b5186314155e4051acadd" [label=""];
  "sha256:d6bf093d3f5b80b5ecfccfc3e08de49ad8da54f3c62b140a32b90f597a83d5b2" -> "sha256:70c9da9c3d203d78826f9a9238df216530976e1de86b5186314155e4051acadd" [label=""];
  "sha256:70c9da9c3d203d78826f9a9238df216530976e1de86b5186314155e4051acadd" -> "sha256:4cccd33afff9647e1007a1ea103e2552fa366d8a1184c953f2b8be216e7dcc18" [label=""];
  "sha256:4cccd33afff9647e1007a1ea103e2552fa366d8a1184c953f2b8be216e7dcc18" -> "sha256:9d47a90f881fe20414bf25a8e18c081d72c09cb2ec9ab8103557cc5e7cc10168" [label=""];
  "sha256:9d47a90f881fe20414bf25a8e18c081d72c09cb2ec9ab8103557cc5e7cc10168" -> "sha256:5e1f53411a761aebb3c71340ff33338075ab1b18a240d7b9b7a0cfee05e9def4" [label=""];
  "sha256:5e1f53411a761aebb3c71340ff33338075ab1b18a240d7b9b7a0cfee05e9def4" -> "sha256:56a1cf256b953364104717d6e2ede564e122038d15091a5717e942e0e0a8cd52" [label=""];
  "sha256:56a1cf256b953364104717d6e2ede564e122038d15091a5717e942e0e0a8cd52" -> "sha256:4cd82ad752eb3dfe8c95c11e74f8841ba9bf75b23d12c991ae5aaf9fb29da66d" [label=""];
  "sha256:4cd82ad752eb3dfe8c95c11e74f8841ba9bf75b23d12c991ae5aaf9fb29da66d" -> "sha256:f8aa3e0439f5afa9d7c5e3d1734da25eecb918478501dcf0c4459345e93d18bf" [label=""];
  "sha256:f8aa3e0439f5afa9d7c5e3d1734da25eecb918478501dcf0c4459345e93d18bf" -> "sha256:53994e3ef04be9a76d592c5c4736df1ab5cf68dc896de972925e8306f9288411" [label=""];
  "sha256:53994e3ef04be9a76d592c5c4736df1ab5cf68dc896de972925e8306f9288411" -> "sha256:ab5e066e5582f4eff9100fd4f4c9265185184b1533a541947dce3f3fc5176ddb" [label=""];
  "sha256:ab5e066e5582f4eff9100fd4f4c9265185184b1533a541947dce3f3fc5176ddb" -> "sha256:1096f123a3fd7fa2ce085731d567b629ebdfb58381f1134ae0a27aa3b84553d0" [label=""];
  "sha256:1096f123a3fd7fa2ce085731d567b629ebdfb58381f1134ae0a27aa3b84553d0" -> "sha256:0e494bdc1ce35b0f97d3a015140a722528d0fed50626c7bca327bfe774d1e241" [label=""];
}

