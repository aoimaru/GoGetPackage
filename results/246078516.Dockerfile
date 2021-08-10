[app/sources/246078516.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:4534c0ab8698de955325124d63b5413a555fda90dff96135667b6318893c3484" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime" shape="box"];
  "sha256:c4bdddc4acf9cc1d5e26bbf053218d07a4052433d385e0137650c6c4b08aea8e" [label="/bin/sh -c echo $TZ > /etc/timezone" shape="box"];
  "sha256:98887f8b1b98ebe24301febbd0239db86cf752b15d5dd1eb92eedd6e6bbf16d7" [label="/bin/sh -c dpkg-reconfigure --frontend noninteractive tzdata" shape="box"];
  "sha256:0673505d9ad3a87d123f9ee33bb4c6d4413f57ff221830ef42e67497ec17e637" [label="/bin/sh -c npm install -g npm-check @compodoc/compodoc lerna" shape="box"];
  "sha256:439bfd410c3e6d920e2e8b6728b1ae2099159cf8ecbcb68151788ca8ea136e1b" [label="sha256:439bfd410c3e6d920e2e8b6728b1ae2099159cf8ecbcb68151788ca8ea136e1b" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:4534c0ab8698de955325124d63b5413a555fda90dff96135667b6318893c3484" [label=""];
  "sha256:4534c0ab8698de955325124d63b5413a555fda90dff96135667b6318893c3484" -> "sha256:c4bdddc4acf9cc1d5e26bbf053218d07a4052433d385e0137650c6c4b08aea8e" [label=""];
  "sha256:c4bdddc4acf9cc1d5e26bbf053218d07a4052433d385e0137650c6c4b08aea8e" -> "sha256:98887f8b1b98ebe24301febbd0239db86cf752b15d5dd1eb92eedd6e6bbf16d7" [label=""];
  "sha256:98887f8b1b98ebe24301febbd0239db86cf752b15d5dd1eb92eedd6e6bbf16d7" -> "sha256:0673505d9ad3a87d123f9ee33bb4c6d4413f57ff221830ef42e67497ec17e637" [label=""];
  "sha256:0673505d9ad3a87d123f9ee33bb4c6d4413f57ff221830ef42e67497ec17e637" -> "sha256:439bfd410c3e6d920e2e8b6728b1ae2099159cf8ecbcb68151788ca8ea136e1b" [label=""];
}

