[app/sources/146163445.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:6a4781d2225e47936748518ed9fbdb47d85eb38b7b485b625c8c1ee2f2b93c0c" [label="local://context" shape="ellipse"];
  "sha256:a584b47e95c85191f64df29eaec019ad705ccf83d442319de4799ee79865aabb" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:2c617cd0e43d0700f7ab2f87d34670153b4219bd430b6b94834dab0ff577514a" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:347f92884247a47c0c6b13067da3da521d82ccb99bad870a195ef121ba2168f0" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:1eedeb1a803132db73fe6beef73561f1575c702af7eca814e616cfdd6ee39d87" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:2bd757b95e16c8e8552efe5aafa87e0a414d86f76e524da28efe8d3c1d0920aa" [label="sha256:2bd757b95e16c8e8552efe5aafa87e0a414d86f76e524da28efe8d3c1d0920aa" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:a584b47e95c85191f64df29eaec019ad705ccf83d442319de4799ee79865aabb" [label=""];
  "sha256:6a4781d2225e47936748518ed9fbdb47d85eb38b7b485b625c8c1ee2f2b93c0c" -> "sha256:a584b47e95c85191f64df29eaec019ad705ccf83d442319de4799ee79865aabb" [label=""];
  "sha256:a584b47e95c85191f64df29eaec019ad705ccf83d442319de4799ee79865aabb" -> "sha256:2c617cd0e43d0700f7ab2f87d34670153b4219bd430b6b94834dab0ff577514a" [label=""];
  "sha256:2c617cd0e43d0700f7ab2f87d34670153b4219bd430b6b94834dab0ff577514a" -> "sha256:347f92884247a47c0c6b13067da3da521d82ccb99bad870a195ef121ba2168f0" [label=""];
  "sha256:347f92884247a47c0c6b13067da3da521d82ccb99bad870a195ef121ba2168f0" -> "sha256:1eedeb1a803132db73fe6beef73561f1575c702af7eca814e616cfdd6ee39d87" [label=""];
  "sha256:6a4781d2225e47936748518ed9fbdb47d85eb38b7b485b625c8c1ee2f2b93c0c" -> "sha256:1eedeb1a803132db73fe6beef73561f1575c702af7eca814e616cfdd6ee39d87" [label=""];
  "sha256:1eedeb1a803132db73fe6beef73561f1575c702af7eca814e616cfdd6ee39d87" -> "sha256:2bd757b95e16c8e8552efe5aafa87e0a414d86f76e524da28efe8d3c1d0920aa" [label=""];
}

