[app/sources/346858673.Dockerfile]
digraph {
  "sha256:49f09e56a2fed85dcc562b5b434e5c9f4a896d5d82bae95484f026e9f1dfeed6" [label="docker-image://docker.io/library/ubuntu-upstart:12.04" shape="ellipse"];
  "sha256:e7fd197258a09e42dfd366b9ce9e02924d8c37d3558ce5910547bff3afe9a22b" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install $APT_ARGS       ca-certificates       curl &&     curl -L --progress-bar https://www.chef.io/chef/install.sh | bash -s -- -P chefdk" shape="box"];
  "sha256:7f26c43a2a63d277f901970c0d526efb008b8e67f2cb07f5b5fb7437d4d86110" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt-get install $APT_ARGS       locales &&     locale-gen en_US.UTF-8 &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:aa7866bab4bbc76de87c3e50e88298b19198c4625211b21382855d18505fbb4a" [label="/bin/sh -c mkdir -p $COOKBOOK_PATH &&     mkdir -p /etc/chef ~/.chef &&     echo \"cookbook_path %w($COOKBOOK_PATH)\" > /etc/chef/client.rb &&     echo \"local_mode true\" >> /etc/chef/client.rb &&     echo \"chef_zero.enabled true\" >> /etc/chef/client.rb &&     ln /etc/chef/client.rb ~/.chef/config.rb" shape="box"];
  "sha256:b5087f8b717195936f2d6a427b5027320a6618c66e0fb6b88886a4df606e7182" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt-get install $APT_ARGS        git" shape="box"];
  "sha256:862c7049f03173a09f6f6fcea457dd58cb9d65e133156822ad3d55467b2f49eb" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt-get autoremove -y &&     rm -rf /var/cache/apt/archives/*" shape="box"];
  "sha256:9ac29206790ceb66f5ee88c89583a5170128820e390ec0ea8c9a241b757e8562" [label="sha256:9ac29206790ceb66f5ee88c89583a5170128820e390ec0ea8c9a241b757e8562" shape="plaintext"];
  "sha256:49f09e56a2fed85dcc562b5b434e5c9f4a896d5d82bae95484f026e9f1dfeed6" -> "sha256:e7fd197258a09e42dfd366b9ce9e02924d8c37d3558ce5910547bff3afe9a22b" [label=""];
  "sha256:e7fd197258a09e42dfd366b9ce9e02924d8c37d3558ce5910547bff3afe9a22b" -> "sha256:7f26c43a2a63d277f901970c0d526efb008b8e67f2cb07f5b5fb7437d4d86110" [label=""];
  "sha256:7f26c43a2a63d277f901970c0d526efb008b8e67f2cb07f5b5fb7437d4d86110" -> "sha256:aa7866bab4bbc76de87c3e50e88298b19198c4625211b21382855d18505fbb4a" [label=""];
  "sha256:aa7866bab4bbc76de87c3e50e88298b19198c4625211b21382855d18505fbb4a" -> "sha256:b5087f8b717195936f2d6a427b5027320a6618c66e0fb6b88886a4df606e7182" [label=""];
  "sha256:b5087f8b717195936f2d6a427b5027320a6618c66e0fb6b88886a4df606e7182" -> "sha256:862c7049f03173a09f6f6fcea457dd58cb9d65e133156822ad3d55467b2f49eb" [label=""];
  "sha256:862c7049f03173a09f6f6fcea457dd58cb9d65e133156822ad3d55467b2f49eb" -> "sha256:9ac29206790ceb66f5ee88c89583a5170128820e390ec0ea8c9a241b757e8562" [label=""];
}

