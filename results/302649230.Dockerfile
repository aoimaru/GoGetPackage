[app/sources/302649230.Dockerfile]
digraph {
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" [label="docker-image://docker.io/library/haproxy:1.8" shape="ellipse"];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:c9251fffb65b950956460c5b17bb6e509d965ab63a6837d93c1cde1d8af43a41" [label="local://context" shape="ellipse"];
  "sha256:29a20f81b9c099e7a0b9eaa35e08b3cced41ae010e4b286dcb16ae9b7d93923f" [label="copy{src=/haproxy.conf, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:26c0c5c763dd4678a86ebbae5b39acd0873a5b01574d2737b6c784bb345cd87e" [label="sha256:26c0c5c763dd4678a86ebbae5b39acd0873a5b01574d2737b6c784bb345cd87e" shape="plaintext"];
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" -> "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label=""];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" -> "sha256:29a20f81b9c099e7a0b9eaa35e08b3cced41ae010e4b286dcb16ae9b7d93923f" [label=""];
  "sha256:c9251fffb65b950956460c5b17bb6e509d965ab63a6837d93c1cde1d8af43a41" -> "sha256:29a20f81b9c099e7a0b9eaa35e08b3cced41ae010e4b286dcb16ae9b7d93923f" [label=""];
  "sha256:29a20f81b9c099e7a0b9eaa35e08b3cced41ae010e4b286dcb16ae9b7d93923f" -> "sha256:26c0c5c763dd4678a86ebbae5b39acd0873a5b01574d2737b6c784bb345cd87e" [label=""];
}

