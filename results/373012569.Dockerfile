[app/sources/373012569.Dockerfile]
digraph {
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label="/bin/sh -c apt-get update -qy && apt-get install mutt offlineimap vim-nox abook elinks curl tmux cron zsh -y" shape="box"];
  "sha256:0bbd223014e95a67dbb0db3d1cb3d55da1b672afb944d4c912a8bcbb52be41d7" [label="copy{src=/.muttrc, dest=/}" shape="note"];
  "sha256:caa583cef34eb93613cc8de0db88ac9bfec9672c977fa527a1ea5ece0e599ff9" [label="copy{src=/.offlineimaprc, dest=/}" shape="note"];
  "sha256:66f01b49ce274e61c93e12d0130cc4b516c89c7c4ef331e559442b4fc4b4262e" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:a0e311d353486ba0d365b244a7a26120d084d6a284a3a02f0f9e524593486e28" [label="copy{src=/mutt, dest=/.mutt}" shape="note"];
  "sha256:3b04e44a3afed93b4227e527c0b9faf25e8aae1b979533962177b7e09d0bfd34" [label="copy{src=/vim, dest=/.vim}" shape="note"];
  "sha256:dc24626cfd14b971d71b8dbe1a343729e77bb84b589ee6380c2fffe0d8e62ac6" [label="copy{src=/vimrc, dest=/.vimrc}" shape="note"];
  "sha256:4b89a62f214d5160f65cb73c3ad554dd9420f4232c769b8db4b8455b76c84e76" [label="copy{src=/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:94d2658867b102e72de3d7f82c9a77634f7f8aeb2f7a5d53dd5206c83caf257e" [label="/bin/sh -c chmod 644 /etc/crontab" shape="box"];
  "sha256:868a79ce8b5893f62ed913f3a326e95962d73ad26391edb4c5ba3386f402aa5c" [label="/bin/sh -c mkdir /Mail" shape="box"];
  "sha256:2280edde164993aac087bcbdeaee226a249d9be8c3297350a4ab6d376829743b" [label="/bin/sh -c mkdir /.offlineimap" shape="box"];
  "sha256:36a13551821c4d7c6643cd6b69815ada93e382159c6ea6edb818a6cd8d8133c8" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:94307716225d0eb59aaf28e05649285ae8dad2c931aa266f3720fe0828798e89" [label="sha256:94307716225d0eb59aaf28e05649285ae8dad2c931aa266f3720fe0828798e89" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label=""];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" -> "sha256:0bbd223014e95a67dbb0db3d1cb3d55da1b672afb944d4c912a8bcbb52be41d7" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:0bbd223014e95a67dbb0db3d1cb3d55da1b672afb944d4c912a8bcbb52be41d7" [label=""];
  "sha256:0bbd223014e95a67dbb0db3d1cb3d55da1b672afb944d4c912a8bcbb52be41d7" -> "sha256:caa583cef34eb93613cc8de0db88ac9bfec9672c977fa527a1ea5ece0e599ff9" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:caa583cef34eb93613cc8de0db88ac9bfec9672c977fa527a1ea5ece0e599ff9" [label=""];
  "sha256:caa583cef34eb93613cc8de0db88ac9bfec9672c977fa527a1ea5ece0e599ff9" -> "sha256:66f01b49ce274e61c93e12d0130cc4b516c89c7c4ef331e559442b4fc4b4262e" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:66f01b49ce274e61c93e12d0130cc4b516c89c7c4ef331e559442b4fc4b4262e" [label=""];
  "sha256:66f01b49ce274e61c93e12d0130cc4b516c89c7c4ef331e559442b4fc4b4262e" -> "sha256:a0e311d353486ba0d365b244a7a26120d084d6a284a3a02f0f9e524593486e28" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:a0e311d353486ba0d365b244a7a26120d084d6a284a3a02f0f9e524593486e28" [label=""];
  "sha256:a0e311d353486ba0d365b244a7a26120d084d6a284a3a02f0f9e524593486e28" -> "sha256:3b04e44a3afed93b4227e527c0b9faf25e8aae1b979533962177b7e09d0bfd34" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:3b04e44a3afed93b4227e527c0b9faf25e8aae1b979533962177b7e09d0bfd34" [label=""];
  "sha256:3b04e44a3afed93b4227e527c0b9faf25e8aae1b979533962177b7e09d0bfd34" -> "sha256:dc24626cfd14b971d71b8dbe1a343729e77bb84b589ee6380c2fffe0d8e62ac6" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:dc24626cfd14b971d71b8dbe1a343729e77bb84b589ee6380c2fffe0d8e62ac6" [label=""];
  "sha256:dc24626cfd14b971d71b8dbe1a343729e77bb84b589ee6380c2fffe0d8e62ac6" -> "sha256:4b89a62f214d5160f65cb73c3ad554dd9420f4232c769b8db4b8455b76c84e76" [label=""];
  "sha256:df18566e6ce973e58d777d9435b1478c69dcefb2e336e20a998a8395d45516de" -> "sha256:4b89a62f214d5160f65cb73c3ad554dd9420f4232c769b8db4b8455b76c84e76" [label=""];
  "sha256:4b89a62f214d5160f65cb73c3ad554dd9420f4232c769b8db4b8455b76c84e76" -> "sha256:94d2658867b102e72de3d7f82c9a77634f7f8aeb2f7a5d53dd5206c83caf257e" [label=""];
  "sha256:94d2658867b102e72de3d7f82c9a77634f7f8aeb2f7a5d53dd5206c83caf257e" -> "sha256:868a79ce8b5893f62ed913f3a326e95962d73ad26391edb4c5ba3386f402aa5c" [label=""];
  "sha256:868a79ce8b5893f62ed913f3a326e95962d73ad26391edb4c5ba3386f402aa5c" -> "sha256:2280edde164993aac087bcbdeaee226a249d9be8c3297350a4ab6d376829743b" [label=""];
  "sha256:2280edde164993aac087bcbdeaee226a249d9be8c3297350a4ab6d376829743b" -> "sha256:36a13551821c4d7c6643cd6b69815ada93e382159c6ea6edb818a6cd8d8133c8" [label=""];
  "sha256:36a13551821c4d7c6643cd6b69815ada93e382159c6ea6edb818a6cd8d8133c8" -> "sha256:94307716225d0eb59aaf28e05649285ae8dad2c931aa266f3720fe0828798e89" [label=""];
}

