[app/sources/344254852.Dockerfile]
digraph {
  "sha256:c3c6241e84f793355ac5c38c7b0f060081d4dd63f027cca5229ef834af5a596c" [label="local://context" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:136ebc22f5ba1ef34cc1807eff5744ecfcebecb557ec66928136beeea388e5fc" [label="/bin/sh -c apk update" shape="box"];
  "sha256:4cbaab7d4425e24b66360d21fad9253cea8fcda6f68ed18e4385e0b61cd89d52" [label="/bin/sh -c apk add g++ git" shape="box"];
  "sha256:db463d04009b9d00c03133e04a5811b1e9d4d6c06b63c91d7d53b5a8607b1df3" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:6d58fc0abc99bf2d7746ae5f309fec374a4d809b51ccdc9ebf56092955a3cbc0" [label="/bin/sh -c addgroup -g 10001 app && adduser -D -G app -h /app -u 10001 app" shape="box"];
  "sha256:dc5a79be691e224c016d13c3a580fec1de7d7f4cc0c70debf94a995dca85ea89" [label="mkdir{path=/app}" shape="note"];
  "sha256:3ae8ffd3e65be9f1f7d6694be706f1868c453b5b0dff1b7c44e8016b99bf86e3" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:070ecce01537abe282fa3c20deccf1d1a5ef8d23cba602cd9f2b5efa16655e30" [label="copy{src=/bower.json, dest=/app/bower.json}" shape="note"];
  "sha256:7cabb4bcbb2d5927072c444b3167ff11c2751f7c677b4de75a5a5ba3562c4ff7" [label="copy{src=/.bowerrc, dest=/app/.bowerrc}" shape="note"];
  "sha256:fe284536ba41e1ac62df67f4c6db60ac1b09122dd9da2a24bfae40e1325fb899" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b843b89e84aaefecf971374f2d7b654051c7277fe39b9cc253fed8adf9dcc907" [label="/bin/sh -c /bin/rm -rf .npm" shape="box"];
  "sha256:5319bddb8cc43656af2dfd796c385924e177199596d703184d1fd80af92ec53e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:df60f6a22ed7e45048e5a05a105e05f4cfb4eb5080695e002d666716af987d30" [label="/bin/sh -c apk del -r g++ git" shape="box"];
  "sha256:140294f48560e7ac2ac2ee3be5e2a0d6116690e41317e0f186414eef8a66dc0f" [label="sha256:140294f48560e7ac2ac2ee3be5e2a0d6116690e41317e0f186414eef8a66dc0f" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:136ebc22f5ba1ef34cc1807eff5744ecfcebecb557ec66928136beeea388e5fc" [label=""];
  "sha256:136ebc22f5ba1ef34cc1807eff5744ecfcebecb557ec66928136beeea388e5fc" -> "sha256:4cbaab7d4425e24b66360d21fad9253cea8fcda6f68ed18e4385e0b61cd89d52" [label=""];
  "sha256:4cbaab7d4425e24b66360d21fad9253cea8fcda6f68ed18e4385e0b61cd89d52" -> "sha256:db463d04009b9d00c03133e04a5811b1e9d4d6c06b63c91d7d53b5a8607b1df3" [label=""];
  "sha256:db463d04009b9d00c03133e04a5811b1e9d4d6c06b63c91d7d53b5a8607b1df3" -> "sha256:6d58fc0abc99bf2d7746ae5f309fec374a4d809b51ccdc9ebf56092955a3cbc0" [label=""];
  "sha256:6d58fc0abc99bf2d7746ae5f309fec374a4d809b51ccdc9ebf56092955a3cbc0" -> "sha256:dc5a79be691e224c016d13c3a580fec1de7d7f4cc0c70debf94a995dca85ea89" [label=""];
  "sha256:dc5a79be691e224c016d13c3a580fec1de7d7f4cc0c70debf94a995dca85ea89" -> "sha256:3ae8ffd3e65be9f1f7d6694be706f1868c453b5b0dff1b7c44e8016b99bf86e3" [label=""];
  "sha256:c3c6241e84f793355ac5c38c7b0f060081d4dd63f027cca5229ef834af5a596c" -> "sha256:3ae8ffd3e65be9f1f7d6694be706f1868c453b5b0dff1b7c44e8016b99bf86e3" [label=""];
  "sha256:3ae8ffd3e65be9f1f7d6694be706f1868c453b5b0dff1b7c44e8016b99bf86e3" -> "sha256:070ecce01537abe282fa3c20deccf1d1a5ef8d23cba602cd9f2b5efa16655e30" [label=""];
  "sha256:c3c6241e84f793355ac5c38c7b0f060081d4dd63f027cca5229ef834af5a596c" -> "sha256:070ecce01537abe282fa3c20deccf1d1a5ef8d23cba602cd9f2b5efa16655e30" [label=""];
  "sha256:070ecce01537abe282fa3c20deccf1d1a5ef8d23cba602cd9f2b5efa16655e30" -> "sha256:7cabb4bcbb2d5927072c444b3167ff11c2751f7c677b4de75a5a5ba3562c4ff7" [label=""];
  "sha256:c3c6241e84f793355ac5c38c7b0f060081d4dd63f027cca5229ef834af5a596c" -> "sha256:7cabb4bcbb2d5927072c444b3167ff11c2751f7c677b4de75a5a5ba3562c4ff7" [label=""];
  "sha256:7cabb4bcbb2d5927072c444b3167ff11c2751f7c677b4de75a5a5ba3562c4ff7" -> "sha256:fe284536ba41e1ac62df67f4c6db60ac1b09122dd9da2a24bfae40e1325fb899" [label=""];
  "sha256:fe284536ba41e1ac62df67f4c6db60ac1b09122dd9da2a24bfae40e1325fb899" -> "sha256:b843b89e84aaefecf971374f2d7b654051c7277fe39b9cc253fed8adf9dcc907" [label=""];
  "sha256:b843b89e84aaefecf971374f2d7b654051c7277fe39b9cc253fed8adf9dcc907" -> "sha256:5319bddb8cc43656af2dfd796c385924e177199596d703184d1fd80af92ec53e" [label=""];
  "sha256:c3c6241e84f793355ac5c38c7b0f060081d4dd63f027cca5229ef834af5a596c" -> "sha256:5319bddb8cc43656af2dfd796c385924e177199596d703184d1fd80af92ec53e" [label=""];
  "sha256:5319bddb8cc43656af2dfd796c385924e177199596d703184d1fd80af92ec53e" -> "sha256:df60f6a22ed7e45048e5a05a105e05f4cfb4eb5080695e002d666716af987d30" [label=""];
  "sha256:df60f6a22ed7e45048e5a05a105e05f4cfb4eb5080695e002d666716af987d30" -> "sha256:140294f48560e7ac2ac2ee3be5e2a0d6116690e41317e0f186414eef8a66dc0f" [label=""];
}

