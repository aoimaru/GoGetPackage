[app/sources/354052921.Dockerfile]
digraph {
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" [label="docker-image://docker.io/library/node:0.12" shape="ellipse"];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:69e5b91cf5855e790d88910d742fc35a94f478babf8b2f97ea796d5c418cd848" [label="local://context" shape="ellipse"];
  "sha256:a62890707e9ed92ef491818cb8923bbbc25b38296f22a468b29777dbb0040ae5" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:5c770cc253938236ef1c90cce98a26f415a0374aa1af6cc766af07948a75cdc8" [label="mkdir{path=/app}" shape="note"];
  "sha256:4abf1ddde673e04add03f8bf39acb520615d607001507960199e8c284c62e102" [label="/bin/sh -c npm install" shape="box"];
  "sha256:732cab17a2802fff857a7234b5c7818dec5e1eee19451fdc5b9faee731599e1d" [label="/bin/sh -c npm install webpack@\"1.9\"" shape="box"];
  "sha256:d02eb1263a865766759e8b0de45b9907efe9c948edfbc43d53e69caa3195d0e7" [label="sha256:d02eb1263a865766759e8b0de45b9907efe9c948edfbc43d53e69caa3195d0e7" shape="plaintext"];
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" -> "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label=""];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" -> "sha256:a62890707e9ed92ef491818cb8923bbbc25b38296f22a468b29777dbb0040ae5" [label=""];
  "sha256:69e5b91cf5855e790d88910d742fc35a94f478babf8b2f97ea796d5c418cd848" -> "sha256:a62890707e9ed92ef491818cb8923bbbc25b38296f22a468b29777dbb0040ae5" [label=""];
  "sha256:a62890707e9ed92ef491818cb8923bbbc25b38296f22a468b29777dbb0040ae5" -> "sha256:5c770cc253938236ef1c90cce98a26f415a0374aa1af6cc766af07948a75cdc8" [label=""];
  "sha256:5c770cc253938236ef1c90cce98a26f415a0374aa1af6cc766af07948a75cdc8" -> "sha256:4abf1ddde673e04add03f8bf39acb520615d607001507960199e8c284c62e102" [label=""];
  "sha256:4abf1ddde673e04add03f8bf39acb520615d607001507960199e8c284c62e102" -> "sha256:732cab17a2802fff857a7234b5c7818dec5e1eee19451fdc5b9faee731599e1d" [label=""];
  "sha256:732cab17a2802fff857a7234b5c7818dec5e1eee19451fdc5b9faee731599e1d" -> "sha256:d02eb1263a865766759e8b0de45b9907efe9c948edfbc43d53e69caa3195d0e7" [label=""];
}

