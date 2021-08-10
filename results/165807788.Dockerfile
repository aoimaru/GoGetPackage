[app/sources/165807788.Dockerfile]
digraph {
  "sha256:3a2dd3f115cc00e500115f85f1fe77fd4f665e1871f8bc276e7228f90e4bbccc" [label="docker-image://docker.io/vauxoo/odoo-80-image:latest" shape="ellipse"];
  "sha256:665d557b12446c3a758bf4b76c75d364c18ecd6c7b9eb5bd651aedbcf6464afe" [label="local://context" shape="ellipse"];
  "sha256:4c0b4eaf2603cfc5eeff41573edc0877c9a03a216c5577126afb99fa95a094b4" [label="copy{src=/scripts/entrypoint_image, dest=/}" shape="note"];
  "sha256:58e83d015ac1432d5ae26e22cfdb151a17eff21af4e606e0a75b193b6a1bd2e4" [label="copy{src=/scripts/*.sh, dest=/usr/share/vx-docker-internal/odoo-shippable/}" shape="note"];
  "sha256:33c4477c7946bcfe7a8deca9d915ba8b2331688b7887bf15e3d44990f95843ed" [label="copy{src=/keys/*, dest=/tmp/odoo-shippable/keys/}" shape="note"];
  "sha256:e77fc2654f2a63e7bf06c1b21f6c7dbc3feb717ea7dc0f421ca8c3840103a3c5" [label="copy{src=/files/*, dest=/tmp/ssh_pylib/}" shape="note"];
  "sha256:5cee98083d0b76542c8d5c72ab0d2dbea4d1da957567008d7507d76f70c3220f" [label="/bin/sh -c bash /usr/share/vx-docker-internal/odoo-shippable/build-image.sh" shape="box"];
  "sha256:401551ece32bcd352ae57b037dfc752bddbc1eb13c2757497d11120c7fd58a47" [label="sha256:401551ece32bcd352ae57b037dfc752bddbc1eb13c2757497d11120c7fd58a47" shape="plaintext"];
  "sha256:3a2dd3f115cc00e500115f85f1fe77fd4f665e1871f8bc276e7228f90e4bbccc" -> "sha256:4c0b4eaf2603cfc5eeff41573edc0877c9a03a216c5577126afb99fa95a094b4" [label=""];
  "sha256:665d557b12446c3a758bf4b76c75d364c18ecd6c7b9eb5bd651aedbcf6464afe" -> "sha256:4c0b4eaf2603cfc5eeff41573edc0877c9a03a216c5577126afb99fa95a094b4" [label=""];
  "sha256:4c0b4eaf2603cfc5eeff41573edc0877c9a03a216c5577126afb99fa95a094b4" -> "sha256:58e83d015ac1432d5ae26e22cfdb151a17eff21af4e606e0a75b193b6a1bd2e4" [label=""];
  "sha256:665d557b12446c3a758bf4b76c75d364c18ecd6c7b9eb5bd651aedbcf6464afe" -> "sha256:58e83d015ac1432d5ae26e22cfdb151a17eff21af4e606e0a75b193b6a1bd2e4" [label=""];
  "sha256:58e83d015ac1432d5ae26e22cfdb151a17eff21af4e606e0a75b193b6a1bd2e4" -> "sha256:33c4477c7946bcfe7a8deca9d915ba8b2331688b7887bf15e3d44990f95843ed" [label=""];
  "sha256:665d557b12446c3a758bf4b76c75d364c18ecd6c7b9eb5bd651aedbcf6464afe" -> "sha256:33c4477c7946bcfe7a8deca9d915ba8b2331688b7887bf15e3d44990f95843ed" [label=""];
  "sha256:33c4477c7946bcfe7a8deca9d915ba8b2331688b7887bf15e3d44990f95843ed" -> "sha256:e77fc2654f2a63e7bf06c1b21f6c7dbc3feb717ea7dc0f421ca8c3840103a3c5" [label=""];
  "sha256:665d557b12446c3a758bf4b76c75d364c18ecd6c7b9eb5bd651aedbcf6464afe" -> "sha256:e77fc2654f2a63e7bf06c1b21f6c7dbc3feb717ea7dc0f421ca8c3840103a3c5" [label=""];
  "sha256:e77fc2654f2a63e7bf06c1b21f6c7dbc3feb717ea7dc0f421ca8c3840103a3c5" -> "sha256:5cee98083d0b76542c8d5c72ab0d2dbea4d1da957567008d7507d76f70c3220f" [label=""];
  "sha256:5cee98083d0b76542c8d5c72ab0d2dbea4d1da957567008d7507d76f70c3220f" -> "sha256:401551ece32bcd352ae57b037dfc752bddbc1eb13c2757497d11120c7fd58a47" [label=""];
}

