[app/sources/252791337.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:913667267069448fe9802ad73201af3a65b5811abd4b86b65a3053759e92c4be" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common" shape="box"];
  "sha256:5566754931bc53ff349731acd8d89ca127296d19e73bdd885a4f5ccaf9d78b6f" [label="/bin/sh -c apt-add-repository -y ppa:mc3man/trusty-media && apt-get update" shape="box"];
  "sha256:262f72af77673616fbfdc27eaceb9eb368be3304ecf912648634aaddf3ee7fff" [label="/bin/sh -c apt-get install -y git mercurial xvfb xfonts-base xfonts-75dpi xfonts-100dpi xfonts-cyrillic gource screen ffmpeg" shape="box"];
  "sha256:22f37855677eeb78cb3c0899a9b36c42368c7c63207f1f2b00b32e93969c5388" [label="local://context" shape="ellipse"];
  "sha256:a7334a8e34e05f3cced4e5e82763ebc67c9a26972a13b8bbd3babdf976767439" [label="copy{src=/init.sh, dest=/tmp/init.sh}" shape="note"];
  "sha256:433241005d6f152c3878bd3a62a249078a7ede1fb6b37e4fa303a62b91de6520" [label="mkdir{path=/repoRoot}" shape="note"];
  "sha256:2550a3ad1ecfa1f2798e2549c58a404a92508567fbc7f17f5d9ba3fdd9df90ee" [label="sha256:2550a3ad1ecfa1f2798e2549c58a404a92508567fbc7f17f5d9ba3fdd9df90ee" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:913667267069448fe9802ad73201af3a65b5811abd4b86b65a3053759e92c4be" [label=""];
  "sha256:913667267069448fe9802ad73201af3a65b5811abd4b86b65a3053759e92c4be" -> "sha256:5566754931bc53ff349731acd8d89ca127296d19e73bdd885a4f5ccaf9d78b6f" [label=""];
  "sha256:5566754931bc53ff349731acd8d89ca127296d19e73bdd885a4f5ccaf9d78b6f" -> "sha256:262f72af77673616fbfdc27eaceb9eb368be3304ecf912648634aaddf3ee7fff" [label=""];
  "sha256:262f72af77673616fbfdc27eaceb9eb368be3304ecf912648634aaddf3ee7fff" -> "sha256:a7334a8e34e05f3cced4e5e82763ebc67c9a26972a13b8bbd3babdf976767439" [label=""];
  "sha256:22f37855677eeb78cb3c0899a9b36c42368c7c63207f1f2b00b32e93969c5388" -> "sha256:a7334a8e34e05f3cced4e5e82763ebc67c9a26972a13b8bbd3babdf976767439" [label=""];
  "sha256:a7334a8e34e05f3cced4e5e82763ebc67c9a26972a13b8bbd3babdf976767439" -> "sha256:433241005d6f152c3878bd3a62a249078a7ede1fb6b37e4fa303a62b91de6520" [label=""];
  "sha256:433241005d6f152c3878bd3a62a249078a7ede1fb6b37e4fa303a62b91de6520" -> "sha256:2550a3ad1ecfa1f2798e2549c58a404a92508567fbc7f17f5d9ba3fdd9df90ee" [label=""];
}

