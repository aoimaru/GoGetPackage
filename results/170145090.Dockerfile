[app/sources/170145090.Dockerfile]
digraph {
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label="/bin/sh -c apt-get update -qy && apt-get install mutt offlineimap vim-nox abook elinks curl tmux cron zsh -y" shape="box"];
  "sha256:8c3d6137b1e80f38dc99de1431c4dc4ff95280e50706555a938592440befa581" [label="copy{src=/.muttrc, dest=/}" shape="note"];
  "sha256:f7bf6e326feac57106cafd27cf92eb5fc6d0d88a7b74fcf1d32f1cbeb37fc154" [label="copy{src=/.offlineimaprc, dest=/}" shape="note"];
  "sha256:6e8558becb7d699d90b39ab916888bf4191112d50a49dff0f3fe72207f89603a" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:3ff28657320b7bc46d8c9ee9c3dade65dbdd60b44524f249936cfd344ac955cc" [label="copy{src=/mutt, dest=/.mutt}" shape="note"];
  "sha256:93fb239bb5fbc13fdc7e04ac49b699972063bef10e30796dd54a8672962f6c8b" [label="copy{src=/vim, dest=/.vim}" shape="note"];
  "sha256:313049f6f5473558011336eeca1344655ff9e553715edcbbbc1a7fa04c4aa08b" [label="copy{src=/vimrc, dest=/.vimrc}" shape="note"];
  "sha256:16a5a5a366c76e58d1400d9f30d319f90952675a8d03595226785fa49b55a29c" [label="copy{src=/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:aca8cac70782e554968fe5431cc20facee60ff59b58e86c10cf4882bafd5062e" [label="/bin/sh -c chmod 644 /etc/crontab" shape="box"];
  "sha256:173b1161a2772755c3d6ba905185abf2bf3cee8138b19d6d7a4aec658575c74c" [label="/bin/sh -c mkdir /Mail" shape="box"];
  "sha256:e5611c6c4d1b9b973cb77def4818dfbbebe46cea3503ae21f8ae54fce72b4952" [label="/bin/sh -c mkdir /.offlineimap" shape="box"];
  "sha256:517a5e55c0f26d39659b4437f68af9cfd073e71aab91b991c9c80d97ba922ef0" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:89c40a569e76f461b5d980ea8d823a6f761c495dd7c5b1ddef0991afbd6bfd32" [label="sha256:89c40a569e76f461b5d980ea8d823a6f761c495dd7c5b1ddef0991afbd6bfd32" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label=""];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" -> "sha256:8c3d6137b1e80f38dc99de1431c4dc4ff95280e50706555a938592440befa581" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:8c3d6137b1e80f38dc99de1431c4dc4ff95280e50706555a938592440befa581" [label=""];
  "sha256:8c3d6137b1e80f38dc99de1431c4dc4ff95280e50706555a938592440befa581" -> "sha256:f7bf6e326feac57106cafd27cf92eb5fc6d0d88a7b74fcf1d32f1cbeb37fc154" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:f7bf6e326feac57106cafd27cf92eb5fc6d0d88a7b74fcf1d32f1cbeb37fc154" [label=""];
  "sha256:f7bf6e326feac57106cafd27cf92eb5fc6d0d88a7b74fcf1d32f1cbeb37fc154" -> "sha256:6e8558becb7d699d90b39ab916888bf4191112d50a49dff0f3fe72207f89603a" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:6e8558becb7d699d90b39ab916888bf4191112d50a49dff0f3fe72207f89603a" [label=""];
  "sha256:6e8558becb7d699d90b39ab916888bf4191112d50a49dff0f3fe72207f89603a" -> "sha256:3ff28657320b7bc46d8c9ee9c3dade65dbdd60b44524f249936cfd344ac955cc" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:3ff28657320b7bc46d8c9ee9c3dade65dbdd60b44524f249936cfd344ac955cc" [label=""];
  "sha256:3ff28657320b7bc46d8c9ee9c3dade65dbdd60b44524f249936cfd344ac955cc" -> "sha256:93fb239bb5fbc13fdc7e04ac49b699972063bef10e30796dd54a8672962f6c8b" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:93fb239bb5fbc13fdc7e04ac49b699972063bef10e30796dd54a8672962f6c8b" [label=""];
  "sha256:93fb239bb5fbc13fdc7e04ac49b699972063bef10e30796dd54a8672962f6c8b" -> "sha256:313049f6f5473558011336eeca1344655ff9e553715edcbbbc1a7fa04c4aa08b" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:313049f6f5473558011336eeca1344655ff9e553715edcbbbc1a7fa04c4aa08b" [label=""];
  "sha256:313049f6f5473558011336eeca1344655ff9e553715edcbbbc1a7fa04c4aa08b" -> "sha256:16a5a5a366c76e58d1400d9f30d319f90952675a8d03595226785fa49b55a29c" [label=""];
  "sha256:8567d3417495dab77041aa33260e648f00cb492e783ba8f8fcdd67fd9d433d18" -> "sha256:16a5a5a366c76e58d1400d9f30d319f90952675a8d03595226785fa49b55a29c" [label=""];
  "sha256:16a5a5a366c76e58d1400d9f30d319f90952675a8d03595226785fa49b55a29c" -> "sha256:aca8cac70782e554968fe5431cc20facee60ff59b58e86c10cf4882bafd5062e" [label=""];
  "sha256:aca8cac70782e554968fe5431cc20facee60ff59b58e86c10cf4882bafd5062e" -> "sha256:173b1161a2772755c3d6ba905185abf2bf3cee8138b19d6d7a4aec658575c74c" [label=""];
  "sha256:173b1161a2772755c3d6ba905185abf2bf3cee8138b19d6d7a4aec658575c74c" -> "sha256:e5611c6c4d1b9b973cb77def4818dfbbebe46cea3503ae21f8ae54fce72b4952" [label=""];
  "sha256:e5611c6c4d1b9b973cb77def4818dfbbebe46cea3503ae21f8ae54fce72b4952" -> "sha256:517a5e55c0f26d39659b4437f68af9cfd073e71aab91b991c9c80d97ba922ef0" [label=""];
  "sha256:517a5e55c0f26d39659b4437f68af9cfd073e71aab91b991c9c80d97ba922ef0" -> "sha256:89c40a569e76f461b5d980ea8d823a6f761c495dd7c5b1ddef0991afbd6bfd32" [label=""];
}

