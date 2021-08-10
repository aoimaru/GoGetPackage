[app/sources/252776835.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:a8cd402e6374923de86e7f6e663f0fadc0b6b6f3f510057f30ef7c8857c42dc9" [label="/bin/sh -c yum install -y git && yum clean all && mkdir -p /git" shape="box"];
  "sha256:d10c2bb2a0cd2a960d2ed2ae110d80a98f44694c8350494024eab2e03c8924d2" [label="local://context" shape="ellipse"];
  "sha256:bf12ff0e06034fd019d5e35bc6d9dc531986141d72927f991544b39b9e0ddcb8" [label="copy{src=/default-hooks, dest=/git/default-hooks}" shape="note"];
  "sha256:62d6c776d71b593cc223f6d2272e2d0bb3b839693d640fbf3c709f602a13f25a" [label="copy{src=/init, dest=/git/init}" shape="note"];
  "sha256:30953fe708842b9c1e318aa61b078e49c89d4fff3f6ba9a0eb210704840e6bb0" [label="copy{src=/init-repo, dest=/git/init-repo}" shape="note"];
  "sha256:afdab94a8cd97a4d74353bd9afa40e835bd76a5fe0272c0aa4d674e2a062f611" [label="/bin/sh -c rm -f /etc/passwd && ln -sf /host_etc/passwd /etc/passwd" shape="box"];
  "sha256:b946f7200b2079fa7e0f6573d973ac5596861524326d4496919be258a30b5904" [label="sha256:b946f7200b2079fa7e0f6573d973ac5596861524326d4496919be258a30b5904" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:a8cd402e6374923de86e7f6e663f0fadc0b6b6f3f510057f30ef7c8857c42dc9" [label=""];
  "sha256:a8cd402e6374923de86e7f6e663f0fadc0b6b6f3f510057f30ef7c8857c42dc9" -> "sha256:bf12ff0e06034fd019d5e35bc6d9dc531986141d72927f991544b39b9e0ddcb8" [label=""];
  "sha256:d10c2bb2a0cd2a960d2ed2ae110d80a98f44694c8350494024eab2e03c8924d2" -> "sha256:bf12ff0e06034fd019d5e35bc6d9dc531986141d72927f991544b39b9e0ddcb8" [label=""];
  "sha256:bf12ff0e06034fd019d5e35bc6d9dc531986141d72927f991544b39b9e0ddcb8" -> "sha256:62d6c776d71b593cc223f6d2272e2d0bb3b839693d640fbf3c709f602a13f25a" [label=""];
  "sha256:d10c2bb2a0cd2a960d2ed2ae110d80a98f44694c8350494024eab2e03c8924d2" -> "sha256:62d6c776d71b593cc223f6d2272e2d0bb3b839693d640fbf3c709f602a13f25a" [label=""];
  "sha256:62d6c776d71b593cc223f6d2272e2d0bb3b839693d640fbf3c709f602a13f25a" -> "sha256:30953fe708842b9c1e318aa61b078e49c89d4fff3f6ba9a0eb210704840e6bb0" [label=""];
  "sha256:d10c2bb2a0cd2a960d2ed2ae110d80a98f44694c8350494024eab2e03c8924d2" -> "sha256:30953fe708842b9c1e318aa61b078e49c89d4fff3f6ba9a0eb210704840e6bb0" [label=""];
  "sha256:30953fe708842b9c1e318aa61b078e49c89d4fff3f6ba9a0eb210704840e6bb0" -> "sha256:afdab94a8cd97a4d74353bd9afa40e835bd76a5fe0272c0aa4d674e2a062f611" [label=""];
  "sha256:afdab94a8cd97a4d74353bd9afa40e835bd76a5fe0272c0aa4d674e2a062f611" -> "sha256:b946f7200b2079fa7e0f6573d973ac5596861524326d4496919be258a30b5904" [label=""];
}

