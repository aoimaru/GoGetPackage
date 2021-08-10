[app/sources/168183427.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:cbb380f33644aea28645ce9df6c74435e7732dd13937673b565a22718f5cc7c3" [label="local://context" shape="ellipse"];
  "sha256:dda000062c3f34466662e26cefdd49195502c90680be89cceaca0c67f350b294" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:b465bca41c4173a1f78933a29f0420cba2160809b7a94cff16431472fc8728e1" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:d0590f735ff1a7ae41bddaf901896a7b60da5732fd1200532c508a31c5743a46" [label="copy{src=/test_requirements.txt, dest=/tmp/test_requirements.txt}" shape="note"];
  "sha256:758614666da0197eea50d23fa42f488261ef0494767e412b50c23501093e6392" [label="/bin/sh -c pip install -r /tmp/test_requirements.txt" shape="box"];
  "sha256:04e6cb6c8744046defe78b9250f2eb4d3ad62be1a76ccc69214e63c203fda45b" [label="sha256:04e6cb6c8744046defe78b9250f2eb4d3ad62be1a76ccc69214e63c203fda45b" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:dda000062c3f34466662e26cefdd49195502c90680be89cceaca0c67f350b294" [label=""];
  "sha256:cbb380f33644aea28645ce9df6c74435e7732dd13937673b565a22718f5cc7c3" -> "sha256:dda000062c3f34466662e26cefdd49195502c90680be89cceaca0c67f350b294" [label=""];
  "sha256:dda000062c3f34466662e26cefdd49195502c90680be89cceaca0c67f350b294" -> "sha256:b465bca41c4173a1f78933a29f0420cba2160809b7a94cff16431472fc8728e1" [label=""];
  "sha256:b465bca41c4173a1f78933a29f0420cba2160809b7a94cff16431472fc8728e1" -> "sha256:d0590f735ff1a7ae41bddaf901896a7b60da5732fd1200532c508a31c5743a46" [label=""];
  "sha256:cbb380f33644aea28645ce9df6c74435e7732dd13937673b565a22718f5cc7c3" -> "sha256:d0590f735ff1a7ae41bddaf901896a7b60da5732fd1200532c508a31c5743a46" [label=""];
  "sha256:d0590f735ff1a7ae41bddaf901896a7b60da5732fd1200532c508a31c5743a46" -> "sha256:758614666da0197eea50d23fa42f488261ef0494767e412b50c23501093e6392" [label=""];
  "sha256:758614666da0197eea50d23fa42f488261ef0494767e412b50c23501093e6392" -> "sha256:04e6cb6c8744046defe78b9250f2eb4d3ad62be1a76ccc69214e63c203fda45b" [label=""];
}

