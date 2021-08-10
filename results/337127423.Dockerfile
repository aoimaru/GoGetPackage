[app/sources/337127423.Dockerfile]
digraph {
  "sha256:6468fc053853857ceb9fc4842bacffe13c118ddb665aeebb6cfe968960790299" [label="docker-image://docker.io/openrasp/java7:latest" shape="ellipse"];
  "sha256:518094db880f3cc5b7dcc686821992127d10bb3e870258788fbe6ade779fce48" [label="/bin/sh -c curl \"$resin_url\" -o package.zip \t&& unzip -qq package.zip \t&& rm -f package.zip \t&& mv resin-4*/ /resin/" shape="box"];
  "sha256:3f12f31e74065828e3cb2b3ef3fd4fde0275a0dc5a3f1ae2f1b0eb9fef131913" [label="local://context" shape="ellipse"];
  "sha256:ad5dbfd4660ef06131341de91a473750d14710deef1a890296c2a26d4e60b810" [label="copy{src=/start.sh, dest=/root/}" shape="note"];
  "sha256:78f44f12cf0f7ddd1e9205795fc4321cc73a25133afb58160a2760b92c0ffa96" [label="copy{src=/resin.conf, dest=/resin/conf/resin.conf}" shape="note"];
  "sha256:2a1eb04a1c06af6860db85d7550159aefc6160b73207c3a772f8e2a800ab0733" [label="sha256:2a1eb04a1c06af6860db85d7550159aefc6160b73207c3a772f8e2a800ab0733" shape="plaintext"];
  "sha256:6468fc053853857ceb9fc4842bacffe13c118ddb665aeebb6cfe968960790299" -> "sha256:518094db880f3cc5b7dcc686821992127d10bb3e870258788fbe6ade779fce48" [label=""];
  "sha256:518094db880f3cc5b7dcc686821992127d10bb3e870258788fbe6ade779fce48" -> "sha256:ad5dbfd4660ef06131341de91a473750d14710deef1a890296c2a26d4e60b810" [label=""];
  "sha256:3f12f31e74065828e3cb2b3ef3fd4fde0275a0dc5a3f1ae2f1b0eb9fef131913" -> "sha256:ad5dbfd4660ef06131341de91a473750d14710deef1a890296c2a26d4e60b810" [label=""];
  "sha256:ad5dbfd4660ef06131341de91a473750d14710deef1a890296c2a26d4e60b810" -> "sha256:78f44f12cf0f7ddd1e9205795fc4321cc73a25133afb58160a2760b92c0ffa96" [label=""];
  "sha256:3f12f31e74065828e3cb2b3ef3fd4fde0275a0dc5a3f1ae2f1b0eb9fef131913" -> "sha256:78f44f12cf0f7ddd1e9205795fc4321cc73a25133afb58160a2760b92c0ffa96" [label=""];
  "sha256:78f44f12cf0f7ddd1e9205795fc4321cc73a25133afb58160a2760b92c0ffa96" -> "sha256:2a1eb04a1c06af6860db85d7550159aefc6160b73207c3a772f8e2a800ab0733" [label=""];
}

