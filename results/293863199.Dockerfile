[app/sources/293863199.Dockerfile]
digraph {
  "sha256:8d9148d828ed9d9a364e6fba86325f549abacc81be37238a0406f73470ad83c4" [label="local://context" shape="ellipse"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:541ff904a6e9c3d6c76ce915d1b8b5f4373ca6d6a6a8707aafc310aeaa1d62e1" [label="copy{src=/etc_redis_redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:bc6996d62094e0a824f09ac0d9949d8f6b79d3c017cb998dcd746af3505c790b" [label="sha256:bc6996d62094e0a824f09ac0d9949d8f6b79d3c017cb998dcd746af3505c790b" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:541ff904a6e9c3d6c76ce915d1b8b5f4373ca6d6a6a8707aafc310aeaa1d62e1" [label=""];
  "sha256:8d9148d828ed9d9a364e6fba86325f549abacc81be37238a0406f73470ad83c4" -> "sha256:541ff904a6e9c3d6c76ce915d1b8b5f4373ca6d6a6a8707aafc310aeaa1d62e1" [label=""];
  "sha256:541ff904a6e9c3d6c76ce915d1b8b5f4373ca6d6a6a8707aafc310aeaa1d62e1" -> "sha256:bc6996d62094e0a824f09ac0d9949d8f6b79d3c017cb998dcd746af3505c790b" [label=""];
}

