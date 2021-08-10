[app/sources/397184019.Dockerfile]
digraph {
  "sha256:270f3becbfb8cf7a1d1f9d0d5188e6c704d66759732f29177b5bdd739e323166" [label="docker-image://registry.fedoraproject.org/fedora:rawhide@sha256:b535178c263c65c0eb8b6f74210b7cfe8ccbc17916eca1c1edb4bc2156b50521" shape="ellipse"];
  "sha256:c6db5e7badee61c8d998e5f80dff2d041fd42419db622e344a80a58d10de3ab6" [label="/bin/sh -c dnf upgrade -y" shape="box"];
  "sha256:1595dff30ac6a01940e6f27d8b9ab2fd6c2111f6864077d3951b39186462038d" [label="/bin/sh -c dnf install --disablerepo rawhide-modular -y     createrepo_c     fedora-messaging     findutils     git     make     python3-alembic     python3-arrow     python3-backoff     python3-bleach     python3-bugzilla     python3-click     python3-colander     python3-cornice     python3-cornice-sphinx     python3-createrepo_c     python3-diff-cover     python3-dnf     python3-dogpile-cache     python3-fedora     python3-feedgen     python3-jinja2     python3-koji     python3-libcomps     python3-librepo     python3-markdown     python3-munch     python3-openid     python3-psycopg2     python3-pylibravatar     python3-pyramid     python3-pyramid-fas-openid     python3-pyramid-mako     python3-pytest     python3-pytest-cov     python3-responses     python3-simplemediawiki     python3-sqlalchemy     python3-sqlalchemy_schemadisplay     python3-waitress     python3-webtest     python3-yaml" shape="box"];
  "sha256:d8821b0df7a186631bd245987de8175ad4687e49c32b6b415bf561ef679b909e" [label="/bin/sh -c ln -s /usr/bin/true /usr/bin/pungi-koji" shape="box"];
  "sha256:d9cddeb706440bab9f093bbce5c4ebec252f0d7b386430f348e9b8c6b3fa2cd6" [label="mkdir{path=/bodhi}" shape="note"];
  "sha256:5618f32bcd9fbce57e84a15812a9b25b06c55623675262ce969f4719eefb38d8" [label="local://context" shape="ellipse"];
  "sha256:a890f18b46976b7e338276c6aa4f89d2f1c7e4b9e5e31010e103f2af203c4125" [label="copy{src=/, dest=/bodhi}" shape="note"];
  "sha256:2fa27f82c8aa56b075f1c329e1915af629bb48e73712496ed87491d05abbcf1d" [label="/bin/sh -c sed -i '/pyramid_debugtoolbar/d' setup.py" shape="box"];
  "sha256:88cecec84718b466d648ff78ea0207600e8ab1c89c0580da1d4aa6ab9dae75d8" [label="/bin/sh -c sed -i '/pyramid_debugtoolbar/d' devel/development.ini.example" shape="box"];
  "sha256:e9ec6899f3ec1664e7bfe9d6d341bcecb8c5bee4adf4d4f4594ff5fa2d7a59e2" [label="/bin/sh -c cp devel/development.ini.example development.ini" shape="box"];
  "sha256:214567a4f6dc091072f7c71afbe2012a18f28d91430255a0a4b10179025d224f" [label="sha256:214567a4f6dc091072f7c71afbe2012a18f28d91430255a0a4b10179025d224f" shape="plaintext"];
  "sha256:270f3becbfb8cf7a1d1f9d0d5188e6c704d66759732f29177b5bdd739e323166" -> "sha256:c6db5e7badee61c8d998e5f80dff2d041fd42419db622e344a80a58d10de3ab6" [label=""];
  "sha256:c6db5e7badee61c8d998e5f80dff2d041fd42419db622e344a80a58d10de3ab6" -> "sha256:1595dff30ac6a01940e6f27d8b9ab2fd6c2111f6864077d3951b39186462038d" [label=""];
  "sha256:1595dff30ac6a01940e6f27d8b9ab2fd6c2111f6864077d3951b39186462038d" -> "sha256:d8821b0df7a186631bd245987de8175ad4687e49c32b6b415bf561ef679b909e" [label=""];
  "sha256:d8821b0df7a186631bd245987de8175ad4687e49c32b6b415bf561ef679b909e" -> "sha256:d9cddeb706440bab9f093bbce5c4ebec252f0d7b386430f348e9b8c6b3fa2cd6" [label=""];
  "sha256:d9cddeb706440bab9f093bbce5c4ebec252f0d7b386430f348e9b8c6b3fa2cd6" -> "sha256:a890f18b46976b7e338276c6aa4f89d2f1c7e4b9e5e31010e103f2af203c4125" [label=""];
  "sha256:5618f32bcd9fbce57e84a15812a9b25b06c55623675262ce969f4719eefb38d8" -> "sha256:a890f18b46976b7e338276c6aa4f89d2f1c7e4b9e5e31010e103f2af203c4125" [label=""];
  "sha256:a890f18b46976b7e338276c6aa4f89d2f1c7e4b9e5e31010e103f2af203c4125" -> "sha256:2fa27f82c8aa56b075f1c329e1915af629bb48e73712496ed87491d05abbcf1d" [label=""];
  "sha256:2fa27f82c8aa56b075f1c329e1915af629bb48e73712496ed87491d05abbcf1d" -> "sha256:88cecec84718b466d648ff78ea0207600e8ab1c89c0580da1d4aa6ab9dae75d8" [label=""];
  "sha256:88cecec84718b466d648ff78ea0207600e8ab1c89c0580da1d4aa6ab9dae75d8" -> "sha256:e9ec6899f3ec1664e7bfe9d6d341bcecb8c5bee4adf4d4f4594ff5fa2d7a59e2" [label=""];
  "sha256:e9ec6899f3ec1664e7bfe9d6d341bcecb8c5bee4adf4d4f4594ff5fa2d7a59e2" -> "sha256:214567a4f6dc091072f7c71afbe2012a18f28d91430255a0a4b10179025d224f" [label=""];
}

