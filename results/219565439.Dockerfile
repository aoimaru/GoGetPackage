[app/sources/219565439.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:662e4ba80714f80defa028788b840076bc731600c08733482e7e06ec3ca7f2b5" [label="/bin/sh -c mkdir /var/www/" shape="box"];
  "sha256:5a79d5dd3bd295fc57a0e69b74665abebac8e2503c6cd01a87b7c6586ff97556" [label="local://context" shape="ellipse"];
  "sha256:5eec84fdadb3ee1b93dc00a36f257c5c50130e479c16679fcec99522ae9e3369" [label="copy{src=/service.js, dest=/var/www/service.js}" shape="note"];
  "sha256:f0f3fa3d6dff180693ce2c1dee5c1115b7474f366d224c415c73ec5044513a9f" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:1ba44918eb81990bcdc2d882d40f264d8391533ad031ac87cbbdbb92f8cf417c" [label="/bin/sh -c npm install mysql" shape="box"];
  "sha256:0e6c988695637b9fad6342c3646d85d32eb12bcaa4e1315e7beac66bc95e2386" [label="sha256:0e6c988695637b9fad6342c3646d85d32eb12bcaa4e1315e7beac66bc95e2386" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:662e4ba80714f80defa028788b840076bc731600c08733482e7e06ec3ca7f2b5" [label=""];
  "sha256:662e4ba80714f80defa028788b840076bc731600c08733482e7e06ec3ca7f2b5" -> "sha256:5eec84fdadb3ee1b93dc00a36f257c5c50130e479c16679fcec99522ae9e3369" [label=""];
  "sha256:5a79d5dd3bd295fc57a0e69b74665abebac8e2503c6cd01a87b7c6586ff97556" -> "sha256:5eec84fdadb3ee1b93dc00a36f257c5c50130e479c16679fcec99522ae9e3369" [label=""];
  "sha256:5eec84fdadb3ee1b93dc00a36f257c5c50130e479c16679fcec99522ae9e3369" -> "sha256:f0f3fa3d6dff180693ce2c1dee5c1115b7474f366d224c415c73ec5044513a9f" [label=""];
  "sha256:f0f3fa3d6dff180693ce2c1dee5c1115b7474f366d224c415c73ec5044513a9f" -> "sha256:1ba44918eb81990bcdc2d882d40f264d8391533ad031ac87cbbdbb92f8cf417c" [label=""];
  "sha256:1ba44918eb81990bcdc2d882d40f264d8391533ad031ac87cbbdbb92f8cf417c" -> "sha256:0e6c988695637b9fad6342c3646d85d32eb12bcaa4e1315e7beac66bc95e2386" [label=""];
}

