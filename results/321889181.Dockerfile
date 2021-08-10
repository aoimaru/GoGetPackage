[app/sources/321889181.Dockerfile]
digraph {
  "sha256:90c635b9901650b4488b79681bd4bd5ab611bead0cb0fba6794be5d721d1511b" [label="docker-image://nvcr.io/nvidia/pytorch:19.01-py3@sha256:7458f8cb60e8c76f4d36ce28de9a815d7a620aa3acad8a5d7633c446838d1386" shape="ellipse"];
  "sha256:56228e3c332f38fadf2793a2ce805bc236ccc6efb728eba28723048cd3d9df62" [label="local://context" shape="ellipse"];
  "sha256:0f4db2d70c878b572da70c4e240a26d3965198b89cb9077374c4512667f232d1" [label="copy{src=/, dest=/workspace/gnmt}" shape="note"];
  "sha256:73ea64097b79e2916a824add25e8a4112900fa8de86fad2ac22f6148853183c4" [label="mkdir{path=/workspace/gnmt}" shape="note"];
  "sha256:50f4a21b5ccc892d0c3cc0a27728b354d568cb010dcddec4a86fb08f7394cb8f" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ae651a455b998debfa5f7f093cb9eb9446ca36a0a9709e3703c6e72cbb72f12d" [label="sha256:ae651a455b998debfa5f7f093cb9eb9446ca36a0a9709e3703c6e72cbb72f12d" shape="plaintext"];
  "sha256:90c635b9901650b4488b79681bd4bd5ab611bead0cb0fba6794be5d721d1511b" -> "sha256:0f4db2d70c878b572da70c4e240a26d3965198b89cb9077374c4512667f232d1" [label=""];
  "sha256:56228e3c332f38fadf2793a2ce805bc236ccc6efb728eba28723048cd3d9df62" -> "sha256:0f4db2d70c878b572da70c4e240a26d3965198b89cb9077374c4512667f232d1" [label=""];
  "sha256:0f4db2d70c878b572da70c4e240a26d3965198b89cb9077374c4512667f232d1" -> "sha256:73ea64097b79e2916a824add25e8a4112900fa8de86fad2ac22f6148853183c4" [label=""];
  "sha256:73ea64097b79e2916a824add25e8a4112900fa8de86fad2ac22f6148853183c4" -> "sha256:50f4a21b5ccc892d0c3cc0a27728b354d568cb010dcddec4a86fb08f7394cb8f" [label=""];
  "sha256:50f4a21b5ccc892d0c3cc0a27728b354d568cb010dcddec4a86fb08f7394cb8f" -> "sha256:ae651a455b998debfa5f7f093cb9eb9446ca36a0a9709e3703c6e72cbb72f12d" [label=""];
}

