[app/sources/252789272.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:896afea5e1f225daa900a952b770c9ddbb4ec7e9fc7ea6a5e0b541672827486d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ee84df86958b9e16cf61d59983f7edb0fe84ada06c90ea0ea8d6d5e794b3fa9f" [label="/bin/sh -c apt-get install file -y" shape="box"];
  "sha256:0b3dfb171efcf1e0f702f3eb623fe5156e99b28fbc37e8f4c4d9ed34ab99b9ca" [label="sha256:0b3dfb171efcf1e0f702f3eb623fe5156e99b28fbc37e8f4c4d9ed34ab99b9ca" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:896afea5e1f225daa900a952b770c9ddbb4ec7e9fc7ea6a5e0b541672827486d" [label=""];
  "sha256:896afea5e1f225daa900a952b770c9ddbb4ec7e9fc7ea6a5e0b541672827486d" -> "sha256:ee84df86958b9e16cf61d59983f7edb0fe84ada06c90ea0ea8d6d5e794b3fa9f" [label=""];
  "sha256:ee84df86958b9e16cf61d59983f7edb0fe84ada06c90ea0ea8d6d5e794b3fa9f" -> "sha256:0b3dfb171efcf1e0f702f3eb623fe5156e99b28fbc37e8f4c4d9ed34ab99b9ca" [label=""];
}

