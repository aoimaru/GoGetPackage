[app/sources/358730056.Dockerfile]
digraph {
  "sha256:1286a00a7202c5b205055b5bd936b656cb6ae36074879ce8197b605f28ef06d6" [label="docker-image://docker.io/library/openjdk:8u151-jdk" shape="ellipse"];
  "sha256:76aa70b0cbc7d983ef7ef19fa0faaf268ea35070fe91307e3af37634011002ab" [label="/bin/sh -c mkdir --parent /opt/openRoberta/lib" shape="box"];
  "sha256:4b5b561a78d5b8f405fdd7c9fa32ce397601c05863871319cd0473ef8718400d" [label="mkdir{path=/opt/openRoberta}" shape="note"];
  "sha256:410f16288966f991a91e25399b3445e29d3269ac764edd9e21b9a250850cc4e2" [label="local://context" shape="ellipse"];
  "sha256:1cd4f533af1e3770d0b4b2f0401146eb259cadce7cf70dbb7999058ba0d2ede7" [label="copy{src=/startDbServer.sh, dest=/opt/openRoberta/}" shape="note"];
  "sha256:73aff3d20f2779558292bef2107350caf3a0e97c742b5b2e70f1972e0f8124c5" [label="/bin/sh -c chmod +x ./startDbServer.sh" shape="box"];
  "sha256:ef86f56de00193a2b8126b0f2c25874517db41ea2bf66ecd0f62593fe37d912a" [label="copy{src=/*.jar, dest=/opt/openRoberta/lib/}" shape="note"];
  "sha256:3846abc1d6ae569256f427627f56e4037e721296c1c58807b113006f67a82d39" [label="sha256:3846abc1d6ae569256f427627f56e4037e721296c1c58807b113006f67a82d39" shape="plaintext"];
  "sha256:1286a00a7202c5b205055b5bd936b656cb6ae36074879ce8197b605f28ef06d6" -> "sha256:76aa70b0cbc7d983ef7ef19fa0faaf268ea35070fe91307e3af37634011002ab" [label=""];
  "sha256:76aa70b0cbc7d983ef7ef19fa0faaf268ea35070fe91307e3af37634011002ab" -> "sha256:4b5b561a78d5b8f405fdd7c9fa32ce397601c05863871319cd0473ef8718400d" [label=""];
  "sha256:4b5b561a78d5b8f405fdd7c9fa32ce397601c05863871319cd0473ef8718400d" -> "sha256:1cd4f533af1e3770d0b4b2f0401146eb259cadce7cf70dbb7999058ba0d2ede7" [label=""];
  "sha256:410f16288966f991a91e25399b3445e29d3269ac764edd9e21b9a250850cc4e2" -> "sha256:1cd4f533af1e3770d0b4b2f0401146eb259cadce7cf70dbb7999058ba0d2ede7" [label=""];
  "sha256:1cd4f533af1e3770d0b4b2f0401146eb259cadce7cf70dbb7999058ba0d2ede7" -> "sha256:73aff3d20f2779558292bef2107350caf3a0e97c742b5b2e70f1972e0f8124c5" [label=""];
  "sha256:73aff3d20f2779558292bef2107350caf3a0e97c742b5b2e70f1972e0f8124c5" -> "sha256:ef86f56de00193a2b8126b0f2c25874517db41ea2bf66ecd0f62593fe37d912a" [label=""];
  "sha256:410f16288966f991a91e25399b3445e29d3269ac764edd9e21b9a250850cc4e2" -> "sha256:ef86f56de00193a2b8126b0f2c25874517db41ea2bf66ecd0f62593fe37d912a" [label=""];
  "sha256:ef86f56de00193a2b8126b0f2c25874517db41ea2bf66ecd0f62593fe37d912a" -> "sha256:3846abc1d6ae569256f427627f56e4037e721296c1c58807b113006f67a82d39" [label=""];
}

