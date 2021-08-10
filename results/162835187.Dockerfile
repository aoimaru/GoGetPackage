[app/sources/162835187.Dockerfile]
digraph {
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label="/bin/sh -c apt-get update -qy && apt-get install mutt offlineimap vim-nox abook elinks curl tmux cron zsh -y" shape="box"];
  "sha256:40af9d507f9855055a547c05ad3cd841298ec6f68467e7abbf9afed904289fad" [label="copy{src=/.muttrc, dest=/}" shape="note"];
  "sha256:50d4520117dcba7fdf15c78c473e8cbd25ef224b2c09d5efcf5028d0817a1a88" [label="copy{src=/.offlineimaprc, dest=/}" shape="note"];
  "sha256:9b9a66777f8e74cf1aa3c0889e589eeeb8712d1664796e79e338781aeb4ed795" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:b9340bea22dd86dc0a74263f43f8cf42b378aadaefb2942e7c6ec5f6728ebd2f" [label="copy{src=/mutt, dest=/.mutt}" shape="note"];
  "sha256:cf0deb0baa85c2212747b4c280ee9ec569560897b0b5b9229b38d2682f4d2748" [label="copy{src=/vim, dest=/.vim}" shape="note"];
  "sha256:0379cd7df86955b3882410e2f5c07aa6b81f58cbffa857a23ba67c44f084aa31" [label="copy{src=/vimrc, dest=/.vimrc}" shape="note"];
  "sha256:f12e8c785ed0c47df45073d34a6b230034ab3ee2ac593f178c776ee0197922fe" [label="copy{src=/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:3e4d43423fe793ac5460511ea7a0349e2e5446106d08bac3102c7d80483c4895" [label="/bin/sh -c chmod 644 /etc/crontab" shape="box"];
  "sha256:51dce6532e5b3ea487fc437a515d8ccdf1e845f4902788451f3832a7e4882ea5" [label="/bin/sh -c mkdir /Mail" shape="box"];
  "sha256:5369882127a5860465d43a29179328fccaf7a4f7466bdee365341c48e5eaac27" [label="/bin/sh -c mkdir /.offlineimap" shape="box"];
  "sha256:55d80ee96dcf6374944a1b46834cf1981ec67eedc8226b55388081e058bc163f" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:6b9f4414c2d56131aa679e0dceb6a35a5c4763c74196eaa4b714220a1f8c21c1" [label="sha256:6b9f4414c2d56131aa679e0dceb6a35a5c4763c74196eaa4b714220a1f8c21c1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label=""];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" -> "sha256:40af9d507f9855055a547c05ad3cd841298ec6f68467e7abbf9afed904289fad" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:40af9d507f9855055a547c05ad3cd841298ec6f68467e7abbf9afed904289fad" [label=""];
  "sha256:40af9d507f9855055a547c05ad3cd841298ec6f68467e7abbf9afed904289fad" -> "sha256:50d4520117dcba7fdf15c78c473e8cbd25ef224b2c09d5efcf5028d0817a1a88" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:50d4520117dcba7fdf15c78c473e8cbd25ef224b2c09d5efcf5028d0817a1a88" [label=""];
  "sha256:50d4520117dcba7fdf15c78c473e8cbd25ef224b2c09d5efcf5028d0817a1a88" -> "sha256:9b9a66777f8e74cf1aa3c0889e589eeeb8712d1664796e79e338781aeb4ed795" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:9b9a66777f8e74cf1aa3c0889e589eeeb8712d1664796e79e338781aeb4ed795" [label=""];
  "sha256:9b9a66777f8e74cf1aa3c0889e589eeeb8712d1664796e79e338781aeb4ed795" -> "sha256:b9340bea22dd86dc0a74263f43f8cf42b378aadaefb2942e7c6ec5f6728ebd2f" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:b9340bea22dd86dc0a74263f43f8cf42b378aadaefb2942e7c6ec5f6728ebd2f" [label=""];
  "sha256:b9340bea22dd86dc0a74263f43f8cf42b378aadaefb2942e7c6ec5f6728ebd2f" -> "sha256:cf0deb0baa85c2212747b4c280ee9ec569560897b0b5b9229b38d2682f4d2748" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:cf0deb0baa85c2212747b4c280ee9ec569560897b0b5b9229b38d2682f4d2748" [label=""];
  "sha256:cf0deb0baa85c2212747b4c280ee9ec569560897b0b5b9229b38d2682f4d2748" -> "sha256:0379cd7df86955b3882410e2f5c07aa6b81f58cbffa857a23ba67c44f084aa31" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:0379cd7df86955b3882410e2f5c07aa6b81f58cbffa857a23ba67c44f084aa31" [label=""];
  "sha256:0379cd7df86955b3882410e2f5c07aa6b81f58cbffa857a23ba67c44f084aa31" -> "sha256:f12e8c785ed0c47df45073d34a6b230034ab3ee2ac593f178c776ee0197922fe" [label=""];
  "sha256:229a96ac70ca443046715c7e4387152b3c04ea40e0a56a00af2796fca7d5f63f" -> "sha256:f12e8c785ed0c47df45073d34a6b230034ab3ee2ac593f178c776ee0197922fe" [label=""];
  "sha256:f12e8c785ed0c47df45073d34a6b230034ab3ee2ac593f178c776ee0197922fe" -> "sha256:3e4d43423fe793ac5460511ea7a0349e2e5446106d08bac3102c7d80483c4895" [label=""];
  "sha256:3e4d43423fe793ac5460511ea7a0349e2e5446106d08bac3102c7d80483c4895" -> "sha256:51dce6532e5b3ea487fc437a515d8ccdf1e845f4902788451f3832a7e4882ea5" [label=""];
  "sha256:51dce6532e5b3ea487fc437a515d8ccdf1e845f4902788451f3832a7e4882ea5" -> "sha256:5369882127a5860465d43a29179328fccaf7a4f7466bdee365341c48e5eaac27" [label=""];
  "sha256:5369882127a5860465d43a29179328fccaf7a4f7466bdee365341c48e5eaac27" -> "sha256:55d80ee96dcf6374944a1b46834cf1981ec67eedc8226b55388081e058bc163f" [label=""];
  "sha256:55d80ee96dcf6374944a1b46834cf1981ec67eedc8226b55388081e058bc163f" -> "sha256:6b9f4414c2d56131aa679e0dceb6a35a5c4763c74196eaa4b714220a1f8c21c1" [label=""];
}

