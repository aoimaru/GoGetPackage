[app/sources/285214164.Dockerfile]
digraph {
  "sha256:2250c6b66acab3d731a576b5fd368787d3dabadaeed3fa8ee90055e35204b394" [label="docker-image://docker.io/library/node:10.16.0" shape="ellipse"];
  "sha256:addf3b9fc787a945bdb7ce52f7a0970832332db82b7ffac94740c79bb12ad2c4" [label="local://context" shape="ellipse"];
  "sha256:b4ad8446c0263c9e4d3d00ae92be75e2a85e24f10bdf40a27dadc7b3f4cd7077" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/},copy{src=/.eslintrc.js, dest=/app/},copy{src=/.eslintignore, dest=/app/},copy{src=/.babelrc, dest=/app/},copy{src=/browserslist, dest=/app/},copy{src=/.stylelintrc, dest=/app/}" shape="note"];
  "sha256:53b3fa08606fb9ca8cc6dbd046b7492a303e69a5ebe9381e143549ea40796218" [label="mkdir{path=/app}" shape="note"];
  "sha256:844e454b6a8b53cd94d8f0f308ec1ab6b7c1ec0118a8fe9a440a41cacc82e822" [label="/bin/sh -c npm i --quiet" shape="box"];
  "sha256:9c7af5a3a7bfd403d86fe3ebcbc00e377444ee68e9edb17ef63cce5eb8592791" [label="sha256:9c7af5a3a7bfd403d86fe3ebcbc00e377444ee68e9edb17ef63cce5eb8592791" shape="plaintext"];
  "sha256:2250c6b66acab3d731a576b5fd368787d3dabadaeed3fa8ee90055e35204b394" -> "sha256:b4ad8446c0263c9e4d3d00ae92be75e2a85e24f10bdf40a27dadc7b3f4cd7077" [label=""];
  "sha256:addf3b9fc787a945bdb7ce52f7a0970832332db82b7ffac94740c79bb12ad2c4" -> "sha256:b4ad8446c0263c9e4d3d00ae92be75e2a85e24f10bdf40a27dadc7b3f4cd7077" [label=""];
  "sha256:b4ad8446c0263c9e4d3d00ae92be75e2a85e24f10bdf40a27dadc7b3f4cd7077" -> "sha256:53b3fa08606fb9ca8cc6dbd046b7492a303e69a5ebe9381e143549ea40796218" [label=""];
  "sha256:53b3fa08606fb9ca8cc6dbd046b7492a303e69a5ebe9381e143549ea40796218" -> "sha256:844e454b6a8b53cd94d8f0f308ec1ab6b7c1ec0118a8fe9a440a41cacc82e822" [label=""];
  "sha256:844e454b6a8b53cd94d8f0f308ec1ab6b7c1ec0118a8fe9a440a41cacc82e822" -> "sha256:9c7af5a3a7bfd403d86fe3ebcbc00e377444ee68e9edb17ef63cce5eb8592791" [label=""];
}

