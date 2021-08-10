[app/sources/196228344.Dockerfile]
digraph {
  "sha256:c3d1607b417fb7facb418f42e9a2a7d6725db98bb0d223b454812fe313c69d9f" [label="local://context" shape="ellipse"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:ef01894b847e5f39fcc236f19103d3ee3d079294cdcea51cd1136a020827fd9c" [label="copy{src=/Hongkong, dest=/etc/localtime}" shape="note"];
  "sha256:e95027e7ebf4391bbcf33a3ae2489070940604d4e8ed1bdf3d1890e2fc6cbc60" [label="mkdir{path=/app}" shape="note"];
  "sha256:9f590e43f97206c2a2c09d1701911660b3188d824027f39dc3ffe329235f4a70" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1fa6c5615d36ac58fd307b5354ef146f02ac51c22c52c5416c1b0d74d324f5cc" [label="sha256:1fa6c5615d36ac58fd307b5354ef146f02ac51c22c52c5416c1b0d74d324f5cc" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:ef01894b847e5f39fcc236f19103d3ee3d079294cdcea51cd1136a020827fd9c" [label=""];
  "sha256:c3d1607b417fb7facb418f42e9a2a7d6725db98bb0d223b454812fe313c69d9f" -> "sha256:ef01894b847e5f39fcc236f19103d3ee3d079294cdcea51cd1136a020827fd9c" [label=""];
  "sha256:ef01894b847e5f39fcc236f19103d3ee3d079294cdcea51cd1136a020827fd9c" -> "sha256:e95027e7ebf4391bbcf33a3ae2489070940604d4e8ed1bdf3d1890e2fc6cbc60" [label=""];
  "sha256:e95027e7ebf4391bbcf33a3ae2489070940604d4e8ed1bdf3d1890e2fc6cbc60" -> "sha256:9f590e43f97206c2a2c09d1701911660b3188d824027f39dc3ffe329235f4a70" [label=""];
  "sha256:c3d1607b417fb7facb418f42e9a2a7d6725db98bb0d223b454812fe313c69d9f" -> "sha256:9f590e43f97206c2a2c09d1701911660b3188d824027f39dc3ffe329235f4a70" [label=""];
  "sha256:9f590e43f97206c2a2c09d1701911660b3188d824027f39dc3ffe329235f4a70" -> "sha256:1fa6c5615d36ac58fd307b5354ef146f02ac51c22c52c5416c1b0d74d324f5cc" [label=""];
}

