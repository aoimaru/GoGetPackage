[app/sources/135919151.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:08f0bd968928b90024f15f8b5faaebba751829b5dda334877fd4f98f1fb0af53" [label="/bin/sh -c apt-get update       && apt-get install -y --no-install-recommends         zsh        make        git        ca-certificates         curl         locales        python        gawk        vim        less        emacs      && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f567ce494c8d1fecda3288a4b1ffaa9444ad4eafdd626f33d2a7209b4887e884" [label="/bin/sh -c locale-gen en_US.UTF-8 &&  update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:3ca382f5cbe4942c97b463f3b07fbf0b4722bddc7386e05256f3a3197325d990" [label="local://context" shape="ellipse"];
  "sha256:c442bdd059e170a5ea0b10f41a575d18b997d41fcf494c1ce52cd954f19bce89" [label="copy{src=/, dest=/root/dotfiles}" shape="note"];
  "sha256:7298ebc15725af784649f60b7be50a6723444ac76ea046752ebda7763fae806f" [label="mkdir{path=/root/dotfiles}" shape="note"];
  "sha256:25219e96840077f65f74bddbbf47033f96ede5b8f1293e4dfd65138909788237" [label="/bin/sh -c make -j emacs" shape="box"];
  "sha256:94704a596aa48f3dbae23795ae52469268a2f76deb1caab2c5a5219412bf5fcf" [label="sha256:94704a596aa48f3dbae23795ae52469268a2f76deb1caab2c5a5219412bf5fcf" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:08f0bd968928b90024f15f8b5faaebba751829b5dda334877fd4f98f1fb0af53" [label=""];
  "sha256:08f0bd968928b90024f15f8b5faaebba751829b5dda334877fd4f98f1fb0af53" -> "sha256:f567ce494c8d1fecda3288a4b1ffaa9444ad4eafdd626f33d2a7209b4887e884" [label=""];
  "sha256:f567ce494c8d1fecda3288a4b1ffaa9444ad4eafdd626f33d2a7209b4887e884" -> "sha256:c442bdd059e170a5ea0b10f41a575d18b997d41fcf494c1ce52cd954f19bce89" [label=""];
  "sha256:3ca382f5cbe4942c97b463f3b07fbf0b4722bddc7386e05256f3a3197325d990" -> "sha256:c442bdd059e170a5ea0b10f41a575d18b997d41fcf494c1ce52cd954f19bce89" [label=""];
  "sha256:c442bdd059e170a5ea0b10f41a575d18b997d41fcf494c1ce52cd954f19bce89" -> "sha256:7298ebc15725af784649f60b7be50a6723444ac76ea046752ebda7763fae806f" [label=""];
  "sha256:7298ebc15725af784649f60b7be50a6723444ac76ea046752ebda7763fae806f" -> "sha256:25219e96840077f65f74bddbbf47033f96ede5b8f1293e4dfd65138909788237" [label=""];
  "sha256:25219e96840077f65f74bddbbf47033f96ede5b8f1293e4dfd65138909788237" -> "sha256:94704a596aa48f3dbae23795ae52469268a2f76deb1caab2c5a5219412bf5fcf" [label=""];
}

