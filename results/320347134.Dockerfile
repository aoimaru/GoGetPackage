[app/sources/320347134.Dockerfile]
digraph {
  "sha256:6658579c03a4801b27b3b2a38c8a6960c18631612f291d0c817c39b2b30b47fb" [label="docker-image://registry.cn-hangzhou.aliyuncs.com/littleseven/bigdata@sha256:aac66c54ddcf99d3dcd40d8ce99e2f6572140695f0e790c12f69eb188a0d8ba5" shape="ellipse"];
  "sha256:134cc4630f40e043c9b77c075ec6f37175b4223ed46d369f8daa93daa9784d8e" [label="local://context" shape="ellipse"];
  "sha256:92022fb6e4841e01a67291448362f8fc0505a62c3f657d13fc7c7c2eca7c60e2" [label="copy{src=/example-pro/Pipfile, dest=/usr/project/Pipfile}" shape="note"];
  "sha256:2d6628ab0caa13c58a8398f02e302162576ff655dea4bb9a5a2388eccab3399f" [label="copy{src=/example-pro/Pipfile.lock, dest=/usr/project/Pipfile.lock}" shape="note"];
  "sha256:f7f4d23d9267c31cb2e65280c997f736f2c379d0970d2b39ffcc8480fe3ed392" [label="copy{src=/example-pro/developy/supervisor.conf, dest=/usr/supervisord.conf}" shape="note"];
  "sha256:fc8f91f5c9801edcc6f9206c142b18e36c2e71dc94ef34b3149df3c873f8a18a" [label="copy{src=/example-pro/developy/bigdata, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:064c08d7f6596221e7a87aed5c046cafd555abcaf3ec7023913cd3ba7de2594e" [label="/bin/sh -c adduser -s -S -D jiandan" shape="box"];
  "sha256:aac997dd54344be2532642a54dadd237cd9cec670b7983a54bdf2c747ad86d3b" [label="mkdir{path=/usr/project}" shape="note"];
  "sha256:9d578714415c52ff125da1297864ac901ab068ee3ceb939b205a7e4c4dccc0b9" [label="/bin/sh -c pipenv install --system     && pip install flask-wtf" shape="box"];
  "sha256:23085a925094fb20fb621849a20c6334c24f24dd2da356655b86e85240f112a2" [label="sha256:23085a925094fb20fb621849a20c6334c24f24dd2da356655b86e85240f112a2" shape="plaintext"];
  "sha256:6658579c03a4801b27b3b2a38c8a6960c18631612f291d0c817c39b2b30b47fb" -> "sha256:92022fb6e4841e01a67291448362f8fc0505a62c3f657d13fc7c7c2eca7c60e2" [label=""];
  "sha256:134cc4630f40e043c9b77c075ec6f37175b4223ed46d369f8daa93daa9784d8e" -> "sha256:92022fb6e4841e01a67291448362f8fc0505a62c3f657d13fc7c7c2eca7c60e2" [label=""];
  "sha256:92022fb6e4841e01a67291448362f8fc0505a62c3f657d13fc7c7c2eca7c60e2" -> "sha256:2d6628ab0caa13c58a8398f02e302162576ff655dea4bb9a5a2388eccab3399f" [label=""];
  "sha256:134cc4630f40e043c9b77c075ec6f37175b4223ed46d369f8daa93daa9784d8e" -> "sha256:2d6628ab0caa13c58a8398f02e302162576ff655dea4bb9a5a2388eccab3399f" [label=""];
  "sha256:2d6628ab0caa13c58a8398f02e302162576ff655dea4bb9a5a2388eccab3399f" -> "sha256:f7f4d23d9267c31cb2e65280c997f736f2c379d0970d2b39ffcc8480fe3ed392" [label=""];
  "sha256:134cc4630f40e043c9b77c075ec6f37175b4223ed46d369f8daa93daa9784d8e" -> "sha256:f7f4d23d9267c31cb2e65280c997f736f2c379d0970d2b39ffcc8480fe3ed392" [label=""];
  "sha256:f7f4d23d9267c31cb2e65280c997f736f2c379d0970d2b39ffcc8480fe3ed392" -> "sha256:fc8f91f5c9801edcc6f9206c142b18e36c2e71dc94ef34b3149df3c873f8a18a" [label=""];
  "sha256:134cc4630f40e043c9b77c075ec6f37175b4223ed46d369f8daa93daa9784d8e" -> "sha256:fc8f91f5c9801edcc6f9206c142b18e36c2e71dc94ef34b3149df3c873f8a18a" [label=""];
  "sha256:fc8f91f5c9801edcc6f9206c142b18e36c2e71dc94ef34b3149df3c873f8a18a" -> "sha256:064c08d7f6596221e7a87aed5c046cafd555abcaf3ec7023913cd3ba7de2594e" [label=""];
  "sha256:064c08d7f6596221e7a87aed5c046cafd555abcaf3ec7023913cd3ba7de2594e" -> "sha256:aac997dd54344be2532642a54dadd237cd9cec670b7983a54bdf2c747ad86d3b" [label=""];
  "sha256:aac997dd54344be2532642a54dadd237cd9cec670b7983a54bdf2c747ad86d3b" -> "sha256:9d578714415c52ff125da1297864ac901ab068ee3ceb939b205a7e4c4dccc0b9" [label=""];
  "sha256:9d578714415c52ff125da1297864ac901ab068ee3ceb939b205a7e4c4dccc0b9" -> "sha256:23085a925094fb20fb621849a20c6334c24f24dd2da356655b86e85240f112a2" [label=""];
}

