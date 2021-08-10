[app/sources/182970516.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:451273dcf80303d6a7dcddb43fd29448d88682bae6568efbccecd0f8a5697197" [label="/bin/sh -c apt update && apt install -q -y     wget     sudo     nano     bash-completion     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:45d9ac979c440dfa768d80ac03971672e8910837dc9aa1afc2bd25db6d2650b7" [label="/bin/sh -c apt update && apt install -q -y     binutils     mesa-utils     module-init-tools     x-window-system    && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c76f3b46837167d07ba71ccdb4e4046173bde42e5f6257974e62a0bef53d3344" [label="/bin/sh -c wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb     && dpkg -i sublime-text_build-3126_amd64.deb     && rm sublime-text_build-3126_amd64.deb" shape="box"];
  "sha256:f1602edaba74922442039d84d176f33651698b990f21b58bd8ed8b9ea129f485" [label="local://context" shape="ellipse"];
  "sha256:2c992d51854a34c6181ed96cf3410074829e0b69b6dc6cfe2da35c8d5337ba4e" [label="copy{src=/completion, dest=/tmp/}" shape="note"];
  "sha256:4e8329081ad56a060188c914831305f1f0db0ea9162b5e66ef1dd9023b929516" [label="/bin/sh -c cat /tmp/completion >> /etc/bash.bashrc" shape="box"];
  "sha256:fa187ff9fbc103bdd56f9837fac72e4cbeccf124209ba3cceeef76c3beb3cec2" [label="sha256:fa187ff9fbc103bdd56f9837fac72e4cbeccf124209ba3cceeef76c3beb3cec2" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:451273dcf80303d6a7dcddb43fd29448d88682bae6568efbccecd0f8a5697197" [label=""];
  "sha256:451273dcf80303d6a7dcddb43fd29448d88682bae6568efbccecd0f8a5697197" -> "sha256:45d9ac979c440dfa768d80ac03971672e8910837dc9aa1afc2bd25db6d2650b7" [label=""];
  "sha256:45d9ac979c440dfa768d80ac03971672e8910837dc9aa1afc2bd25db6d2650b7" -> "sha256:c76f3b46837167d07ba71ccdb4e4046173bde42e5f6257974e62a0bef53d3344" [label=""];
  "sha256:c76f3b46837167d07ba71ccdb4e4046173bde42e5f6257974e62a0bef53d3344" -> "sha256:2c992d51854a34c6181ed96cf3410074829e0b69b6dc6cfe2da35c8d5337ba4e" [label=""];
  "sha256:f1602edaba74922442039d84d176f33651698b990f21b58bd8ed8b9ea129f485" -> "sha256:2c992d51854a34c6181ed96cf3410074829e0b69b6dc6cfe2da35c8d5337ba4e" [label=""];
  "sha256:2c992d51854a34c6181ed96cf3410074829e0b69b6dc6cfe2da35c8d5337ba4e" -> "sha256:4e8329081ad56a060188c914831305f1f0db0ea9162b5e66ef1dd9023b929516" [label=""];
  "sha256:4e8329081ad56a060188c914831305f1f0db0ea9162b5e66ef1dd9023b929516" -> "sha256:fa187ff9fbc103bdd56f9837fac72e4cbeccf124209ba3cceeef76c3beb3cec2" [label=""];
}

