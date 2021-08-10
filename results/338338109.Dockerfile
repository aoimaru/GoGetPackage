[app/sources/338338109.Dockerfile]
digraph {
  "sha256:695d78220425bfc7aae5f3c00859f2c2ce5349e1fcb8d13ed151ceeb266837c4" [label="local://context" shape="ellipse"];
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" [label="docker-image://docker.io/library/debian:stretch@sha256:06f9296409de8cfecaff43aaee6d608ed48a95c0cac0da2a418ff526acedf67b" shape="ellipse"];
  "sha256:195f8b5b956a8495460ee488ed2f6e1d8b952a4a48b76f86e3a82af935e53c87" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update &&     apt-get install -y curl unzip git build-essential git jq &&     curl -sL https://deb.nodesource.com/setup_9.x | bash - &&     apt-get install -y nodejs" shape="box"];
  "sha256:a9cf0e4c791c00309b241ef0f65c89a46b66fb8c7209403bc3dbd2363644a545" [label="mkdir{path=/app}" shape="note"];
  "sha256:856b6dcb18d178d9f483452b30f8470db7d0fa46ffab03240553ede8994fce9b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:870bcad498aaad90328f15a5cbbd77e532e06e34f266bff0d910f4f85504acb9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6f0436163ad48bf6b8ecd2498142a33124e38be51c71ae4dceccfa966d521353" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:ddaf0a553cb894af49aceffdeba5d24e7646ec91aa0245a8aa6c758d9425ebc7" [label="sha256:ddaf0a553cb894af49aceffdeba5d24e7646ec91aa0245a8aa6c758d9425ebc7" shape="plaintext"];
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" -> "sha256:195f8b5b956a8495460ee488ed2f6e1d8b952a4a48b76f86e3a82af935e53c87" [label=""];
  "sha256:195f8b5b956a8495460ee488ed2f6e1d8b952a4a48b76f86e3a82af935e53c87" -> "sha256:a9cf0e4c791c00309b241ef0f65c89a46b66fb8c7209403bc3dbd2363644a545" [label=""];
  "sha256:a9cf0e4c791c00309b241ef0f65c89a46b66fb8c7209403bc3dbd2363644a545" -> "sha256:856b6dcb18d178d9f483452b30f8470db7d0fa46ffab03240553ede8994fce9b" [label=""];
  "sha256:695d78220425bfc7aae5f3c00859f2c2ce5349e1fcb8d13ed151ceeb266837c4" -> "sha256:856b6dcb18d178d9f483452b30f8470db7d0fa46ffab03240553ede8994fce9b" [label=""];
  "sha256:856b6dcb18d178d9f483452b30f8470db7d0fa46ffab03240553ede8994fce9b" -> "sha256:870bcad498aaad90328f15a5cbbd77e532e06e34f266bff0d910f4f85504acb9" [label=""];
  "sha256:870bcad498aaad90328f15a5cbbd77e532e06e34f266bff0d910f4f85504acb9" -> "sha256:6f0436163ad48bf6b8ecd2498142a33124e38be51c71ae4dceccfa966d521353" [label=""];
  "sha256:695d78220425bfc7aae5f3c00859f2c2ce5349e1fcb8d13ed151ceeb266837c4" -> "sha256:6f0436163ad48bf6b8ecd2498142a33124e38be51c71ae4dceccfa966d521353" [label=""];
  "sha256:6f0436163ad48bf6b8ecd2498142a33124e38be51c71ae4dceccfa966d521353" -> "sha256:ddaf0a553cb894af49aceffdeba5d24e7646ec91aa0245a8aa6c758d9425ebc7" [label=""];
}

