[app/sources/146163427.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:529f52efd699452d61a3483ad6274e418a2018b978a0e2b396bdf8a84a51bb0b" [label="local://context" shape="ellipse"];
  "sha256:a8320d3d96ce7cfb4f7649d43fee26bb4eb51477709a748a9713085dc94ad8ca" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:2ff0b3d417449de095611f76376fb24d2715cd2a573a1bfe6312fbe0bbe336e9" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:3df2905f2b2194635fee02d19a4a41ae29de9a2664a7bf368bca12d82a5ebe0f" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:025ad690216c2b8b4ead0ec1e5bd7e62a74fc8841e43fad2e95743b3ac0b45cf" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:1d5456993371429adfd97d685c071e48222760e1656027c0751c493e65d58528" [label="sha256:1d5456993371429adfd97d685c071e48222760e1656027c0751c493e65d58528" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:a8320d3d96ce7cfb4f7649d43fee26bb4eb51477709a748a9713085dc94ad8ca" [label=""];
  "sha256:529f52efd699452d61a3483ad6274e418a2018b978a0e2b396bdf8a84a51bb0b" -> "sha256:a8320d3d96ce7cfb4f7649d43fee26bb4eb51477709a748a9713085dc94ad8ca" [label=""];
  "sha256:a8320d3d96ce7cfb4f7649d43fee26bb4eb51477709a748a9713085dc94ad8ca" -> "sha256:2ff0b3d417449de095611f76376fb24d2715cd2a573a1bfe6312fbe0bbe336e9" [label=""];
  "sha256:2ff0b3d417449de095611f76376fb24d2715cd2a573a1bfe6312fbe0bbe336e9" -> "sha256:3df2905f2b2194635fee02d19a4a41ae29de9a2664a7bf368bca12d82a5ebe0f" [label=""];
  "sha256:3df2905f2b2194635fee02d19a4a41ae29de9a2664a7bf368bca12d82a5ebe0f" -> "sha256:025ad690216c2b8b4ead0ec1e5bd7e62a74fc8841e43fad2e95743b3ac0b45cf" [label=""];
  "sha256:529f52efd699452d61a3483ad6274e418a2018b978a0e2b396bdf8a84a51bb0b" -> "sha256:025ad690216c2b8b4ead0ec1e5bd7e62a74fc8841e43fad2e95743b3ac0b45cf" [label=""];
  "sha256:025ad690216c2b8b4ead0ec1e5bd7e62a74fc8841e43fad2e95743b3ac0b45cf" -> "sha256:1d5456993371429adfd97d685c071e48222760e1656027c0751c493e65d58528" [label=""];
}

