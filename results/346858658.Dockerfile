[app/sources/346858658.Dockerfile]
digraph {
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" [label="docker-image://docker.io/library/fedora:20" shape="ellipse"];
  "sha256:8009d0bb9695b675ee362ca0b6e4dc430c8e0c9d9e903891d8291018172ac1e2" [label="/bin/sh -c curl -L --progress-bar https://www.chef.io/chef/install.sh | bash -s -- -P chefdk" shape="box"];
  "sha256:d992e1652aaf7d03cf223af7736269976be8fe3063997112411940c923e00b73" [label="/bin/sh -c mkdir -p $COOKBOOK_PATH &&     mkdir -p /etc/chef ~/.chef &&     echo \"cookbook_path %w($COOKBOOK_PATH)\" > /etc/chef/client.rb &&     echo \"local_mode true\" >> /etc/chef/client.rb &&     echo \"chef_zero.enabled true\" >> /etc/chef/client.rb &&     ln /etc/chef/client.rb ~/.chef/config.rb" shape="box"];
  "sha256:5e2bf129296e90356d2055feb34911bbb16a448fe6ae2c338b4e1b84ec8c8a07" [label="/bin/sh -c yum install -y       git &&     yum clean all" shape="box"];
  "sha256:e1c3a2f2ba2955b89a690074948ba6eaabe9855af865aec3e4e3f19a3d04aa25" [label="sha256:e1c3a2f2ba2955b89a690074948ba6eaabe9855af865aec3e4e3f19a3d04aa25" shape="plaintext"];
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" -> "sha256:8009d0bb9695b675ee362ca0b6e4dc430c8e0c9d9e903891d8291018172ac1e2" [label=""];
  "sha256:8009d0bb9695b675ee362ca0b6e4dc430c8e0c9d9e903891d8291018172ac1e2" -> "sha256:d992e1652aaf7d03cf223af7736269976be8fe3063997112411940c923e00b73" [label=""];
  "sha256:d992e1652aaf7d03cf223af7736269976be8fe3063997112411940c923e00b73" -> "sha256:5e2bf129296e90356d2055feb34911bbb16a448fe6ae2c338b4e1b84ec8c8a07" [label=""];
  "sha256:5e2bf129296e90356d2055feb34911bbb16a448fe6ae2c338b4e1b84ec8c8a07" -> "sha256:e1c3a2f2ba2955b89a690074948ba6eaabe9855af865aec3e4e3f19a3d04aa25" [label=""];
}

