[app/sources/475743640.Dockerfile]
digraph {
  "sha256:3e7bf143a26f00ee17d6056ca3a0fbe8dad310d330017240969fe5e78dcbb116" [label="docker-image://docker.io/microsoft/mssql-server-linux:2017-latest" shape="ellipse"];
  "sha256:5d80306578dcc2c19b2e6e3dd201798a0eb7f66fecb1dfac38c9d7a5d8fb26b7" [label="local://context" shape="ellipse"];
  "sha256:ba6cc08afdc6c4cc95552ebf7c0624701a5054d5569e7235d1de8ee80ff0ddc3" [label="copy{src=/scripts/mssql-entrypoint.sh, dest=/}" shape="note"];
  "sha256:6ed7bdb8a4c13726e7dd84de34c6da39ce9c5fa5f7fd3fd15b65f4b099c5efc7" [label="copy{src=/misc/test-setup.sql, dest=/}" shape="note"];
  "sha256:56a408313435314484dbaa092154cae31980f46674222dc0d588d1cf5af830fd" [label="sha256:56a408313435314484dbaa092154cae31980f46674222dc0d588d1cf5af830fd" shape="plaintext"];
  "sha256:3e7bf143a26f00ee17d6056ca3a0fbe8dad310d330017240969fe5e78dcbb116" -> "sha256:ba6cc08afdc6c4cc95552ebf7c0624701a5054d5569e7235d1de8ee80ff0ddc3" [label=""];
  "sha256:5d80306578dcc2c19b2e6e3dd201798a0eb7f66fecb1dfac38c9d7a5d8fb26b7" -> "sha256:ba6cc08afdc6c4cc95552ebf7c0624701a5054d5569e7235d1de8ee80ff0ddc3" [label=""];
  "sha256:ba6cc08afdc6c4cc95552ebf7c0624701a5054d5569e7235d1de8ee80ff0ddc3" -> "sha256:6ed7bdb8a4c13726e7dd84de34c6da39ce9c5fa5f7fd3fd15b65f4b099c5efc7" [label=""];
  "sha256:5d80306578dcc2c19b2e6e3dd201798a0eb7f66fecb1dfac38c9d7a5d8fb26b7" -> "sha256:6ed7bdb8a4c13726e7dd84de34c6da39ce9c5fa5f7fd3fd15b65f4b099c5efc7" [label=""];
  "sha256:6ed7bdb8a4c13726e7dd84de34c6da39ce9c5fa5f7fd3fd15b65f4b099c5efc7" -> "sha256:56a408313435314484dbaa092154cae31980f46674222dc0d588d1cf5af830fd" [label=""];
}

