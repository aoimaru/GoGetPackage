[app/sources/282258581.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:a8f1f683c884dd2d669cbeba141254576d70e206926d582dce44b2040a0ac957" [label="/bin/sh -c echo 'deb http://mirrors.aliyun.com/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list     && sed -i 's/deb.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list     && sed -i 's/security.debian.org/mirrors.aliyun.com\\/debian-security/' /etc/apt/sources.list" shape="box"];
  "sha256:47fa70d1e6f6a6a46367d56b7d3aa0e6fedb86e2bd188671d8c3a9369f907a6a" [label="/bin/sh -c echo \"${TIMEZONE}\" > /etc/timezone     && echo \"$LANG UTF-8\" > /etc/locale.gen     && apt-get update -q     && DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils locales     && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime     && update-locale LANG=$LANG     && locale-gen $LANG     && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales" shape="box"];
  "sha256:07fecca706f46bb4082747b807051b48736b84618b30d02273edf1f4c3c17de8" [label="/bin/sh -c apt-get dist-upgrade -y     && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends       ca-certificates       openssh-server       curl       gnupg       apt-transport-https       vim" shape="box"];
  "sha256:211875f5286c44dedef858b4501221476aeed692517a31b97e3aa39a22a6a831" [label="/bin/sh -c curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash     && apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends gitlab-ce     && apt-get clean all" shape="box"];
  "sha256:2e5ba709234ec67e49d1ae6cee59ae3c7cd83ff81cf25bbb1bd5f60c8b3b44ce" [label="/bin/sh -c mkdir -p /opt/gitlab/sv/sshd/supervise     && mkfifo /opt/gitlab/sv/sshd/supervise/ok     && printf \"#!/bin/sh\\nexec 2>&1\\numask 077\\nexec /usr/sbin/sshd -D\" > /opt/gitlab/sv/sshd/run     && chmod a+x /opt/gitlab/sv/sshd/run     && ln -s /opt/gitlab/sv/sshd /opt/gitlab/service     && mkdir -p /var/run/sshd" shape="box"];
  "sha256:d11671a7be1ff5c9d89f4f97539500fe3879c124ef71405456fb4b5a48e1fcb5" [label="local://context" shape="ellipse"];
  "sha256:a0df124a6c31b0ac9a9a69eaf5702d76c6357c04e5963a686ea12b0da84b90c8" [label="copy{src=/assets/sshd_config, dest=/etc/ssh/sshd_config}" shape="note"];
  "sha256:84e746a23a59b47ab52908066c30ff6566cd6b09be499a633b8dfb346a267b4a" [label="copy{src=/assets/gitlab.rb, dest=/etc/gitlab/gitlab.rb}" shape="note"];
  "sha256:a0d8f9fbd847c41fbc57ca90099a215d8f314217c045081f22a478e7b815ea3a" [label="copy{src=/assets/update-permissions, dest=/usr/sbin/}" shape="note"];
  "sha256:1a0a28ebd09266066d94790c813e3fd11153a880b9ef278aeea9fb448037fb6e" [label="/bin/sh -c sed -i \"s/external_url 'GENERATED_EXTERNAL_URL'/# external_url 'GENERATED_EXTERNAL_URL'/\" /opt/gitlab/etc/gitlab.rb.template     && sed -i /file-max/d /opt/gitlab/embedded/bin/runsvdir-start     && sed -i s/^ulimit/#ulimit/ /opt/gitlab/embedded/bin/runsvdir-start     && sed -i /sysctl/,+2d /opt/gitlab/embedded/cookbooks/gitlab/recipes/unicorn.rb     && sed -i /sysctl/,+2d /opt/gitlab/embedded/cookbooks/postgresql/recipes/enable.rb     && rm -f /opt/gitlab/embedded/cookbooks/package/resources/sysctl.rb" shape="box"];
  "sha256:b5500e15925adb8699042515ffac2a699e35a146af975f1cc9c8619b83a51585" [label="copy{src=/assets/wrapper, dest=/usr/local/bin/}" shape="note"];
  "sha256:ae0bca9f0d030dd15ce4edf5051ba42544b3734cb999fa61234f522c90486bb1" [label="sha256:ae0bca9f0d030dd15ce4edf5051ba42544b3734cb999fa61234f522c90486bb1" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:a8f1f683c884dd2d669cbeba141254576d70e206926d582dce44b2040a0ac957" [label=""];
  "sha256:a8f1f683c884dd2d669cbeba141254576d70e206926d582dce44b2040a0ac957" -> "sha256:47fa70d1e6f6a6a46367d56b7d3aa0e6fedb86e2bd188671d8c3a9369f907a6a" [label=""];
  "sha256:47fa70d1e6f6a6a46367d56b7d3aa0e6fedb86e2bd188671d8c3a9369f907a6a" -> "sha256:07fecca706f46bb4082747b807051b48736b84618b30d02273edf1f4c3c17de8" [label=""];
  "sha256:07fecca706f46bb4082747b807051b48736b84618b30d02273edf1f4c3c17de8" -> "sha256:211875f5286c44dedef858b4501221476aeed692517a31b97e3aa39a22a6a831" [label=""];
  "sha256:211875f5286c44dedef858b4501221476aeed692517a31b97e3aa39a22a6a831" -> "sha256:2e5ba709234ec67e49d1ae6cee59ae3c7cd83ff81cf25bbb1bd5f60c8b3b44ce" [label=""];
  "sha256:2e5ba709234ec67e49d1ae6cee59ae3c7cd83ff81cf25bbb1bd5f60c8b3b44ce" -> "sha256:a0df124a6c31b0ac9a9a69eaf5702d76c6357c04e5963a686ea12b0da84b90c8" [label=""];
  "sha256:d11671a7be1ff5c9d89f4f97539500fe3879c124ef71405456fb4b5a48e1fcb5" -> "sha256:a0df124a6c31b0ac9a9a69eaf5702d76c6357c04e5963a686ea12b0da84b90c8" [label=""];
  "sha256:a0df124a6c31b0ac9a9a69eaf5702d76c6357c04e5963a686ea12b0da84b90c8" -> "sha256:84e746a23a59b47ab52908066c30ff6566cd6b09be499a633b8dfb346a267b4a" [label=""];
  "sha256:d11671a7be1ff5c9d89f4f97539500fe3879c124ef71405456fb4b5a48e1fcb5" -> "sha256:84e746a23a59b47ab52908066c30ff6566cd6b09be499a633b8dfb346a267b4a" [label=""];
  "sha256:84e746a23a59b47ab52908066c30ff6566cd6b09be499a633b8dfb346a267b4a" -> "sha256:a0d8f9fbd847c41fbc57ca90099a215d8f314217c045081f22a478e7b815ea3a" [label=""];
  "sha256:d11671a7be1ff5c9d89f4f97539500fe3879c124ef71405456fb4b5a48e1fcb5" -> "sha256:a0d8f9fbd847c41fbc57ca90099a215d8f314217c045081f22a478e7b815ea3a" [label=""];
  "sha256:a0d8f9fbd847c41fbc57ca90099a215d8f314217c045081f22a478e7b815ea3a" -> "sha256:1a0a28ebd09266066d94790c813e3fd11153a880b9ef278aeea9fb448037fb6e" [label=""];
  "sha256:1a0a28ebd09266066d94790c813e3fd11153a880b9ef278aeea9fb448037fb6e" -> "sha256:b5500e15925adb8699042515ffac2a699e35a146af975f1cc9c8619b83a51585" [label=""];
  "sha256:d11671a7be1ff5c9d89f4f97539500fe3879c124ef71405456fb4b5a48e1fcb5" -> "sha256:b5500e15925adb8699042515ffac2a699e35a146af975f1cc9c8619b83a51585" [label=""];
  "sha256:b5500e15925adb8699042515ffac2a699e35a146af975f1cc9c8619b83a51585" -> "sha256:ae0bca9f0d030dd15ce4edf5051ba42544b3734cb999fa61234f522c90486bb1" [label=""];
}

