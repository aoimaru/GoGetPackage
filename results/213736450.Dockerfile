[app/sources/213736450.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:3aee985497aaae2ead3a4a524116906f56c7746f2f2f7e0e0ef28de6d7ddd0ed" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_1.x/pool/main/i/iojs/iojs_1.8.4-1nodesource1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:4827e833ace0fe0247370a94d4561a74be4b2cd8dd9c6b1eae450059b0740f1f" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:a606fc8d8f938f46d041d1dfeeae7414ffdce819f7db2f9c6944639875e5f748" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:94b4cde677ab1c548f4890e165638bfac8175b53a93f4807a11cd6d4763cbfb0" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:2b6e0b9e220f7e8d90c0ef92ec220a03de92c63c687bf7c9ddc50d581336cc46" [label="sha256:2b6e0b9e220f7e8d90c0ef92ec220a03de92c63c687bf7c9ddc50d581336cc46" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:3aee985497aaae2ead3a4a524116906f56c7746f2f2f7e0e0ef28de6d7ddd0ed" [label=""];
  "sha256:3aee985497aaae2ead3a4a524116906f56c7746f2f2f7e0e0ef28de6d7ddd0ed" -> "sha256:4827e833ace0fe0247370a94d4561a74be4b2cd8dd9c6b1eae450059b0740f1f" [label=""];
  "sha256:4827e833ace0fe0247370a94d4561a74be4b2cd8dd9c6b1eae450059b0740f1f" -> "sha256:a606fc8d8f938f46d041d1dfeeae7414ffdce819f7db2f9c6944639875e5f748" [label=""];
  "sha256:a606fc8d8f938f46d041d1dfeeae7414ffdce819f7db2f9c6944639875e5f748" -> "sha256:94b4cde677ab1c548f4890e165638bfac8175b53a93f4807a11cd6d4763cbfb0" [label=""];
  "sha256:94b4cde677ab1c548f4890e165638bfac8175b53a93f4807a11cd6d4763cbfb0" -> "sha256:2b6e0b9e220f7e8d90c0ef92ec220a03de92c63c687bf7c9ddc50d581336cc46" [label=""];
}

