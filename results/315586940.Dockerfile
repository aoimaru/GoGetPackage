[app/sources/315586940.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:cd7bb7622d55310ab6f4700b4e0b976474a033d5615a25960058216256ead70b" [label="/bin/sh -c apt-get update && apt-get -qqy upgrade && apt-get -qqy install autoconf autotools-dev build-essential curl git libtool lsb-release make sudo bash-completion jq tmux vim && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a33cc7840570f41b129cd6ca0c69ba5eece28f911dde89a71480e97d17553e86" [label="/bin/sh -c addgroup --quiet --gid $gid $group && adduser --quiet --disabled-password --gecos ',,,,' --uid $uid --ingroup $group $user && echo \"${user} ALL=(ALL:ALL) NOPASSWD: ALL\" > /etc/sudoers.d/$user" shape="box"];
  "sha256:1573768621aadefbb52a1cc74cc9a395bae101bf65cac7e89344956058e6b583" [label="docker-image://docker.io/library/docker:latest" shape="ellipse"];
  "sha256:1167ebea1efc2094ef5028f1f0f2d1daca2f7ed0a865351f3259885f878fa168" [label="copy{src=/usr/local/bin/docker, dest=/usr/local/bin/docker}" shape="note"];
  "sha256:ba01426b076cecc54c445a43d979a78aaabab78435353d501806991735ff8e42" [label="/bin/sh -c echo 'sudo chmod o+rw /var/run/docker.sock' >> /home/${user}/.bashrc" shape="box"];
  "sha256:bd30fbc067fedfa62945c4aa2d8351ee1788a48e25f843fcd01bcce042f01492" [label="/bin/sh -c curl -s -Lo - https://dl.google.com/go/go${goversion}.linux-amd64.tar.gz | tar -C /usr/local -xzf - && echo '# Go environment.' >> /home/${user}/.bashrc && echo 'export GOROOT=/usr/local/go' >> /home/${user}/.bashrc && echo 'export GOPATH=~/go' >> /home/${user}/.bashrc && echo 'export PATH=$GOROOT/bin:$GOPATH/out/linux_amd64/release:$GOPATH/bin:$PATH' >> /home/${user}/.bashrc && echo 'export GO111MODULE=on' >> /home/${user}/.bashrc && mkdir -p /home/${user}/go" shape="box"];
  "sha256:1cb95b4e8e930a8020fcc33ac70e88c7d0c431112b6982df3ff989a83cd6d75f" [label="/bin/sh -c GO111MODULE=\"on\" GOROOT=/usr/local/go GOPATH=/home/${user}/go /usr/local/go/bin/go get sigs.k8s.io/kind@v0.3.0" shape="box"];
  "sha256:5dfb9c1e3fe2ba96d7ca7bf06b333a062b097e082c6d7840ddc23c47e48dadb0" [label="/bin/sh -c curl -s -Lo - https://git.io/get_helm.sh | /bin/bash" shape="box"];
  "sha256:18077e36d0450c8d380771610809f12a867ba932e47431167181dce3b0f7c654" [label="/bin/sh -c echo \"deb http://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && apt-get update && apt-get -qqy install google-cloud-sdk kubectl && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d92caaca8e84ead54c277816adfccd5b9b61e76e3584850821bb342f9a078d97" [label="/bin/sh -c /home/${user}/go/bin/kind completion bash > /etc/bash_completion.d/kind && /usr/local/bin/helm completion bash > /etc/bash_completion.d/helm && /usr/bin/kubectl completion bash > /etc/bash_completion.d/kubectl && curl -s -Lo - https://raw.githubusercontent.com/docker/cli/master/contrib/completion/bash/docker > /etc/bash_completion.d/docker" shape="box"];
  "sha256:040272095b0f99228ea7a7c948db6283e5a999a7c08120b91dec271e0c100213" [label="mkdir{path=/home/go/src/istio.io/istio}" shape="note"];
  "sha256:5534a6da8166b311454db639153d2d4431318716ad3b07799fc0fd821875aaf4" [label="sha256:5534a6da8166b311454db639153d2d4431318716ad3b07799fc0fd821875aaf4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:cd7bb7622d55310ab6f4700b4e0b976474a033d5615a25960058216256ead70b" [label=""];
  "sha256:cd7bb7622d55310ab6f4700b4e0b976474a033d5615a25960058216256ead70b" -> "sha256:a33cc7840570f41b129cd6ca0c69ba5eece28f911dde89a71480e97d17553e86" [label=""];
  "sha256:a33cc7840570f41b129cd6ca0c69ba5eece28f911dde89a71480e97d17553e86" -> "sha256:1167ebea1efc2094ef5028f1f0f2d1daca2f7ed0a865351f3259885f878fa168" [label=""];
  "sha256:1573768621aadefbb52a1cc74cc9a395bae101bf65cac7e89344956058e6b583" -> "sha256:1167ebea1efc2094ef5028f1f0f2d1daca2f7ed0a865351f3259885f878fa168" [label=""];
  "sha256:1167ebea1efc2094ef5028f1f0f2d1daca2f7ed0a865351f3259885f878fa168" -> "sha256:ba01426b076cecc54c445a43d979a78aaabab78435353d501806991735ff8e42" [label=""];
  "sha256:ba01426b076cecc54c445a43d979a78aaabab78435353d501806991735ff8e42" -> "sha256:bd30fbc067fedfa62945c4aa2d8351ee1788a48e25f843fcd01bcce042f01492" [label=""];
  "sha256:bd30fbc067fedfa62945c4aa2d8351ee1788a48e25f843fcd01bcce042f01492" -> "sha256:1cb95b4e8e930a8020fcc33ac70e88c7d0c431112b6982df3ff989a83cd6d75f" [label=""];
  "sha256:1cb95b4e8e930a8020fcc33ac70e88c7d0c431112b6982df3ff989a83cd6d75f" -> "sha256:5dfb9c1e3fe2ba96d7ca7bf06b333a062b097e082c6d7840ddc23c47e48dadb0" [label=""];
  "sha256:5dfb9c1e3fe2ba96d7ca7bf06b333a062b097e082c6d7840ddc23c47e48dadb0" -> "sha256:18077e36d0450c8d380771610809f12a867ba932e47431167181dce3b0f7c654" [label=""];
  "sha256:18077e36d0450c8d380771610809f12a867ba932e47431167181dce3b0f7c654" -> "sha256:d92caaca8e84ead54c277816adfccd5b9b61e76e3584850821bb342f9a078d97" [label=""];
  "sha256:d92caaca8e84ead54c277816adfccd5b9b61e76e3584850821bb342f9a078d97" -> "sha256:040272095b0f99228ea7a7c948db6283e5a999a7c08120b91dec271e0c100213" [label=""];
  "sha256:040272095b0f99228ea7a7c948db6283e5a999a7c08120b91dec271e0c100213" -> "sha256:5534a6da8166b311454db639153d2d4431318716ad3b07799fc0fd821875aaf4" [label=""];
}

