[app/sources/335634580.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:9bd0131c61232d268f72763eda70325b08571378769e45da5f1d6c5179b3f537" [label="local://context" shape="ellipse"];
  "sha256:5816f8531cc04677fb96cb7e6f78a4b645a7a66f1554124dbea42bf939143395" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:c58f841446d49c819930a0a10229f75ecaf1cc11765dd5de0d7caf8d21b91731" [label="sha256:c58f841446d49c819930a0a10229f75ecaf1cc11765dd5de0d7caf8d21b91731" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:5816f8531cc04677fb96cb7e6f78a4b645a7a66f1554124dbea42bf939143395" [label=""];
  "sha256:9bd0131c61232d268f72763eda70325b08571378769e45da5f1d6c5179b3f537" -> "sha256:5816f8531cc04677fb96cb7e6f78a4b645a7a66f1554124dbea42bf939143395" [label=""];
  "sha256:5816f8531cc04677fb96cb7e6f78a4b645a7a66f1554124dbea42bf939143395" -> "sha256:c58f841446d49c819930a0a10229f75ecaf1cc11765dd5de0d7caf8d21b91731" [label=""];
}
