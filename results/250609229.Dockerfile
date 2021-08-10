[app/sources/250609229.Dockerfile]
digraph {
  "sha256:86d01bb2bc99886a51085e2b202978768ee91e3f5de68f0a48239d2fc9783260" [label="docker-image://docker.io/library/node:6.9.1" shape="ellipse"];
  "sha256:7228e0706519c75cf2cc44e3ac499d65576a696b8a0e30477f9715abc4bbdd74" [label="/bin/sh -c useradd --user-group --create-home --shell /bin/false app" shape="box"];
  "sha256:ac0c328ac7893a9b69e41ec9168f1a32afa3ddac133212a6f46bff83b81c3847" [label="/bin/sh -c npm install --global angular-cli" shape="box"];
  "sha256:dd099d50d9226a17207da6c2b415f0f3dc73fcca9fba551d5dad75ffcb6cbf4b" [label="mkdir{path=/home/app/angular2-cli-webpack-docker}" shape="note"];
  "sha256:8c847e8f247a7771a337cbcc6d2dc00d34770439e515333cac93f03b760a7d75" [label="local://context" shape="ellipse"];
  "sha256:2bbdb9221d2dfade70dc4beae9ffc3d3593159015791098cfdbaab53e4c89659" [label="copy{src=/package.json, dest=/home/app/angular2-cli-webpack-docker/package.json}" shape="note"];
  "sha256:d9431f5d87bfd2eb2e937bf0760ee985104948bacc3fe430a7a6e6e5f60ba3dc" [label="/bin/sh -c npm install && npm cache clean" shape="box"];
  "sha256:d795f4149f619e799df37449d001e7c482109e5285407dcb95bb2528df0d3577" [label="copy{src=/, dest=/home/app/angular2-cli-webpack-docker}" shape="note"];
  "sha256:9cb8c3909c92b6a5eed8ccc0fbbd175586ffbb8d9fbd7f79ac7f4ce3758e4d7b" [label="/bin/sh -c chown -R $APP_USER:$APP_USER $HOME/*" shape="box"];
  "sha256:04227be3069e0dcfc9163602285c9bccd67e6add9a5163d742b57977fd1fe2c9" [label="mkdir{path=/home/app/angular2-cli-webpack-docker}" shape="note"];
  "sha256:b2c05412bf0ab36694cbb648939c33681e4a87a280ade6070c5b117d09778abe" [label="sha256:b2c05412bf0ab36694cbb648939c33681e4a87a280ade6070c5b117d09778abe" shape="plaintext"];
  "sha256:86d01bb2bc99886a51085e2b202978768ee91e3f5de68f0a48239d2fc9783260" -> "sha256:7228e0706519c75cf2cc44e3ac499d65576a696b8a0e30477f9715abc4bbdd74" [label=""];
  "sha256:7228e0706519c75cf2cc44e3ac499d65576a696b8a0e30477f9715abc4bbdd74" -> "sha256:ac0c328ac7893a9b69e41ec9168f1a32afa3ddac133212a6f46bff83b81c3847" [label=""];
  "sha256:ac0c328ac7893a9b69e41ec9168f1a32afa3ddac133212a6f46bff83b81c3847" -> "sha256:dd099d50d9226a17207da6c2b415f0f3dc73fcca9fba551d5dad75ffcb6cbf4b" [label=""];
  "sha256:dd099d50d9226a17207da6c2b415f0f3dc73fcca9fba551d5dad75ffcb6cbf4b" -> "sha256:2bbdb9221d2dfade70dc4beae9ffc3d3593159015791098cfdbaab53e4c89659" [label=""];
  "sha256:8c847e8f247a7771a337cbcc6d2dc00d34770439e515333cac93f03b760a7d75" -> "sha256:2bbdb9221d2dfade70dc4beae9ffc3d3593159015791098cfdbaab53e4c89659" [label=""];
  "sha256:2bbdb9221d2dfade70dc4beae9ffc3d3593159015791098cfdbaab53e4c89659" -> "sha256:d9431f5d87bfd2eb2e937bf0760ee985104948bacc3fe430a7a6e6e5f60ba3dc" [label=""];
  "sha256:d9431f5d87bfd2eb2e937bf0760ee985104948bacc3fe430a7a6e6e5f60ba3dc" -> "sha256:d795f4149f619e799df37449d001e7c482109e5285407dcb95bb2528df0d3577" [label=""];
  "sha256:8c847e8f247a7771a337cbcc6d2dc00d34770439e515333cac93f03b760a7d75" -> "sha256:d795f4149f619e799df37449d001e7c482109e5285407dcb95bb2528df0d3577" [label=""];
  "sha256:d795f4149f619e799df37449d001e7c482109e5285407dcb95bb2528df0d3577" -> "sha256:9cb8c3909c92b6a5eed8ccc0fbbd175586ffbb8d9fbd7f79ac7f4ce3758e4d7b" [label=""];
  "sha256:9cb8c3909c92b6a5eed8ccc0fbbd175586ffbb8d9fbd7f79ac7f4ce3758e4d7b" -> "sha256:04227be3069e0dcfc9163602285c9bccd67e6add9a5163d742b57977fd1fe2c9" [label=""];
  "sha256:04227be3069e0dcfc9163602285c9bccd67e6add9a5163d742b57977fd1fe2c9" -> "sha256:b2c05412bf0ab36694cbb648939c33681e4a87a280ade6070c5b117d09778abe" [label=""];
}

