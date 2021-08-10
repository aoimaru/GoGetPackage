[app/sources/320100454.Dockerfile]
digraph {
  "sha256:2afa83c3ffd2be6ead0f5d680922ae6ce3d8fbb8d4fe8a2a9cdcaf5de1f699ae" [label="docker-image://docker.io/kangaechu/nlp-jp-py:latest" shape="ellipse"];
  "sha256:b7e169f99144dc2496a2c353617187fe79596c23f9a09a2bf0fb1afb3297dd5a" [label="/bin/sh -c apk add sudo shadow &&   pip3 install jupyter &&   useradd -m  nlp &&   echo 'jupyter ALL=NOPASSWD: /usr/bin/pip3' > /etc/sudoers" shape="box"];
  "sha256:3f34464e73caed9576f6ab417992a93721ee9d4c7350b2f02afa175ebccee0f4" [label="/bin/sh -c mkdir -p /home/nlp/jupyter" shape="box"];
  "sha256:41115d083368835e0374e85188f3ac50ef994e35df57586b87d62ffd97be4e88" [label="mkdir{path=/home/nlp/jupyter}" shape="note"];
  "sha256:2946705b6c8eb70fb5ec2b9fa3048638684bf2fcce1ada59a42032ef96d47264" [label="sha256:2946705b6c8eb70fb5ec2b9fa3048638684bf2fcce1ada59a42032ef96d47264" shape="plaintext"];
  "sha256:2afa83c3ffd2be6ead0f5d680922ae6ce3d8fbb8d4fe8a2a9cdcaf5de1f699ae" -> "sha256:b7e169f99144dc2496a2c353617187fe79596c23f9a09a2bf0fb1afb3297dd5a" [label=""];
  "sha256:b7e169f99144dc2496a2c353617187fe79596c23f9a09a2bf0fb1afb3297dd5a" -> "sha256:3f34464e73caed9576f6ab417992a93721ee9d4c7350b2f02afa175ebccee0f4" [label=""];
  "sha256:3f34464e73caed9576f6ab417992a93721ee9d4c7350b2f02afa175ebccee0f4" -> "sha256:41115d083368835e0374e85188f3ac50ef994e35df57586b87d62ffd97be4e88" [label=""];
  "sha256:41115d083368835e0374e85188f3ac50ef994e35df57586b87d62ffd97be4e88" -> "sha256:2946705b6c8eb70fb5ec2b9fa3048638684bf2fcce1ada59a42032ef96d47264" [label=""];
}

