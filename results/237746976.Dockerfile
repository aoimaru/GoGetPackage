[app/sources/237746976.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:0e415b8b80a6a88da43d860fed36886122244e7325dff59a40b410cae4ff5293" [label="/bin/sh -c apt-get update && apt-get install -q -y --fix-missing \tmake \tant \tautomake \tautoconf \tgcc g++ \topenjdk-8-jdk \twget \tcurl \txmlstarlet \tunzip \tgit \topenbox \txterm \tnet-tools \tpython-pip \tfirefox \tvim \txvfb \tx11vnc && \tapt-get clean && \trm -rf /var/lib/apt/lists/*  && \tpip install --upgrade pip zapcli python-owasp-zap-v2.4 && \tuseradd -d /home/zap -m -s /bin/bash zap && \techo zap:zap | chpasswd && \tmkdir /zap  && \tchown zap /zap && \tchgrp zap /zap && \tmkdir /zap-src  && \tchown zap /zap-src && \tchgrp zap /zap-src" shape="box"];
  "sha256:f059c0edc51e1f537126f948b0155528dd58c2bfe7915b8bb1f0540af6eaacd4" [label="mkdir{path=/zap-src}" shape="note"];
  "sha256:552e83613866e64c95f594c12ed7ddef2a65861526d91f9cdb553f7d884f86d0" [label="/bin/sh -c mkdir /home/zap/.vnc" shape="box"];
  "sha256:cb829d004eff64e392d58aab1bb8de7b1b73f86807960017fdb3d389361df70d" [label="/bin/sh -c git clone --depth 1 https://github.com/zaproxy/zaproxy.git && \tcd zaproxy && \tZAP_WEEKLY_ADDONS_NO_TEST=true ./gradlew :zap:prepareDistWeekly && \tcp -R /zap-src/zaproxy/zap/build/distFilesWeekly/* /zap/ && \trm -rf /zap-src/* && \tcd /zap/ && \tcurl -s -L https://bitbucket.org/meszarv/webswing/downloads/webswing-2.5.10.zip > webswing.zip && \tunzip webswing.zip && \trm webswing.zip && \tmv webswing-* webswing && \trm -R webswing/demo/ && \ttouch AcceptedLicense" shape="box"];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" [label="local://context" shape="ellipse"];
  "sha256:37bfc39e3b3255f81d393aaef675643e37c3087b7e2fedced3f93a6680c96852" [label="copy{src=/zap*, dest=/zap/},copy{src=/CHANGELOG.md, dest=/zap/}" shape="note"];
  "sha256:d49b9755d25d00f2f62263b2e8ea7738773127152436ad23dfdc29c15410a8ae" [label="copy{src=/webswing.config, dest=/zap/webswing/}" shape="note"];
  "sha256:8f3a89f16b4f8b7ce0cb52c06d1265661dd49d696dca1bc785598556ee35acb5" [label="copy{src=/policies, dest=/home/zap/.ZAP_D/policies/}" shape="note"];
  "sha256:3114ea5b5ce990cfcd2a534e9c5659fb51e2b1652dd3ee477b4b48eb404c2b20" [label="copy{src=/scripts, dest=/home/zap/.ZAP_D/scripts/}" shape="note"];
  "sha256:c04e6b2e2266a771060df12935a03d1ecd3b45da4f05d967c0864fd3a72847db" [label="copy{src=/.xinitrc, dest=/home/zap/}" shape="note"];
  "sha256:081fe2c8b414b40c2b5f0b93e8dfcf7c094391d65c62ffbde644d545945cc575" [label="/bin/sh -c chown zap:zap /zap/* && \tchown zap:zap /zap/webswing/webswing.config && \tchown zap:zap -R /home/zap/.ZAP_D/ && \tchown zap:zap /home/zap/.xinitrc && \tchmod a+x /home/zap/.xinitrc && \tchmod +x /zap/zap.sh && \trm -rf /zap-src" shape="box"];
  "sha256:3c1b6339ca92bae65e206d9617e7618f44007f7c49587e210d6b8cc3339c83db" [label="mkdir{path=/zap}" shape="note"];
  "sha256:b802351c78c32245143eb6a15cba047d507c8a529339fb303a03961ef6e76eb6" [label="sha256:b802351c78c32245143eb6a15cba047d507c8a529339fb303a03961ef6e76eb6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:0e415b8b80a6a88da43d860fed36886122244e7325dff59a40b410cae4ff5293" [label=""];
  "sha256:0e415b8b80a6a88da43d860fed36886122244e7325dff59a40b410cae4ff5293" -> "sha256:f059c0edc51e1f537126f948b0155528dd58c2bfe7915b8bb1f0540af6eaacd4" [label=""];
  "sha256:f059c0edc51e1f537126f948b0155528dd58c2bfe7915b8bb1f0540af6eaacd4" -> "sha256:552e83613866e64c95f594c12ed7ddef2a65861526d91f9cdb553f7d884f86d0" [label=""];
  "sha256:552e83613866e64c95f594c12ed7ddef2a65861526d91f9cdb553f7d884f86d0" -> "sha256:cb829d004eff64e392d58aab1bb8de7b1b73f86807960017fdb3d389361df70d" [label=""];
  "sha256:cb829d004eff64e392d58aab1bb8de7b1b73f86807960017fdb3d389361df70d" -> "sha256:37bfc39e3b3255f81d393aaef675643e37c3087b7e2fedced3f93a6680c96852" [label=""];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" -> "sha256:37bfc39e3b3255f81d393aaef675643e37c3087b7e2fedced3f93a6680c96852" [label=""];
  "sha256:37bfc39e3b3255f81d393aaef675643e37c3087b7e2fedced3f93a6680c96852" -> "sha256:d49b9755d25d00f2f62263b2e8ea7738773127152436ad23dfdc29c15410a8ae" [label=""];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" -> "sha256:d49b9755d25d00f2f62263b2e8ea7738773127152436ad23dfdc29c15410a8ae" [label=""];
  "sha256:d49b9755d25d00f2f62263b2e8ea7738773127152436ad23dfdc29c15410a8ae" -> "sha256:8f3a89f16b4f8b7ce0cb52c06d1265661dd49d696dca1bc785598556ee35acb5" [label=""];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" -> "sha256:8f3a89f16b4f8b7ce0cb52c06d1265661dd49d696dca1bc785598556ee35acb5" [label=""];
  "sha256:8f3a89f16b4f8b7ce0cb52c06d1265661dd49d696dca1bc785598556ee35acb5" -> "sha256:3114ea5b5ce990cfcd2a534e9c5659fb51e2b1652dd3ee477b4b48eb404c2b20" [label=""];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" -> "sha256:3114ea5b5ce990cfcd2a534e9c5659fb51e2b1652dd3ee477b4b48eb404c2b20" [label=""];
  "sha256:3114ea5b5ce990cfcd2a534e9c5659fb51e2b1652dd3ee477b4b48eb404c2b20" -> "sha256:c04e6b2e2266a771060df12935a03d1ecd3b45da4f05d967c0864fd3a72847db" [label=""];
  "sha256:19e25595921b621e3fa7088764e6976bdad85a5f704c8d614f7abdacd906d727" -> "sha256:c04e6b2e2266a771060df12935a03d1ecd3b45da4f05d967c0864fd3a72847db" [label=""];
  "sha256:c04e6b2e2266a771060df12935a03d1ecd3b45da4f05d967c0864fd3a72847db" -> "sha256:081fe2c8b414b40c2b5f0b93e8dfcf7c094391d65c62ffbde644d545945cc575" [label=""];
  "sha256:081fe2c8b414b40c2b5f0b93e8dfcf7c094391d65c62ffbde644d545945cc575" -> "sha256:3c1b6339ca92bae65e206d9617e7618f44007f7c49587e210d6b8cc3339c83db" [label=""];
  "sha256:3c1b6339ca92bae65e206d9617e7618f44007f7c49587e210d6b8cc3339c83db" -> "sha256:b802351c78c32245143eb6a15cba047d507c8a529339fb303a03961ef6e76eb6" [label=""];
}

