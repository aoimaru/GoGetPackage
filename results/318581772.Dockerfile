[app/sources/318581772.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:52e51c3c63e4273b8e3806166bde9a6d980451e083effdc74730c8f59a8ff014" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server python python-pip dnsutils iputils-ping git vim curl util-linux sshpass nano jq" shape="box"];
  "sha256:5b5650df8fe833d2846fc90d91620ffb77a01c4468b973241695c7167157d219" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:35a290cc99529b606319feca87c4e87abc4220cf41b7d200fc5491011ee9bb07" [label="/bin/sh -c mkdir -p /home/antidote" shape="box"];
  "sha256:6872f448b850069a0b6d0e5d16fbf62fc20987f568afa259b7e344d07a99d83a" [label="/bin/sh -c useradd antidote -p antidotepassword" shape="box"];
  "sha256:429a94cc2f02238dde8e862e212f0b7a8d84e7bca2b917d093fd3a4a87ce6325" [label="/bin/sh -c chown antidote:antidote /home/antidote" shape="box"];
  "sha256:2d8fa485c934af2dc6a80eabb10d1a84197a132a945e669fc16fafbfb939f060" [label="/bin/sh -c chsh antidote --shell=/bin/bash" shape="box"];
  "sha256:4e64248e07c318b9c54b41ff9bb95777b9d2ef9c46a14c0b4751cdd2cb245c48" [label="/bin/sh -c echo 'antidote:antidotepassword' | chpasswd" shape="box"];
  "sha256:e7a95a217f73a34758981c9c488f11d358139897f2505fabbc3ec429f4c42b38" [label="/bin/sh -c echo 'root:$(uuidgen)' | chpasswd" shape="box"];
  "sha256:cd413d1ba49b7e275e31476098aaff500dee0006157044ac8c6ee3f014608b19" [label="/bin/sh -c rm -f /etc/update-motd.d/*" shape="box"];
  "sha256:2bda0c7ff5761d195d489dc988255f8eb33ce0bbaca47805d93effbf2c60f610" [label="/bin/sh -c rm -f /etc/legal" shape="box"];
  "sha256:0b332f706796d210fabe2dcc1b6bb99159f980fea5cb6a215a747891d971f296" [label="local://context" shape="ellipse"];
  "sha256:ff25d9f91cadde4a34f4e63fa171d4a8f53f533e84aeb3bc1573038a54b62fb0" [label="copy{src=/motd.sh, dest=/etc/update-motd.d/00-antidote-motd}" shape="note"];
  "sha256:34a731860c87c145612dc2629bf64acafc4e03557e29ba6f663ee09b1f2897fb" [label="/bin/sh -c sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config" shape="box"];
  "sha256:bc496ada023904db435d9f09ab38aac90059ebce9d805874f2c7aba09d91b43b" [label="/bin/sh -c sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config" shape="box"];
  "sha256:a3228ac41aa7433a483c19547263d0e6a2c1e0f229feecb6586fb9803d42bfed" [label="/bin/sh -c sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd" shape="box"];
  "sha256:73d29be8060c73f308face5fb429a5def75750a42a27f2f1e40d293971167d4d" [label="/bin/sh -c echo \"auth required pam_wheel.so use_uid\" >> /etc/pam.d/su" shape="box"];
  "sha256:a6373d7becf41c3cfdd136d26c077fefe573f5ee7986b2e5a71dbfbf8bff0814" [label="/bin/sh -c echo \"export VISIBLE=now\" >> /etc/profile" shape="box"];
  "sha256:d1b30a427df9e9ed60ae0f196946d01505dd27c41f33eb996f2b2e671d27372c" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:cb6bac10238eb3e1a8044e1aa9b535d55a636a1bf64edbe583f071db053e1342" [label="/bin/sh -c pip install -r /requirements.txt" shape="box"];
  "sha256:d883363a10d73326970ba3840760280baf0fdfe2169cfd5d89a019c4d077efc3" [label="sha256:d883363a10d73326970ba3840760280baf0fdfe2169cfd5d89a019c4d077efc3" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:52e51c3c63e4273b8e3806166bde9a6d980451e083effdc74730c8f59a8ff014" [label=""];
  "sha256:52e51c3c63e4273b8e3806166bde9a6d980451e083effdc74730c8f59a8ff014" -> "sha256:5b5650df8fe833d2846fc90d91620ffb77a01c4468b973241695c7167157d219" [label=""];
  "sha256:5b5650df8fe833d2846fc90d91620ffb77a01c4468b973241695c7167157d219" -> "sha256:35a290cc99529b606319feca87c4e87abc4220cf41b7d200fc5491011ee9bb07" [label=""];
  "sha256:35a290cc99529b606319feca87c4e87abc4220cf41b7d200fc5491011ee9bb07" -> "sha256:6872f448b850069a0b6d0e5d16fbf62fc20987f568afa259b7e344d07a99d83a" [label=""];
  "sha256:6872f448b850069a0b6d0e5d16fbf62fc20987f568afa259b7e344d07a99d83a" -> "sha256:429a94cc2f02238dde8e862e212f0b7a8d84e7bca2b917d093fd3a4a87ce6325" [label=""];
  "sha256:429a94cc2f02238dde8e862e212f0b7a8d84e7bca2b917d093fd3a4a87ce6325" -> "sha256:2d8fa485c934af2dc6a80eabb10d1a84197a132a945e669fc16fafbfb939f060" [label=""];
  "sha256:2d8fa485c934af2dc6a80eabb10d1a84197a132a945e669fc16fafbfb939f060" -> "sha256:4e64248e07c318b9c54b41ff9bb95777b9d2ef9c46a14c0b4751cdd2cb245c48" [label=""];
  "sha256:4e64248e07c318b9c54b41ff9bb95777b9d2ef9c46a14c0b4751cdd2cb245c48" -> "sha256:e7a95a217f73a34758981c9c488f11d358139897f2505fabbc3ec429f4c42b38" [label=""];
  "sha256:e7a95a217f73a34758981c9c488f11d358139897f2505fabbc3ec429f4c42b38" -> "sha256:cd413d1ba49b7e275e31476098aaff500dee0006157044ac8c6ee3f014608b19" [label=""];
  "sha256:cd413d1ba49b7e275e31476098aaff500dee0006157044ac8c6ee3f014608b19" -> "sha256:2bda0c7ff5761d195d489dc988255f8eb33ce0bbaca47805d93effbf2c60f610" [label=""];
  "sha256:2bda0c7ff5761d195d489dc988255f8eb33ce0bbaca47805d93effbf2c60f610" -> "sha256:ff25d9f91cadde4a34f4e63fa171d4a8f53f533e84aeb3bc1573038a54b62fb0" [label=""];
  "sha256:0b332f706796d210fabe2dcc1b6bb99159f980fea5cb6a215a747891d971f296" -> "sha256:ff25d9f91cadde4a34f4e63fa171d4a8f53f533e84aeb3bc1573038a54b62fb0" [label=""];
  "sha256:ff25d9f91cadde4a34f4e63fa171d4a8f53f533e84aeb3bc1573038a54b62fb0" -> "sha256:34a731860c87c145612dc2629bf64acafc4e03557e29ba6f663ee09b1f2897fb" [label=""];
  "sha256:34a731860c87c145612dc2629bf64acafc4e03557e29ba6f663ee09b1f2897fb" -> "sha256:bc496ada023904db435d9f09ab38aac90059ebce9d805874f2c7aba09d91b43b" [label=""];
  "sha256:bc496ada023904db435d9f09ab38aac90059ebce9d805874f2c7aba09d91b43b" -> "sha256:a3228ac41aa7433a483c19547263d0e6a2c1e0f229feecb6586fb9803d42bfed" [label=""];
  "sha256:a3228ac41aa7433a483c19547263d0e6a2c1e0f229feecb6586fb9803d42bfed" -> "sha256:73d29be8060c73f308face5fb429a5def75750a42a27f2f1e40d293971167d4d" [label=""];
  "sha256:73d29be8060c73f308face5fb429a5def75750a42a27f2f1e40d293971167d4d" -> "sha256:a6373d7becf41c3cfdd136d26c077fefe573f5ee7986b2e5a71dbfbf8bff0814" [label=""];
  "sha256:a6373d7becf41c3cfdd136d26c077fefe573f5ee7986b2e5a71dbfbf8bff0814" -> "sha256:d1b30a427df9e9ed60ae0f196946d01505dd27c41f33eb996f2b2e671d27372c" [label=""];
  "sha256:0b332f706796d210fabe2dcc1b6bb99159f980fea5cb6a215a747891d971f296" -> "sha256:d1b30a427df9e9ed60ae0f196946d01505dd27c41f33eb996f2b2e671d27372c" [label=""];
  "sha256:d1b30a427df9e9ed60ae0f196946d01505dd27c41f33eb996f2b2e671d27372c" -> "sha256:cb6bac10238eb3e1a8044e1aa9b535d55a636a1bf64edbe583f071db053e1342" [label=""];
  "sha256:cb6bac10238eb3e1a8044e1aa9b535d55a636a1bf64edbe583f071db053e1342" -> "sha256:d883363a10d73326970ba3840760280baf0fdfe2169cfd5d89a019c4d077efc3" [label=""];
}

