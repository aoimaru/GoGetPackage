[app/sources/284036232.Dockerfile]
digraph {
  "sha256:d583afac951df98b5251dc38cd34136fa57fe6ab7d430e1f264dd0ee0d4c6ab8" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f2b39e6843564e0d3af49c3bea97c9aa95610e3e54992848102fbd5785a7f70c" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:d1d4951b4069b280899ee700a6a95aa0745d2bd27b1d5a2f6c5d54292eccd3e3" [label="/bin/sh -c yum -y install     git     python-yaml     python-pip     pytest     python34-yaml     python34-pytest     python34-pip     findutils" shape="box"];
  "sha256:7125493069e269be5760ddb52ab6599b424d91bed8bbcefa1373d32ebac45661" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:84eef0cf92ece15f79ac71272cde84058016bb6c210aad71fdf8a31db9071e4b" [label="/bin/sh -c find /src -name \\*.pyc -delete" shape="box"];
  "sha256:5a9caa177d8ac557b52f44bea09a0e91a9a9a08632d357b512844b28ae87ea4c" [label="mkdir{path=/src}" shape="note"];
  "sha256:5452edd3e82e061b5abc4df4fb25aa4c7338b4e5fef69c92f55b14732f054df3" [label="sha256:5452edd3e82e061b5abc4df4fb25aa4c7338b4e5fef69c92f55b14732f054df3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f2b39e6843564e0d3af49c3bea97c9aa95610e3e54992848102fbd5785a7f70c" [label=""];
  "sha256:f2b39e6843564e0d3af49c3bea97c9aa95610e3e54992848102fbd5785a7f70c" -> "sha256:d1d4951b4069b280899ee700a6a95aa0745d2bd27b1d5a2f6c5d54292eccd3e3" [label=""];
  "sha256:d1d4951b4069b280899ee700a6a95aa0745d2bd27b1d5a2f6c5d54292eccd3e3" -> "sha256:7125493069e269be5760ddb52ab6599b424d91bed8bbcefa1373d32ebac45661" [label=""];
  "sha256:d583afac951df98b5251dc38cd34136fa57fe6ab7d430e1f264dd0ee0d4c6ab8" -> "sha256:7125493069e269be5760ddb52ab6599b424d91bed8bbcefa1373d32ebac45661" [label=""];
  "sha256:7125493069e269be5760ddb52ab6599b424d91bed8bbcefa1373d32ebac45661" -> "sha256:84eef0cf92ece15f79ac71272cde84058016bb6c210aad71fdf8a31db9071e4b" [label=""];
  "sha256:84eef0cf92ece15f79ac71272cde84058016bb6c210aad71fdf8a31db9071e4b" -> "sha256:5a9caa177d8ac557b52f44bea09a0e91a9a9a08632d357b512844b28ae87ea4c" [label=""];
  "sha256:5a9caa177d8ac557b52f44bea09a0e91a9a9a08632d357b512844b28ae87ea4c" -> "sha256:5452edd3e82e061b5abc4df4fb25aa4c7338b4e5fef69c92f55b14732f054df3" [label=""];
}

