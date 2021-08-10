[app/sources/192371884.Dockerfile]
digraph {
  "sha256:389051c26c1aeb07c7dc9c44b42e37e5c7dc9fc28bfd25d738027d08a8d8d77b" [label="docker-image://docker.io/library/elasticsearch:1.5.1" shape="ellipse"];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" [label="http://stedolan.github.io/jq/download/linux64/jq" shape="ellipse"];
  "sha256:41aa1cd0cab3cd11bc309a84afb135be8cc8e592954e3978bae9577e9788ec1f" [label="copy{src=/jq, dest=/usr/local/bin/jq}" shape="note"];
  "sha256:24c97aa54da6531277e91518708495e7456ad647ea7d17c414b33506d950e7f5" [label="/bin/sh -c chmod +x /usr/local/bin/jq" shape="box"];
  "sha256:5eb535adf0ff920908cfd947eb3447a76c11e2bb324f1015d20c71d34d784ec0" [label="local://context" shape="ellipse"];
  "sha256:3be87001c96ef3ad28db0ab8c02fb3f01e29472ddfbbf41b50c60fa22142aeac" [label="copy{src=/start-elasticsearch-clustered.sh, dest=/}" shape="note"];
  "sha256:7df9a09edf901f41955d8ed8ed7107a92d519718520ef627e030634f425da0ad" [label="/bin/sh -c chmod +x /start-elasticsearch-clustered.sh" shape="box"];
  "sha256:505f38029481a35cd4f4d6a07fd7597a2925c3894fc2ba78fc50b935b919e46d" [label="/bin/sh -c plugin -install mobz/elasticsearch-head" shape="box"];
  "sha256:af544afb7059c6a25a5019d11a283f1e9afb10496be5fe6d68e460f8ffcb9df7" [label="sha256:af544afb7059c6a25a5019d11a283f1e9afb10496be5fe6d68e460f8ffcb9df7" shape="plaintext"];
  "sha256:389051c26c1aeb07c7dc9c44b42e37e5c7dc9fc28bfd25d738027d08a8d8d77b" -> "sha256:41aa1cd0cab3cd11bc309a84afb135be8cc8e592954e3978bae9577e9788ec1f" [label=""];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" -> "sha256:41aa1cd0cab3cd11bc309a84afb135be8cc8e592954e3978bae9577e9788ec1f" [label=""];
  "sha256:41aa1cd0cab3cd11bc309a84afb135be8cc8e592954e3978bae9577e9788ec1f" -> "sha256:24c97aa54da6531277e91518708495e7456ad647ea7d17c414b33506d950e7f5" [label=""];
  "sha256:24c97aa54da6531277e91518708495e7456ad647ea7d17c414b33506d950e7f5" -> "sha256:3be87001c96ef3ad28db0ab8c02fb3f01e29472ddfbbf41b50c60fa22142aeac" [label=""];
  "sha256:5eb535adf0ff920908cfd947eb3447a76c11e2bb324f1015d20c71d34d784ec0" -> "sha256:3be87001c96ef3ad28db0ab8c02fb3f01e29472ddfbbf41b50c60fa22142aeac" [label=""];
  "sha256:3be87001c96ef3ad28db0ab8c02fb3f01e29472ddfbbf41b50c60fa22142aeac" -> "sha256:7df9a09edf901f41955d8ed8ed7107a92d519718520ef627e030634f425da0ad" [label=""];
  "sha256:7df9a09edf901f41955d8ed8ed7107a92d519718520ef627e030634f425da0ad" -> "sha256:505f38029481a35cd4f4d6a07fd7597a2925c3894fc2ba78fc50b935b919e46d" [label=""];
  "sha256:505f38029481a35cd4f4d6a07fd7597a2925c3894fc2ba78fc50b935b919e46d" -> "sha256:af544afb7059c6a25a5019d11a283f1e9afb10496be5fe6d68e460f8ffcb9df7" [label=""];
}

