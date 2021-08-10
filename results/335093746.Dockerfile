[app/sources/335093746.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:05fee3341af5a1c91689ee33b8449a9acbba2462502df14fde6c9e171abdc9d9" [label="local://context" shape="ellipse"];
  "sha256:0d802cdcc82f0579d9888be4810200ee8deba4d45cd5c4c5823ca6bfd24b6daf" [label="copy{src=/cloud-wechat/fw-cloud-business-wechat.jar, dest=/app/}" shape="note"];
  "sha256:564d4e5549c08c4e586fe209bef4811f85558f4acc0f0b4d2d99d7cfc91e14f6" [label="sha256:564d4e5549c08c4e586fe209bef4811f85558f4acc0f0b4d2d99d7cfc91e14f6" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:0d802cdcc82f0579d9888be4810200ee8deba4d45cd5c4c5823ca6bfd24b6daf" [label=""];
  "sha256:05fee3341af5a1c91689ee33b8449a9acbba2462502df14fde6c9e171abdc9d9" -> "sha256:0d802cdcc82f0579d9888be4810200ee8deba4d45cd5c4c5823ca6bfd24b6daf" [label=""];
  "sha256:0d802cdcc82f0579d9888be4810200ee8deba4d45cd5c4c5823ca6bfd24b6daf" -> "sha256:564d4e5549c08c4e586fe209bef4811f85558f4acc0f0b4d2d99d7cfc91e14f6" [label=""];
}

