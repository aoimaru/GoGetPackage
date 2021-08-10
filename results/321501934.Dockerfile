[app/sources/321501934.Dockerfile]
digraph {
  "sha256:dc1ac9914ec10c1875b1bcf930e06c8544a92dc1d56c26e869412173da6a97a4" [label="local://context" shape="ellipse"];
  "sha256:1a76a56b156bb2eba4ab565db38151b54822ad2c1e07e1bbd90df14c319a928f" [label="docker-image://docker.io/mysql/mysql-server:5.7" shape="ellipse"];
  "sha256:04fc7b8402ed7b08e7d0b7012d32c928bdd32dd20177d92e11b8a4f2eb8c3ef9" [label="copy{src=/my.cnf, dest=/etc/}" shape="note"];
  "sha256:798d74efc20fbbe91e5d8fd56cca565da5bf24cc47023de50b36e692f8664ca1" [label="sha256:798d74efc20fbbe91e5d8fd56cca565da5bf24cc47023de50b36e692f8664ca1" shape="plaintext"];
  "sha256:1a76a56b156bb2eba4ab565db38151b54822ad2c1e07e1bbd90df14c319a928f" -> "sha256:04fc7b8402ed7b08e7d0b7012d32c928bdd32dd20177d92e11b8a4f2eb8c3ef9" [label=""];
  "sha256:dc1ac9914ec10c1875b1bcf930e06c8544a92dc1d56c26e869412173da6a97a4" -> "sha256:04fc7b8402ed7b08e7d0b7012d32c928bdd32dd20177d92e11b8a4f2eb8c3ef9" [label=""];
  "sha256:04fc7b8402ed7b08e7d0b7012d32c928bdd32dd20177d92e11b8a4f2eb8c3ef9" -> "sha256:798d74efc20fbbe91e5d8fd56cca565da5bf24cc47023de50b36e692f8664ca1" [label=""];
}

