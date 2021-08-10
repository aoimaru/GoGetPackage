[app/sources/473138670.Dockerfile]
digraph {
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" [label="docker-image://docker.io/library/ruby:2.3.3" shape="ellipse"];
  "sha256:3e14a9134709efd2a50d9f2479346082fe16a6ab5c7bc017d9faaf45043876e2" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential" shape="box"];
  "sha256:e1f7a71f5b725528922cb7f36347deac6bae833b0b4e486d801f47ef665627ef" [label="/bin/sh -c apt-get install -y libpq-dev" shape="box"];
  "sha256:90cc57c08bc250d904237029cfc9df592122b60175d470adbff59d7e89ca9010" [label="/bin/sh -c apt-get install -y libxml2-dev libxslt1-dev" shape="box"];
  "sha256:c00ea67495b8d916052a5e0fe77e9297defcacc4cec3796c8ebbf71ed3f302e6" [label="/bin/sh -c apt-get install -y libqt4-webkit libqt4-dev xvfb" shape="box"];
  "sha256:f110751425cf9817f46c042c0a72e62ff6562961c95b9e36a5e968cb2a67a97d" [label="/bin/sh -c apt-get install -y python python-dev python-pip python-virtualenv" shape="box"];
  "sha256:b6b47c22a5f7544c1df7d8826f921a4e66d701c1584829a651615e798a4bd90b" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:565669fc8441504ed7ec78ec8681b605ac19901d952febd41b7e6f59defb3558" [label="/bin/sh -c cd /tmp &&   wget http://nodejs.org/dist/node-latest.tar.gz &&   tar xvzf node-latest.tar.gz &&   rm -f node-latest.tar.gz &&   cd node-v* &&   ./configure &&   CXX=\"g++ -Wno-unused-local-typedefs\" make &&   CXX=\"g++ -Wno-unused-local-typedefs\" make install &&   cd /tmp &&   rm -rf /tmp/node-v* &&   npm install -g npm &&   echo '\\n# Node.js\\nexport PATH=\"node_modules/.bin:$PATH\"' >> /root/.bashrc" shape="box"];
  "sha256:ef9b4fcb727b1a90d27ccc6c8f89ab1f28845514f9c3bfc6e6306424506dada3" [label="mkdir{path=/app}" shape="note"];
  "sha256:26a0c0175449e3b3cab7e850aa90286e76538eda10dba74cb37276aa670e78fc" [label="sha256:26a0c0175449e3b3cab7e850aa90286e76538eda10dba74cb37276aa670e78fc" shape="plaintext"];
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" -> "sha256:3e14a9134709efd2a50d9f2479346082fe16a6ab5c7bc017d9faaf45043876e2" [label=""];
  "sha256:3e14a9134709efd2a50d9f2479346082fe16a6ab5c7bc017d9faaf45043876e2" -> "sha256:e1f7a71f5b725528922cb7f36347deac6bae833b0b4e486d801f47ef665627ef" [label=""];
  "sha256:e1f7a71f5b725528922cb7f36347deac6bae833b0b4e486d801f47ef665627ef" -> "sha256:90cc57c08bc250d904237029cfc9df592122b60175d470adbff59d7e89ca9010" [label=""];
  "sha256:90cc57c08bc250d904237029cfc9df592122b60175d470adbff59d7e89ca9010" -> "sha256:c00ea67495b8d916052a5e0fe77e9297defcacc4cec3796c8ebbf71ed3f302e6" [label=""];
  "sha256:c00ea67495b8d916052a5e0fe77e9297defcacc4cec3796c8ebbf71ed3f302e6" -> "sha256:f110751425cf9817f46c042c0a72e62ff6562961c95b9e36a5e968cb2a67a97d" [label=""];
  "sha256:f110751425cf9817f46c042c0a72e62ff6562961c95b9e36a5e968cb2a67a97d" -> "sha256:b6b47c22a5f7544c1df7d8826f921a4e66d701c1584829a651615e798a4bd90b" [label=""];
  "sha256:b6b47c22a5f7544c1df7d8826f921a4e66d701c1584829a651615e798a4bd90b" -> "sha256:565669fc8441504ed7ec78ec8681b605ac19901d952febd41b7e6f59defb3558" [label=""];
  "sha256:565669fc8441504ed7ec78ec8681b605ac19901d952febd41b7e6f59defb3558" -> "sha256:ef9b4fcb727b1a90d27ccc6c8f89ab1f28845514f9c3bfc6e6306424506dada3" [label=""];
  "sha256:ef9b4fcb727b1a90d27ccc6c8f89ab1f28845514f9c3bfc6e6306424506dada3" -> "sha256:26a0c0175449e3b3cab7e850aa90286e76538eda10dba74cb37276aa670e78fc" [label=""];
}

