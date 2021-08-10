[app/sources/386246518.Dockerfile]
digraph {
  "sha256:0f4533d54087ecd8d985b2a3fedb5f46930a3c29dc4b6e2098a5e46bee2807d2" [label="docker-image://docker.io/lesfurets/octopus-tests:simple_merge_latest" shape="ellipse"];
  "sha256:1922b0b19ff5452a86d7f29824c1dc7f65afe18e85b2db6b849443be71bf33f1" [label="local://context" shape="ellipse"];
  "sha256:dbf2a9b963f8821bb0630daa8c61a13c2deb6b2b1797aea71a3e162260a299f0" [label="copy{src=/test.sh, dest=/home/}" shape="note"];
  "sha256:0d9630ae307c1d5cf93a25751dc3b316f15aacdf6bb578998066507859124a51" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:d0fe0544d397fdf260b57dbffd19f7865baa330c45de37de83e617f094fdab4a" [label="/bin/sh -c chmod +x /home/test.sh" shape="box"];
  "sha256:21ddd878245cf74023e5977a93f09eba9606a2b4b5be73a7fba39c5140324fc9" [label="mkdir{path=/home/octopus-tests}" shape="note"];
  "sha256:e10eb037f81cca73b2411d9b31615698f89278325932394c1068d4cffef1d371" [label="sha256:e10eb037f81cca73b2411d9b31615698f89278325932394c1068d4cffef1d371" shape="plaintext"];
  "sha256:0f4533d54087ecd8d985b2a3fedb5f46930a3c29dc4b6e2098a5e46bee2807d2" -> "sha256:dbf2a9b963f8821bb0630daa8c61a13c2deb6b2b1797aea71a3e162260a299f0" [label=""];
  "sha256:1922b0b19ff5452a86d7f29824c1dc7f65afe18e85b2db6b849443be71bf33f1" -> "sha256:dbf2a9b963f8821bb0630daa8c61a13c2deb6b2b1797aea71a3e162260a299f0" [label=""];
  "sha256:dbf2a9b963f8821bb0630daa8c61a13c2deb6b2b1797aea71a3e162260a299f0" -> "sha256:0d9630ae307c1d5cf93a25751dc3b316f15aacdf6bb578998066507859124a51" [label=""];
  "sha256:1922b0b19ff5452a86d7f29824c1dc7f65afe18e85b2db6b849443be71bf33f1" -> "sha256:0d9630ae307c1d5cf93a25751dc3b316f15aacdf6bb578998066507859124a51" [label=""];
  "sha256:0d9630ae307c1d5cf93a25751dc3b316f15aacdf6bb578998066507859124a51" -> "sha256:d0fe0544d397fdf260b57dbffd19f7865baa330c45de37de83e617f094fdab4a" [label=""];
  "sha256:d0fe0544d397fdf260b57dbffd19f7865baa330c45de37de83e617f094fdab4a" -> "sha256:21ddd878245cf74023e5977a93f09eba9606a2b4b5be73a7fba39c5140324fc9" [label=""];
  "sha256:21ddd878245cf74023e5977a93f09eba9606a2b4b5be73a7fba39c5140324fc9" -> "sha256:e10eb037f81cca73b2411d9b31615698f89278325932394c1068d4cffef1d371" [label=""];
}

