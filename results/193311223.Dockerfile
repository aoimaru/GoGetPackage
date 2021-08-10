[app/sources/193311223.Dockerfile]
digraph {
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" [label="docker-image://docker.io/library/clojure:latest" shape="ellipse"];
  "sha256:c7bf3a7554393584ce70681a1b8bb798209b27609725db3993b13eec8b9d08f0" [label="/bin/sh -c groupadd glot" shape="box"];
  "sha256:c36465553274a5647045fd7dfdbf563aef05fdf13e372ebfb8011e49706aeb39" [label="/bin/sh -c useradd -m -d /home/glot -g glot -s /bin/bash glot" shape="box"];
  "sha256:62227aba55b5a34a6518b06e43dffa9ebe1a7883cb6b5f63dcc7d037f9311ea1" [label="/bin/sh -c ln -s /usr/share/java/leiningen-*-standalone.jar /usr/share/java/clojure.jar" shape="box"];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" [label="https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner" shape="ellipse"];
  "sha256:6fe65848c9c5fac6b7cef969eff000647be838e3c8d2896610e9286c5646c7d4" [label="copy{src=/runner, dest=/home/glot/runner}" shape="note"];
  "sha256:9fa5cd9e8b8ee1eeec8a1607d190185603c05723c8119de2d337292c51c9f56c" [label="/bin/sh -c chmod +x /home/glot/runner" shape="box"];
  "sha256:65dc0115669b7119a6fc5eb4b205b2324f4a3043385e3018576ee6e1cbf70668" [label="mkdir{path=/home/glot}" shape="note"];
  "sha256:b1d27c085886fbd837031bcaafb3ee3438b68f2cf24c787385820f3d702bdbf8" [label="sha256:b1d27c085886fbd837031bcaafb3ee3438b68f2cf24c787385820f3d702bdbf8" shape="plaintext"];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" -> "sha256:c7bf3a7554393584ce70681a1b8bb798209b27609725db3993b13eec8b9d08f0" [label=""];
  "sha256:c7bf3a7554393584ce70681a1b8bb798209b27609725db3993b13eec8b9d08f0" -> "sha256:c36465553274a5647045fd7dfdbf563aef05fdf13e372ebfb8011e49706aeb39" [label=""];
  "sha256:c36465553274a5647045fd7dfdbf563aef05fdf13e372ebfb8011e49706aeb39" -> "sha256:62227aba55b5a34a6518b06e43dffa9ebe1a7883cb6b5f63dcc7d037f9311ea1" [label=""];
  "sha256:62227aba55b5a34a6518b06e43dffa9ebe1a7883cb6b5f63dcc7d037f9311ea1" -> "sha256:6fe65848c9c5fac6b7cef969eff000647be838e3c8d2896610e9286c5646c7d4" [label=""];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" -> "sha256:6fe65848c9c5fac6b7cef969eff000647be838e3c8d2896610e9286c5646c7d4" [label=""];
  "sha256:6fe65848c9c5fac6b7cef969eff000647be838e3c8d2896610e9286c5646c7d4" -> "sha256:9fa5cd9e8b8ee1eeec8a1607d190185603c05723c8119de2d337292c51c9f56c" [label=""];
  "sha256:9fa5cd9e8b8ee1eeec8a1607d190185603c05723c8119de2d337292c51c9f56c" -> "sha256:65dc0115669b7119a6fc5eb4b205b2324f4a3043385e3018576ee6e1cbf70668" [label=""];
  "sha256:65dc0115669b7119a6fc5eb4b205b2324f4a3043385e3018576ee6e1cbf70668" -> "sha256:b1d27c085886fbd837031bcaafb3ee3438b68f2cf24c787385820f3d702bdbf8" [label=""];
}

