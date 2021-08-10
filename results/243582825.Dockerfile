[app/sources/243582825.Dockerfile]
digraph {
  "sha256:d3da4cc32a874c2f2ca274cd7de87b75c267637c84f83e4c9809ea0a6c60988b" [label="docker-image://docker.io/pygatb/alpine_runtime_base:latest" shape="ellipse"];
  "sha256:6ee9e21b5b853bbe2a1343ae67c6be7aac5f49b758b685155f664f9e2be602be" [label="local://context" shape="ellipse"];
  "sha256:cbe993124b342d370dcb302cf74880e9f94ee7ba661b0520af4209659556ecc9" [label="copy{src=/, dest=/tmp/}" shape="note"];
  "sha256:7fb830af07efb5e8c8641d04f3103809d57a47be916ae251e640ba724e571922" [label="/bin/sh -c easy_install-3.5 \"/tmp/$PYGATB_EGG\"  && python3 -m unittest discover gatb  && rm \"/tmp/$PYGATB_EGG\"" shape="box"];
  "sha256:753bc475ceed984c5739bb0207cef31bd9fcb7d85ae6a9018ccfc7e0fd7c50f0" [label="mkdir{path=/home/work}" shape="note"];
  "sha256:ba07bb638d9813aa93376b6ef157740cd63afcec825ec27c1a4935f1347e5a5e" [label="copy{src=/samples, dest=/home/work/}" shape="note"];
  "sha256:4c59cc3f57ed64130ed0e79f78606c42075bf1b60cad0ea58b56824f15f00dd8" [label="sha256:4c59cc3f57ed64130ed0e79f78606c42075bf1b60cad0ea58b56824f15f00dd8" shape="plaintext"];
  "sha256:d3da4cc32a874c2f2ca274cd7de87b75c267637c84f83e4c9809ea0a6c60988b" -> "sha256:cbe993124b342d370dcb302cf74880e9f94ee7ba661b0520af4209659556ecc9" [label=""];
  "sha256:6ee9e21b5b853bbe2a1343ae67c6be7aac5f49b758b685155f664f9e2be602be" -> "sha256:cbe993124b342d370dcb302cf74880e9f94ee7ba661b0520af4209659556ecc9" [label=""];
  "sha256:cbe993124b342d370dcb302cf74880e9f94ee7ba661b0520af4209659556ecc9" -> "sha256:7fb830af07efb5e8c8641d04f3103809d57a47be916ae251e640ba724e571922" [label=""];
  "sha256:7fb830af07efb5e8c8641d04f3103809d57a47be916ae251e640ba724e571922" -> "sha256:753bc475ceed984c5739bb0207cef31bd9fcb7d85ae6a9018ccfc7e0fd7c50f0" [label=""];
  "sha256:753bc475ceed984c5739bb0207cef31bd9fcb7d85ae6a9018ccfc7e0fd7c50f0" -> "sha256:ba07bb638d9813aa93376b6ef157740cd63afcec825ec27c1a4935f1347e5a5e" [label=""];
  "sha256:6ee9e21b5b853bbe2a1343ae67c6be7aac5f49b758b685155f664f9e2be602be" -> "sha256:ba07bb638d9813aa93376b6ef157740cd63afcec825ec27c1a4935f1347e5a5e" [label=""];
  "sha256:ba07bb638d9813aa93376b6ef157740cd63afcec825ec27c1a4935f1347e5a5e" -> "sha256:4c59cc3f57ed64130ed0e79f78606c42075bf1b60cad0ea58b56824f15f00dd8" [label=""];
}

