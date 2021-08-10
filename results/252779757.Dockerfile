[app/sources/252779757.Dockerfile]
digraph {
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" [label="docker-image://docker.io/library/node:wheezy" shape="ellipse"];
  "sha256:be8a84dc79c7e69b4356f9ceabf9f9376ecc17fd822bb53352445022db1e2846" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:901ccbec920b186a9354f56c65c7d0c39d5d9ac511014d0ed5597f02bdae9dde" [label="mkdir{path=/temp}" shape="note"];
  "sha256:1c87465f479386004598f317f02cadeea521d39a193e79f927c83f31d0f6ef8e" [label="local://context" shape="ellipse"];
  "sha256:a1f1aaabd667e5f8273f98d381a4fb7c9131f2298219002b394f011a3850bb6a" [label="copy{src=/package.json, dest=/temp}" shape="note"];
  "sha256:9356afa8476270d600ed6ee37cb70675d57d0c948354e363c14be756bddc2436" [label="/bin/sh -c npm config set registry https://registry.npmjs.org/ && npm install pm2 -g" shape="box"];
  "sha256:5dd8566656f12f6de4ca38d6b4f78d1d9608af1b40c6a6999e6cc0af07b0fae5" [label="/bin/sh -c npm install --silent && cp -a $TEMP_NPM/node_modules $APP_HOME" shape="box"];
  "sha256:8c552bffdb72333e957686a87289a03eb17ab39777ad7af4967d8fff98c48e4b" [label="mkdir{path=/app}" shape="note"];
  "sha256:b5d59e3d054be02568bc0917d6a79764e1d013ed7599618351bec9659e7fcbdf" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:64d97eb1f1b74887437fbcf4908c88d7d3769eda98672bfcd5b67ad154370866" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:30bd7575e39cac9123f0cf9d8f99cd1bf7295a38e04f661053a755cce2e91acf" [label="sha256:30bd7575e39cac9123f0cf9d8f99cd1bf7295a38e04f661053a755cce2e91acf" shape="plaintext"];
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" -> "sha256:be8a84dc79c7e69b4356f9ceabf9f9376ecc17fd822bb53352445022db1e2846" [label=""];
  "sha256:be8a84dc79c7e69b4356f9ceabf9f9376ecc17fd822bb53352445022db1e2846" -> "sha256:901ccbec920b186a9354f56c65c7d0c39d5d9ac511014d0ed5597f02bdae9dde" [label=""];
  "sha256:901ccbec920b186a9354f56c65c7d0c39d5d9ac511014d0ed5597f02bdae9dde" -> "sha256:a1f1aaabd667e5f8273f98d381a4fb7c9131f2298219002b394f011a3850bb6a" [label=""];
  "sha256:1c87465f479386004598f317f02cadeea521d39a193e79f927c83f31d0f6ef8e" -> "sha256:a1f1aaabd667e5f8273f98d381a4fb7c9131f2298219002b394f011a3850bb6a" [label=""];
  "sha256:a1f1aaabd667e5f8273f98d381a4fb7c9131f2298219002b394f011a3850bb6a" -> "sha256:9356afa8476270d600ed6ee37cb70675d57d0c948354e363c14be756bddc2436" [label=""];
  "sha256:9356afa8476270d600ed6ee37cb70675d57d0c948354e363c14be756bddc2436" -> "sha256:5dd8566656f12f6de4ca38d6b4f78d1d9608af1b40c6a6999e6cc0af07b0fae5" [label=""];
  "sha256:5dd8566656f12f6de4ca38d6b4f78d1d9608af1b40c6a6999e6cc0af07b0fae5" -> "sha256:8c552bffdb72333e957686a87289a03eb17ab39777ad7af4967d8fff98c48e4b" [label=""];
  "sha256:8c552bffdb72333e957686a87289a03eb17ab39777ad7af4967d8fff98c48e4b" -> "sha256:b5d59e3d054be02568bc0917d6a79764e1d013ed7599618351bec9659e7fcbdf" [label=""];
  "sha256:1c87465f479386004598f317f02cadeea521d39a193e79f927c83f31d0f6ef8e" -> "sha256:b5d59e3d054be02568bc0917d6a79764e1d013ed7599618351bec9659e7fcbdf" [label=""];
  "sha256:b5d59e3d054be02568bc0917d6a79764e1d013ed7599618351bec9659e7fcbdf" -> "sha256:64d97eb1f1b74887437fbcf4908c88d7d3769eda98672bfcd5b67ad154370866" [label=""];
  "sha256:64d97eb1f1b74887437fbcf4908c88d7d3769eda98672bfcd5b67ad154370866" -> "sha256:30bd7575e39cac9123f0cf9d8f99cd1bf7295a38e04f661053a755cce2e91acf" [label=""];
}

