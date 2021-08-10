[app/sources/363590859.Dockerfile]
digraph {
  "sha256:8a4f58295455dcba23be0587d64c6a2e50fcf18d83bbb38bd6278c0a4bf008ea" [label="docker-image://docker.io/dzwicker/docker-ubuntu:latest" shape="ellipse"];
  "sha256:6dddff64bd0118e1b7d21f94ae329e07944b13872056014eff882e8502520423" [label="/bin/sh -c mkdir -p /var/lib/upsource &&     groupadd --gid 2000 upsource &&     useradd --system -d /var/lib/upsource --uid 2000 --gid upsource upsource &&     chown -R upsource:upsource /var/lib/upsource" shape="box"];
  "sha256:40e42fba71c27a85af13bac556a9d5061f4b3142b5f7c9b5fb8c5b0df786b130" [label="local://context" shape="ellipse"];
  "sha256:a55bc4e5c9ef48148e086c4d73396b4fa52d6787ec5b4645855652de333f8539" [label="copy{src=/entry-point.sh, dest=/entry-point.sh}" shape="note"];
  "sha256:45fb9cc608e6e2af2d6fbfc6ef1ba0600f30e33cea32bc942be3b2e71c495b14" [label="/bin/sh -c export UPSOURCE_VERSION=3.5.3597 &&     mkdir -p /usr/local &&     mkdir -p /var/lib/upsource &&     cd /usr/local &&     curl -L https://download.jetbrains.com/upsource/upsource-${UPSOURCE_VERSION}.zip > upsource.zip &&     unzip upsource.zip &&     mv upsource-${UPSOURCE_VERSION} /usr/local/upsource &&     echo \"$UPSOURCE_VERSION\" > /usr/local/upsource/version.docker.image &&     rm -f upsource.zip &&     rm -rf /usr/local/upsource/internal/java/linux-x64/man &&     rm -rf /usr/local/upsource/internal/java/mac-x64 &&     rm -rf /usr/local/upsource/internal/java/windows-amd64 &&     chown -R upsource:upsource /usr/local/upsource &&     chmod -R u+rwxX /usr/local/upsource/internal/java/linux-x64" shape="box"];
  "sha256:d513b9016b02d8aea1b854631f33203a7c3aa1a48c05310587bd7a4bdd3458c0" [label="sha256:d513b9016b02d8aea1b854631f33203a7c3aa1a48c05310587bd7a4bdd3458c0" shape="plaintext"];
  "sha256:8a4f58295455dcba23be0587d64c6a2e50fcf18d83bbb38bd6278c0a4bf008ea" -> "sha256:6dddff64bd0118e1b7d21f94ae329e07944b13872056014eff882e8502520423" [label=""];
  "sha256:6dddff64bd0118e1b7d21f94ae329e07944b13872056014eff882e8502520423" -> "sha256:a55bc4e5c9ef48148e086c4d73396b4fa52d6787ec5b4645855652de333f8539" [label=""];
  "sha256:40e42fba71c27a85af13bac556a9d5061f4b3142b5f7c9b5fb8c5b0df786b130" -> "sha256:a55bc4e5c9ef48148e086c4d73396b4fa52d6787ec5b4645855652de333f8539" [label=""];
  "sha256:a55bc4e5c9ef48148e086c4d73396b4fa52d6787ec5b4645855652de333f8539" -> "sha256:45fb9cc608e6e2af2d6fbfc6ef1ba0600f30e33cea32bc942be3b2e71c495b14" [label=""];
  "sha256:45fb9cc608e6e2af2d6fbfc6ef1ba0600f30e33cea32bc942be3b2e71c495b14" -> "sha256:d513b9016b02d8aea1b854631f33203a7c3aa1a48c05310587bd7a4bdd3458c0" [label=""];
}

