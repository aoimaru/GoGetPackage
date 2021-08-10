[app/sources/479792997.Dockerfile]
digraph {
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:d083b6ed94e13b97f92e6ff9d6c68e5cd75b2629f7d4aec6cee9531472827a22" [label="local://context" shape="ellipse"];
  "sha256:b06c89c7e2a3a6f4a727d86784e42dff89cfe31d597ff5b84731a2396fad356c" [label="copy{src=/*, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:27547624240b23cce122c850135615dfc89965962417831e109c344c01ae155e" [label="sha256:27547624240b23cce122c850135615dfc89965962417831e109c344c01ae155e" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:b06c89c7e2a3a6f4a727d86784e42dff89cfe31d597ff5b84731a2396fad356c" [label=""];
  "sha256:d083b6ed94e13b97f92e6ff9d6c68e5cd75b2629f7d4aec6cee9531472827a22" -> "sha256:b06c89c7e2a3a6f4a727d86784e42dff89cfe31d597ff5b84731a2396fad356c" [label=""];
  "sha256:b06c89c7e2a3a6f4a727d86784e42dff89cfe31d597ff5b84731a2396fad356c" -> "sha256:27547624240b23cce122c850135615dfc89965962417831e109c344c01ae155e" [label=""];
}

