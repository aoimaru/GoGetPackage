[app/sources/258301578.Dockerfile]
digraph {
  "sha256:fb40664cd7d6ec0343de08a8bbc56742427b913aaebca2fa095a29f78e42e48e" [label="docker-image://docker.io/library/node:7.6-slim" shape="ellipse"];
  "sha256:17ad891156c8cc48a1cf49564c27543253f38f8e37699c70fc94f043e3769274" [label="/bin/sh -c apt-get update && apt-get install -y curl apt-transport-https &&     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list &&     apt-get update && apt-get install -y yarn" shape="box"];
  "sha256:e776ec099e66e6dff5f8dbc08430ec19001c2923b84c7c593af24f811c9cf32f" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:7deba1950fb1da77eb4ab312434183ffd67f53412af89cdd1b9239f6255b2501" [label="sha256:7deba1950fb1da77eb4ab312434183ffd67f53412af89cdd1b9239f6255b2501" shape="plaintext"];
  "sha256:fb40664cd7d6ec0343de08a8bbc56742427b913aaebca2fa095a29f78e42e48e" -> "sha256:17ad891156c8cc48a1cf49564c27543253f38f8e37699c70fc94f043e3769274" [label=""];
  "sha256:17ad891156c8cc48a1cf49564c27543253f38f8e37699c70fc94f043e3769274" -> "sha256:e776ec099e66e6dff5f8dbc08430ec19001c2923b84c7c593af24f811c9cf32f" [label=""];
  "sha256:e776ec099e66e6dff5f8dbc08430ec19001c2923b84c7c593af24f811c9cf32f" -> "sha256:7deba1950fb1da77eb4ab312434183ffd67f53412af89cdd1b9239f6255b2501" [label=""];
}

