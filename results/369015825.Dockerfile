[app/sources/369015825.Dockerfile]
digraph {
  "sha256:4dc7af49dfa2fc0e31c4341f3b173526d5cf1f771439bf7f7db527d7eecf034b" [label="docker-image://docker.io/jolicode/base:latest" shape="ellipse"];
  "sha256:7745a832c062571a36768af7041c042fab7fea41c2febbd4cbf6c7660ae7e03b" [label="/bin/sh -c sudo apt-get update &&     sudo apt-get install -y build-essential libssl-dev libmysqlclient-dev &&     sudo apt-get clean &&     sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:b213d3bf2661c4103648566156a2996b01392478fa1f4aaa1943453094ea00b7" [label="/bin/sh -c curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh &&     sudo /bin/bash -c \"echo \\\"[[ -s \\$HOME/.nvm/nvm.sh ]] && . \\$HOME/.nvm/nvm.sh\\\" >> /etc/profile.d/npm.sh\" &&     echo \"[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh\" >> $HOME/.bashrc" shape="box"];
  "sha256:2880170084fa3bf9e70d164b9eef7b7a7a059d4e02d4da3e35fcfabb0a6107bd" [label="sha256:2880170084fa3bf9e70d164b9eef7b7a7a059d4e02d4da3e35fcfabb0a6107bd" shape="plaintext"];
  "sha256:4dc7af49dfa2fc0e31c4341f3b173526d5cf1f771439bf7f7db527d7eecf034b" -> "sha256:7745a832c062571a36768af7041c042fab7fea41c2febbd4cbf6c7660ae7e03b" [label=""];
  "sha256:7745a832c062571a36768af7041c042fab7fea41c2febbd4cbf6c7660ae7e03b" -> "sha256:b213d3bf2661c4103648566156a2996b01392478fa1f4aaa1943453094ea00b7" [label=""];
  "sha256:b213d3bf2661c4103648566156a2996b01392478fa1f4aaa1943453094ea00b7" -> "sha256:2880170084fa3bf9e70d164b9eef7b7a7a059d4e02d4da3e35fcfabb0a6107bd" [label=""];
}

