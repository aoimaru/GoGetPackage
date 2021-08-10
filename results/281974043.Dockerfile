[app/sources/281974043.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:bca05b5e28ebb53755f662314609656436d86ef3f0ea7c87ca6de3f15bcb4c55" [label="local://context" shape="ellipse"];
  "sha256:e19fb12b1a5e832527dc39eaad85883eb67fb8434002af2ad3bf51bd4814da78" [label="copy{src=/package.json, dest=/app/},copy{src=/index.js, dest=/app/}" shape="note"];
  "sha256:60d19a5bc033fab8d6254664520a2429888eef801b9e8c9ebe77e5b38c4a506c" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9a1ed3bf8fd67b68dd5a17ea0491a0d159e197fc53f6a87ba5c242d18d177639" [label="sha256:9a1ed3bf8fd67b68dd5a17ea0491a0d159e197fc53f6a87ba5c242d18d177639" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:e19fb12b1a5e832527dc39eaad85883eb67fb8434002af2ad3bf51bd4814da78" [label=""];
  "sha256:bca05b5e28ebb53755f662314609656436d86ef3f0ea7c87ca6de3f15bcb4c55" -> "sha256:e19fb12b1a5e832527dc39eaad85883eb67fb8434002af2ad3bf51bd4814da78" [label=""];
  "sha256:e19fb12b1a5e832527dc39eaad85883eb67fb8434002af2ad3bf51bd4814da78" -> "sha256:60d19a5bc033fab8d6254664520a2429888eef801b9e8c9ebe77e5b38c4a506c" [label=""];
  "sha256:60d19a5bc033fab8d6254664520a2429888eef801b9e8c9ebe77e5b38c4a506c" -> "sha256:9a1ed3bf8fd67b68dd5a17ea0491a0d159e197fc53f6a87ba5c242d18d177639" [label=""];
}

