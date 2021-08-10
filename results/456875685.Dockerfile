[app/sources/456875685.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:f4a20b34e569e842f9f0a1d53f0f539d77a84512c30ac97232ac1938f46cc687" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:3edaf2e7c267f66165a23cc4f5c1bab64bd19a8b98354d5eddcc42f9031ee3d6" [label="local://context" shape="ellipse"];
  "sha256:3d1e7b8fac7ba7fe92162f98e00dcbf024ee7d805c3f0d1bb539a92de68377df" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:53be5d29b75a0b94237c3c55e9f7c60d7dbec47069260b85c3046939226ac627" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:25a2d77c895f4f54a44b7fd60e4e5740dcbb34387ab01747577ada255bd66397" [label="/bin/sh -c cp -a /tmp/node_modules /usr/src/app" shape="box"];
  "sha256:21af883c9f0a0cafe41a5a6d80a0e9da66b85dccbc91274cb40aa1bc9919e30a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5fe126b8d0f842681e9e3c1702f4f1e775fa43f7e6de9802edd318028a2c7909" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:9fca7ef3d9fcde7d7a4cdde864136b7b4232c3bc4d34d7200a384d8dcfd05f36" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f62b0a12a1e0ae8eccefd26970f8af031d647f9c4b04125b0ba2f69090ec39e7" [label="sha256:f62b0a12a1e0ae8eccefd26970f8af031d647f9c4b04125b0ba2f69090ec39e7" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:f4a20b34e569e842f9f0a1d53f0f539d77a84512c30ac97232ac1938f46cc687" [label=""];
  "sha256:f4a20b34e569e842f9f0a1d53f0f539d77a84512c30ac97232ac1938f46cc687" -> "sha256:3d1e7b8fac7ba7fe92162f98e00dcbf024ee7d805c3f0d1bb539a92de68377df" [label=""];
  "sha256:3edaf2e7c267f66165a23cc4f5c1bab64bd19a8b98354d5eddcc42f9031ee3d6" -> "sha256:3d1e7b8fac7ba7fe92162f98e00dcbf024ee7d805c3f0d1bb539a92de68377df" [label=""];
  "sha256:3d1e7b8fac7ba7fe92162f98e00dcbf024ee7d805c3f0d1bb539a92de68377df" -> "sha256:53be5d29b75a0b94237c3c55e9f7c60d7dbec47069260b85c3046939226ac627" [label=""];
  "sha256:53be5d29b75a0b94237c3c55e9f7c60d7dbec47069260b85c3046939226ac627" -> "sha256:25a2d77c895f4f54a44b7fd60e4e5740dcbb34387ab01747577ada255bd66397" [label=""];
  "sha256:25a2d77c895f4f54a44b7fd60e4e5740dcbb34387ab01747577ada255bd66397" -> "sha256:21af883c9f0a0cafe41a5a6d80a0e9da66b85dccbc91274cb40aa1bc9919e30a" [label=""];
  "sha256:21af883c9f0a0cafe41a5a6d80a0e9da66b85dccbc91274cb40aa1bc9919e30a" -> "sha256:5fe126b8d0f842681e9e3c1702f4f1e775fa43f7e6de9802edd318028a2c7909" [label=""];
  "sha256:3edaf2e7c267f66165a23cc4f5c1bab64bd19a8b98354d5eddcc42f9031ee3d6" -> "sha256:5fe126b8d0f842681e9e3c1702f4f1e775fa43f7e6de9802edd318028a2c7909" [label=""];
  "sha256:5fe126b8d0f842681e9e3c1702f4f1e775fa43f7e6de9802edd318028a2c7909" -> "sha256:9fca7ef3d9fcde7d7a4cdde864136b7b4232c3bc4d34d7200a384d8dcfd05f36" [label=""];
  "sha256:9fca7ef3d9fcde7d7a4cdde864136b7b4232c3bc4d34d7200a384d8dcfd05f36" -> "sha256:f62b0a12a1e0ae8eccefd26970f8af031d647f9c4b04125b0ba2f69090ec39e7" [label=""];
}

