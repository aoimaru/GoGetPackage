[app/sources/354587001.Dockerfile]
digraph {
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" [label="docker-image://docker.io/library/python:3.5-alpine" shape="ellipse"];
  "sha256:7e2a7ba4f82d635126988146c91a48458146ac58fcd6aab8908e3a3cbb8debf3" [label="/bin/sh -c apk add --no-cache build-base zeromq-dev" shape="box"];
  "sha256:47d562c65f1e4de967a866d4992ed61c276c591e539ca30b4e250eba6b1a23d3" [label="/bin/sh -c python -m pip --quiet --no-cache-dir install         ipyparallel         numpy         pandas         pymongo         redis         requests         bs4" shape="box"];
  "sha256:b57b6060431c770447b761e804de0b1815e307810d2db8b9b8ddf769e1999b22" [label="/bin/sh -c ipython profile create --parallel --profile=default" shape="box"];
  "sha256:26fccd9fcfb863a1d754486b5b6397f1d106cd3136ec1b2ea99c01a5df3e349e" [label="local://context" shape="ellipse"];
  "sha256:dd821db9bb9c02b71d91aa16de0472daa4243333664f20c5f367198ecc0a4af9" [label="copy{src=/ipcontroller-client.json, dest=/root/.ipython/profile_default/security/ipcontroller-client.json}" shape="note"];
  "sha256:10f817268fdaafe4a18ed99f761e5de40500dacdf027afae21461c1732629317" [label="copy{src=/ipcontroller-engine.json, dest=/root/.ipython/profile_default/security/ipcontroller-engine.json}" shape="note"];
  "sha256:1d3cb2a72bc72e513e648ae90d8b899af910c3d050b2e4de187b333c0c963f7e" [label="sha256:1d3cb2a72bc72e513e648ae90d8b899af910c3d050b2e4de187b333c0c963f7e" shape="plaintext"];
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" -> "sha256:7e2a7ba4f82d635126988146c91a48458146ac58fcd6aab8908e3a3cbb8debf3" [label=""];
  "sha256:7e2a7ba4f82d635126988146c91a48458146ac58fcd6aab8908e3a3cbb8debf3" -> "sha256:47d562c65f1e4de967a866d4992ed61c276c591e539ca30b4e250eba6b1a23d3" [label=""];
  "sha256:47d562c65f1e4de967a866d4992ed61c276c591e539ca30b4e250eba6b1a23d3" -> "sha256:b57b6060431c770447b761e804de0b1815e307810d2db8b9b8ddf769e1999b22" [label=""];
  "sha256:b57b6060431c770447b761e804de0b1815e307810d2db8b9b8ddf769e1999b22" -> "sha256:dd821db9bb9c02b71d91aa16de0472daa4243333664f20c5f367198ecc0a4af9" [label=""];
  "sha256:26fccd9fcfb863a1d754486b5b6397f1d106cd3136ec1b2ea99c01a5df3e349e" -> "sha256:dd821db9bb9c02b71d91aa16de0472daa4243333664f20c5f367198ecc0a4af9" [label=""];
  "sha256:dd821db9bb9c02b71d91aa16de0472daa4243333664f20c5f367198ecc0a4af9" -> "sha256:10f817268fdaafe4a18ed99f761e5de40500dacdf027afae21461c1732629317" [label=""];
  "sha256:26fccd9fcfb863a1d754486b5b6397f1d106cd3136ec1b2ea99c01a5df3e349e" -> "sha256:10f817268fdaafe4a18ed99f761e5de40500dacdf027afae21461c1732629317" [label=""];
  "sha256:10f817268fdaafe4a18ed99f761e5de40500dacdf027afae21461c1732629317" -> "sha256:1d3cb2a72bc72e513e648ae90d8b899af910c3d050b2e4de187b333c0c963f7e" [label=""];
}

