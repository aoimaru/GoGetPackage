[app/sources/347568423.Dockerfile]
digraph {
  "sha256:c65a9b60fc45dca01f9d8c284a69098557648a276f7baabe6d9a60e7de9d286b" [label="docker-image://docker.io/mykiwi/symfony-base:7.1-apache" shape="ellipse"];
  "sha256:779f42eeb4a7d56fe4f0f13366e6c5b678575a06da0ef132b00c5b94e87ef62b" [label="/bin/sh -c docker-php-ext-install pdo_mysql" shape="box"];
  "sha256:c6c6a385d55955b1a5a0d61b4d8a5e6754c810596307604bae9f4c8c665b724b" [label="/bin/sh -c apt-get update &&     apt-get install -y     \tlibpq-dev &&     docker-php-ext-install     \tpdo_pgsql &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:0a3baea9b5a4887c975e7c7ce6a44ccbb141ea1d94bbea74079318d4600b9efe" [label="sha256:0a3baea9b5a4887c975e7c7ce6a44ccbb141ea1d94bbea74079318d4600b9efe" shape="plaintext"];
  "sha256:c65a9b60fc45dca01f9d8c284a69098557648a276f7baabe6d9a60e7de9d286b" -> "sha256:779f42eeb4a7d56fe4f0f13366e6c5b678575a06da0ef132b00c5b94e87ef62b" [label=""];
  "sha256:779f42eeb4a7d56fe4f0f13366e6c5b678575a06da0ef132b00c5b94e87ef62b" -> "sha256:c6c6a385d55955b1a5a0d61b4d8a5e6754c810596307604bae9f4c8c665b724b" [label=""];
  "sha256:c6c6a385d55955b1a5a0d61b4d8a5e6754c810596307604bae9f4c8c665b724b" -> "sha256:0a3baea9b5a4887c975e7c7ce6a44ccbb141ea1d94bbea74079318d4600b9efe" [label=""];
}

