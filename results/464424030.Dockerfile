[app/sources/464424030.Dockerfile]
digraph {
  "sha256:8560dce15f706870a95b981966e69af74293c8dd8981e4a9e56154baaf3b312c" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1d8734b0559900a2e42b4ac2efa75966034a498fd131e6281a9f87e769b0886d" [label="/bin/sh -c set -x &&     unlink /bin/sh; ln -s bash /bin/sh &&     apt-get -q update --fix-missing &&     apt-get -q install -y --no-install-recommends locales wget ca-certificates openssh-server &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:32599abcd8000cf6e99c7a977e28d82d3b9aa6f9cd1bb0a309ec9fc522994b88" [label="/bin/sh -c update-locale LC_ALL=C.UTF-8 LANG=C.UTF-8" shape="box"];
  "sha256:abc3b9675c3567f8c3864373c5f092170629bd5abfc86aae20abcb6022d23fe7" [label="/bin/sh -c set -x &&     wget -q -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" &&     chmod +x /usr/local/bin/gosu &&     gosu nobody true" shape="box"];
  "sha256:460d0748779cdfc6ce9f686ddceb454560b4f35c4cfbdf596ad0a54032ffd04a" [label="/bin/sh -c set -x &&     groupadd -g 9001 dirbs &&     useradd -m -d /home/dirbs -s /bin/bash -u 9001 -g dirbs dirbs &&     chmod 700 /home/dirbs" shape="box"];
  "sha256:c8e59317727c99747352d950f7d80a8db8969460066eb3677255c8bb2ad857be" [label="copy{src=/docker/prd/processing/authorized_keys, dest=/home/dirbs/.ssh/}" shape="note"];
  "sha256:4632bcc41b80d501a1ce9322e96c7b500751d917e04d088407de213ebf61a6f0" [label="/bin/sh -c set -x &&     mkdir -p /var/run/sshd &&     chmod 700 /var/run/sshd &&     mkdir -p /home/dirbs/.ssh &&     chown -R dirbs.dirbs /home/dirbs/.ssh &&     chmod -R 700 /home/dirbs/.ssh &&     chmod 600 /home/dirbs/.ssh/authorized_keys &&     sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config &&     sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd" shape="box"];
  "sha256:8633cd2b8f3626183d2267d64311cbec74f50ce11fa942044c602bc5a05bd5a8" [label="copy{src=/docker/prd/upload/entrypoint.sh, dest=/}" shape="note"];
  "sha256:6797650ffe2b4ab09a855646a13d0e46612895e9979ef116aa4f6c7bada87272" [label="/bin/sh -c set -x && chmod a+x /entrypoint.sh" shape="box"];
  "sha256:95faa3785c9769319845f720b1c877a2f0701111859620f716f7aaa6cbc5dc4f" [label="sha256:95faa3785c9769319845f720b1c877a2f0701111859620f716f7aaa6cbc5dc4f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1d8734b0559900a2e42b4ac2efa75966034a498fd131e6281a9f87e769b0886d" [label=""];
  "sha256:1d8734b0559900a2e42b4ac2efa75966034a498fd131e6281a9f87e769b0886d" -> "sha256:32599abcd8000cf6e99c7a977e28d82d3b9aa6f9cd1bb0a309ec9fc522994b88" [label=""];
  "sha256:32599abcd8000cf6e99c7a977e28d82d3b9aa6f9cd1bb0a309ec9fc522994b88" -> "sha256:abc3b9675c3567f8c3864373c5f092170629bd5abfc86aae20abcb6022d23fe7" [label=""];
  "sha256:abc3b9675c3567f8c3864373c5f092170629bd5abfc86aae20abcb6022d23fe7" -> "sha256:460d0748779cdfc6ce9f686ddceb454560b4f35c4cfbdf596ad0a54032ffd04a" [label=""];
  "sha256:460d0748779cdfc6ce9f686ddceb454560b4f35c4cfbdf596ad0a54032ffd04a" -> "sha256:c8e59317727c99747352d950f7d80a8db8969460066eb3677255c8bb2ad857be" [label=""];
  "sha256:8560dce15f706870a95b981966e69af74293c8dd8981e4a9e56154baaf3b312c" -> "sha256:c8e59317727c99747352d950f7d80a8db8969460066eb3677255c8bb2ad857be" [label=""];
  "sha256:c8e59317727c99747352d950f7d80a8db8969460066eb3677255c8bb2ad857be" -> "sha256:4632bcc41b80d501a1ce9322e96c7b500751d917e04d088407de213ebf61a6f0" [label=""];
  "sha256:4632bcc41b80d501a1ce9322e96c7b500751d917e04d088407de213ebf61a6f0" -> "sha256:8633cd2b8f3626183d2267d64311cbec74f50ce11fa942044c602bc5a05bd5a8" [label=""];
  "sha256:8560dce15f706870a95b981966e69af74293c8dd8981e4a9e56154baaf3b312c" -> "sha256:8633cd2b8f3626183d2267d64311cbec74f50ce11fa942044c602bc5a05bd5a8" [label=""];
  "sha256:8633cd2b8f3626183d2267d64311cbec74f50ce11fa942044c602bc5a05bd5a8" -> "sha256:6797650ffe2b4ab09a855646a13d0e46612895e9979ef116aa4f6c7bada87272" [label=""];
  "sha256:6797650ffe2b4ab09a855646a13d0e46612895e9979ef116aa4f6c7bada87272" -> "sha256:95faa3785c9769319845f720b1c877a2f0701111859620f716f7aaa6cbc5dc4f" [label=""];
}

