[app/sources/468490514.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ce67ca8576d4d00f643c930ce6563da2f7a3e09c1d7b22e11d848fbdeb799228" [label="local://context" shape="ellipse"];
  "sha256:c526930ef3d8d7e8c6f1ac9c9814b8807a426c11e696cdd52d294b7cb02c2023" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:08b839e5f3fea7c008c72cf3ec0a759ffd5ab81eb1bedf225ec2e218bef3755c" [label="/bin/sh -c ls" shape="box"];
  "sha256:18d701000024e2649c7c62d07562188e29de26f816827fc29ca6d2be7f9df387" [label="sha256:18d701000024e2649c7c62d07562188e29de26f816827fc29ca6d2be7f9df387" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label=""];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" -> "sha256:c526930ef3d8d7e8c6f1ac9c9814b8807a426c11e696cdd52d294b7cb02c2023" [label=""];
  "sha256:ce67ca8576d4d00f643c930ce6563da2f7a3e09c1d7b22e11d848fbdeb799228" -> "sha256:c526930ef3d8d7e8c6f1ac9c9814b8807a426c11e696cdd52d294b7cb02c2023" [label=""];
  "sha256:c526930ef3d8d7e8c6f1ac9c9814b8807a426c11e696cdd52d294b7cb02c2023" -> "sha256:08b839e5f3fea7c008c72cf3ec0a759ffd5ab81eb1bedf225ec2e218bef3755c" [label=""];
  "sha256:08b839e5f3fea7c008c72cf3ec0a759ffd5ab81eb1bedf225ec2e218bef3755c" -> "sha256:18d701000024e2649c7c62d07562188e29de26f816827fc29ca6d2be7f9df387" [label=""];
}

