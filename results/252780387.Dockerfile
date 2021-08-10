[app/sources/252780387.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:2b69c4158a27d6f3ce57d37769069dd9d686098be312f94e22d4b1cafa3d2b6e" [label="/bin/sh -c apt-get update && apt-get install -y ruby-compass && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cdf9360571b8b7be41cba82e0a55ac099a855be9d2b8af2925acc8108f5d4626" [label="/bin/sh -c cd /tmp && wget http://nodejs.org/dist/node-latest.tar.gz && tar xvzf node-latest.tar.gz && rm -f node-latest.tar.gz && cd node-v* && ./configure && CXX=\"g++ -Wno-unused-local-typedefs\" make && CXX=\"g++ -Wno-unused-local-typedefs\" make install && cd /tmp && rm -rf /tmp/node-v* && npm install -g npm && printf '\\n# Node.js\\nexport PATH=\"node_modules/.bin:$PATH\"' >> /root/.bashrc" shape="box"];
  "sha256:8c6e425f3ef29b13df24ca2abbc9a8bdec9e526f3b4c94246f9ae01fb2d3131d" [label="/bin/sh -c npm install -g grunt-cli" shape="box"];
  "sha256:f26882ed9f87622bc599830ccdc53a4e8f64d4d216ece6fbc109b94864c0ab0a" [label="sha256:f26882ed9f87622bc599830ccdc53a4e8f64d4d216ece6fbc109b94864c0ab0a" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:2b69c4158a27d6f3ce57d37769069dd9d686098be312f94e22d4b1cafa3d2b6e" [label=""];
  "sha256:2b69c4158a27d6f3ce57d37769069dd9d686098be312f94e22d4b1cafa3d2b6e" -> "sha256:cdf9360571b8b7be41cba82e0a55ac099a855be9d2b8af2925acc8108f5d4626" [label=""];
  "sha256:cdf9360571b8b7be41cba82e0a55ac099a855be9d2b8af2925acc8108f5d4626" -> "sha256:8c6e425f3ef29b13df24ca2abbc9a8bdec9e526f3b4c94246f9ae01fb2d3131d" [label=""];
  "sha256:8c6e425f3ef29b13df24ca2abbc9a8bdec9e526f3b4c94246f9ae01fb2d3131d" -> "sha256:f26882ed9f87622bc599830ccdc53a4e8f64d4d216ece6fbc109b94864c0ab0a" [label=""];
}

