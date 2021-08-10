[app/sources/252779263.Dockerfile]
digraph {
  "sha256:9ff1ea095299a9ba5f240c87578ab3819705df64d6aaffc738b6e712fc6a6063" [label="docker-image://docker.io/library/node:9.11.1-stretch" shape="ellipse"];
  "sha256:fd86afb75f15ed3d2010dd83f1c81ceea71f12d71d75576274ec0a151cf1f0c8" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y libsqlite3-dev libxss1 libx11-xcb-dev libxtst-dev libgconf-2-4 libnss3 libasound-dev" shape="box"];
  "sha256:712780a5c5dd283f1d344dc6ace18017906baad418aed86fd17e20a815a782ea" [label="mkdir{path=/data}" shape="note"];
  "sha256:9a311bfc90225b23765c984d4674c2bd5993e1a8e477497bd9539d9bcc097e19" [label="/bin/sh -c git clone https://github.com/mapbox/node-sqlite3.git && cd node-sqlite3 && npm install --build-from-source" shape="box"];
  "sha256:aa869c94160a8df382951b755b8840faa41a221f307b2af00a9512d31f4cf61f" [label="mkdir{path=/data}" shape="note"];
  "sha256:09dd4e884da4d104217e02ced911add2312a807030699b0a6ccc7b00033f26ca" [label="/bin/sh -c git clone https://github.com/haccer/twint.git && cd twint/graph && npm install" shape="box"];
  "sha256:5acd72de2ae2a909fb525a02713d7b0dc38519be7a435c9d854e991a25ceaff1" [label="mkdir{path=/data/twint/graph}" shape="note"];
  "sha256:4fa860a3715ef2792a8ec8c9878672436bbdd2550bde9cde053cb663f602e43f" [label="sha256:4fa860a3715ef2792a8ec8c9878672436bbdd2550bde9cde053cb663f602e43f" shape="plaintext"];
  "sha256:9ff1ea095299a9ba5f240c87578ab3819705df64d6aaffc738b6e712fc6a6063" -> "sha256:fd86afb75f15ed3d2010dd83f1c81ceea71f12d71d75576274ec0a151cf1f0c8" [label=""];
  "sha256:fd86afb75f15ed3d2010dd83f1c81ceea71f12d71d75576274ec0a151cf1f0c8" -> "sha256:712780a5c5dd283f1d344dc6ace18017906baad418aed86fd17e20a815a782ea" [label=""];
  "sha256:712780a5c5dd283f1d344dc6ace18017906baad418aed86fd17e20a815a782ea" -> "sha256:9a311bfc90225b23765c984d4674c2bd5993e1a8e477497bd9539d9bcc097e19" [label=""];
  "sha256:9a311bfc90225b23765c984d4674c2bd5993e1a8e477497bd9539d9bcc097e19" -> "sha256:aa869c94160a8df382951b755b8840faa41a221f307b2af00a9512d31f4cf61f" [label=""];
  "sha256:aa869c94160a8df382951b755b8840faa41a221f307b2af00a9512d31f4cf61f" -> "sha256:09dd4e884da4d104217e02ced911add2312a807030699b0a6ccc7b00033f26ca" [label=""];
  "sha256:09dd4e884da4d104217e02ced911add2312a807030699b0a6ccc7b00033f26ca" -> "sha256:5acd72de2ae2a909fb525a02713d7b0dc38519be7a435c9d854e991a25ceaff1" [label=""];
  "sha256:5acd72de2ae2a909fb525a02713d7b0dc38519be7a435c9d854e991a25ceaff1" -> "sha256:4fa860a3715ef2792a8ec8c9878672436bbdd2550bde9cde053cb663f602e43f" [label=""];
}

